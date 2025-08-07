const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');

const { GoogleAuth } = require('google-auth-library');
const axios = require('axios');

const app = express();
app.use(cors());
app.use(bodyParser.json());

// Caminho do arquivo JSON da chave da conta de serviço
const keyFile = './chave.json';

// Seu ID do projeto Firebase
const projectId = 'side-by-side-25dc9';

// Função para obter o token de acesso
async function getAccessToken() {
  const auth = new GoogleAuth({
    keyFile: './chave.json',
    scopes: ['https://www.googleapis.com/auth/firebase.messaging'],
  });

  const authClient = await auth.getClient();
  const accessToken = await authClient.getAccessToken();
  return accessToken.token;
}

// Endpoint para enviar notificações
app.post('/send-notification', async (req, res) => {
  const { token, title, body } = req.body;

  if (!token || !title || !body) {
    return res.status(400).json({ error: 'token, title e body são obrigatórios' });
  }

  const message = {
    message: {
      token,
      notification: {
        title,
        body,
      },
      android: {
        priority: 'high',
      },
      apns: {
        payload: {
          aps: {
            sound: 'default',
          },
        },
      },
    },
  };

  try {
    const accessToken = await getAccessToken();
    const url = `https://fcm.googleapis.com/v1/projects/${projectId}/messages:send`;

    const response = await axios.post(url, message, {
      headers: {
        Authorization: `Bearer ${accessToken}`,
        'Content-Type': 'application/json',
      },
    });

    res.json({ success: true, data: response.data });
  } catch (error) {
    console.error('Erro ao enviar notificação:', error.response ? error.response.data : error.message);
    res.status(500).json({
      success: false,
      error: error.response ? error.response.data : error.message,
    });
  }
});

// Porta para rodar a API
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`API rodando na porta ${PORT}`);
});
