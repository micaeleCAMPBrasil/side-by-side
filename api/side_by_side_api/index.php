<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <title>Side by Side API</title>
</head>

<body>
    <center>
        <a href="enviar_notificacao.php">NOTIFICAÇÕES</a>
    </center>
    <div class="container">
        <div class="col-lg-12">
            <form action="php/addProgresso.php" method="post">
                <h3>UPLOAD DEVOCIONAL LIÇÃO</h3>
                <input type="text" placeholder="Redirecionamento" name="x" class="form-control" value="progresso_licao">
                <input type="text" placeholder="Uid" name="uid" class="form-control" value="rwDtIEU4Saf5qvtgdY6JRYHJqvl1">
                <input type="text" placeholder="IdPG" name="idPG" class="form-control" value="26">
                <input type="text" placeholder="IdModulo" name="idModulo" class="form-control" value="1">
                <input type="text" placeholder="IdLicao" name="idLicao" class="form-control" value="1">
                <input type="text" placeholder="Dia" name="dia" class="form-control" value="1">
                <input type="text" placeholder="Check" name="check" class="form-control" value="1">
                <input type="submit" class="btn btn-info" value="Enviar">
            </form>
        </div>
    </div>

    <div class="container">
        <div class="col-lg-12">
            <form action="php/cadastro.php" method="post">
                <h3>Cadastro</h3>
                <input type="text" placeholder="Nome" name="nome" class="form-control" value="Micaele Sales Ribeiro">
                <input type="text" placeholder="Pais" name="pais" class="form-control" value="Brasil">
                <input type="text" placeholder="Estado" name="estado" class="form-control" value="Ceará">
                <input type="text" placeholder="Cidade" name="cidade" class="form-control" value="Maranguape">
                <input type="text" placeholder="Telefone" name="telefone" class="form-control" value="85987169712">
                <input type="email" placeholder="E-mail" name="email" class="form-control" value="sales.micaele1911@gmail.com">
                <input type="password" placeholder="Senha" name="senha" class="form-control" value="123456">
                <input type="submit" class="btn btn-info" value="Enviar">
            </form>
        </div>
    </div>
    <div class="container">
        <div class="col-lg-12">
            <form action="php/login.php" method="post">
                <h3>Login</h3>
                <input type="email" placeholder="E-mail" name="email" class="form-control" value="sales.micaele1911@gmail.com">
                <input type="password" placeholder="Senha" name="senha" class="form-control" value="123456">
                <input type="submit" class="btn btn-info" value="Enviar">
            </form>
        </div>
    </div>
    <div class="container">
        <div class="col-lg-12">
            <form action="php/getPG.php" method="post">
                <h3>Get Informações do PG</h3>
                <input type="text" placeholder="ID Líder" name="id" class="form-control" value="1">
                <input type="submit" class="btn btn-info" value="Enviar">
            </form>
        </div>
    </div>
    <div class="container">
        <div class="col-lg-12">
            <form action="php/getProgresso.php" method="post">
                <h3>Get Progresso</h3>
                <input type="text" placeholder="ID Líder" name="idLider" class="form-control" value="1">
                <input type="text" placeholder="ID PG" name="idPg" class="form-control" value="1">
                <input type="text" placeholder="REDIRECIONAMENTO" name="x" class="form-control" value="1">
                <input type="submit" class="btn btn-info" value="Enviar">
            </form>
        </div>
    </div>
    <div class="container">
        <div class="col-lg-12">
            <form action="php/getAnotacoes.php" method="post">
                <h3>Get Anotações</h3>
                <input type="text" placeholder="ID Líder" name="idLider" class="form-control" value="1">
                <input type="submit" class="btn btn-info" value="Enviar">
            </form>
            <form action="php/addAnotacoes.php" method="post">
                <h3>Add Anotações</h3>
                <input type="text" placeholder="ID Líder" name="idLider" class="form-control" value="1">
                <input type="text" placeholder="TITLE" name="title" class="form-control" value="Oi, estamos testando!">
                <input type="text" placeholder="TEXTO" name="texto" class="form-control" value="Subtitle, check!!">
                <input type="submit" class="btn btn-info" value="Enviar">
            </form>
            <form action="php/updateAnotacoes.php" method="post">
                <h3>Upload Anotações</h3>
                <input type="text" placeholder="ID" name="id" class="form-control" value="1">
                <input type="text" placeholder="TITLE" name="title" class="form-control" value="Oi, estamos testando! 2">
                <input type="text" placeholder="TEXTO" name="texto" class="form-control" value="Subtitle, check!! 2">
                <input type="text" placeholder="CHECKING" name="checking" class="form-control" value="1">
                <input type="submit" class="btn btn-info" value="Enviar">
            </form>
            <form action="php/deleteAnotacoes.php" method="post">
                <h3>Delete Anotações</h3>
                <input type="text" placeholder="ID" name="id" class="form-control" value="1">
                <input type="submit" class="btn btn-info" value="Enviar">
            </form>
        </div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</html>
