<?php

require 'php/funcao.php';
require 'notificacoes.php';

$notificacoes_class = new PushNotificacoes();
$funcao = new Funcao();

function sendFCMNotification($title, $body, $token)
{
    // Caminho para o seu arquivo JSON da conta de serviço
    $serviceAccountFile = __DIR__ . '/chave.json';

    // Carrega as credenciais
    $credentials = json_decode(file_get_contents($serviceAccountFile), true);

    $clientEmail = $credentials['client_email'];
    $privateKey = $credentials['private_key'];
    $projectId = $credentials['project_id'];

    // Gera JWT
    $now = time();
    $jwtHeader = base64UrlEncode(json_encode(['alg' => 'RS256', 'typ' => 'JWT']));
    $jwtClaimSet = base64UrlEncode(json_encode([
        'iss' => $clientEmail,
        'scope' => 'https://www.googleapis.com/auth/firebase.messaging',
        'aud' => 'https://oauth2.googleapis.com/token',
        'iat' => $now,
        'exp' => $now + 3600,
    ]));

    $jwtSignature = '';
    openssl_sign(
        "$jwtHeader.$jwtClaimSet",
        $jwtSignature,
        $privateKey,
        'sha256WithRSAEncryption'
    );
    $jwt = "$jwtHeader.$jwtClaimSet." . base64UrlEncode($jwtSignature);

    // Pega o token de acesso OAuth2
    $response = file_get_contents('https://oauth2.googleapis.com/token', false, stream_context_create([
        'http' => [
            'method' => 'POST',
            'header' => 'Content-Type: application/x-www-form-urlencoded',
            'content' => http_build_query([
                'grant_type' => 'urn:ietf:params:oauth:grant-type:jwt-bearer',
                'assertion' => $jwt,
            ]),
        ],
    ]));

    $accessToken = json_decode($response, true)['access_token'];

    // Monta a notificação
    $message = [
        'message' => [
            'token' => $token,
            'notification' => [
                'title' => $title,
                'body' => $body,
            ],
            'data' => [
                'title' => $title,
                'body'  => $body,
            ],
            'android' => [
                'priority' => 'high',
            ],
            'apns' => [
                'payload' => [
                    'aps' => [
                        'content-available' => 1,
                        'sound' => 'default',
                    ],
                ],
            ],
        ],
    ];

    // Faz a requisição para o FCM
    $url = "https://fcm.googleapis.com/v1/projects/$projectId/messages:send";

    $headers = [
        "Authorization: Bearer $accessToken",
        'Content-Type: application/json; UTF-8',
    ];

    $ch = curl_init();

    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($message));

    $result = curl_exec($ch);

    if (curl_errno($ch)) {
        curl_close($ch);
        return ['success' => false, 'error' => curl_error($ch)];
    }

    curl_close($ch);

    $responseData = json_decode($result, true);

    // Verifica se existe 'name' na resposta (que indica sucesso)
    if (isset($responseData['name'])) {
        return ['success' => true];
    } else {
        // Pode conter 'error' ou outra coisa
        return ['success' => false, 'error' => $responseData['error']['message'] ?? 'Erro desconhecido'];
    }
}

function base64UrlEncode($data)
{
    return rtrim(strtr(base64_encode($data), '+/', '-_'), '=');
}

$id = $_POST['id'];
$info_notificacao = $notificacoes_class->queryNotificacoes('not_id', [$id]);
$title = $info_notificacao[1]['titulo'];
$body = $info_notificacao[1]['text'];
$tokensSelecionados = $_POST['tokens'] ?? [];

echo "<h3>Tokens selecionados para envio:</h3>";

echo "<ul>";
foreach ($tokensSelecionados as $token) {
    // Aqui você pode fazer:
    $envio = sendFCMNotification(
        $title,
        $body,
        $token,
    );

    $info_usuario = $notificacoes_class->queryToken('info_usuario', [$token]);
    $nomeESobrenome = $funcao->nome_e_sobrenome($info_usuario[1]['nome']);
    echo "<li>$nomeESobrenome : " . ($envio['success'] ? "<span style='color:green;'>Sucesso</span>" : "<span style='color:red;'>Falha: {$envio['error']}</span>") . "</li>";
}
echo "</ul>";

echo "<a href='enviar_notificacao.php'>Voltar</a>";
