<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>

<body>

    <h1>Login</h1>

    <form action="login.cfm" method="post">
        <label for="username">Nome de Usuário:</label>
        <input type="text" name="username" id="username">
        <br>
        <label for="password">Senha:</label>
        <input type="password" name="password" id="password">
        <br>
        <input type="submit" value="Login">
    </form>

    <cfif isLoggedIn()>
        <p>Login efetuado com sucesso!</p>
        <a href="index.cfm">Voltar para a página inicial</a>
    </cfif>
    
    <cfelse>
        <p>Erro no login. Verifique seus dados e tente novamente.</p>
    </cfelse>

</body>

</html>