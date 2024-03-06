<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Registrar</title>
</head>

<body>
    <h1>Registrar</h1>
    
    <form action="register.cfm" method="post">
        <label for="username">Nome de Usuário:</label>
        <input type="text" name="username" id="username">
        <br>
        <label for="email">Email:</label>
        <input type="email" name="email" id="email">
        <br>
        <label for="password">Senha:</label>
        <input type="password" name="password" id="password">
        <br>
        <label for="confirm_password">Confirmar Senha:</label>
        <input type="password" name="confirm_password" id="confirm_password">
        <br>
        <input type="submit" value="Registrar">
    </form>

    <cfif isLoggedIn()>
        <p>Usuário registrado com sucesso!</p>
        <a href="index.cfm">Voltar para a página inicial</a>
    </cfif>
    <cfelse>
        <p>Erro ao registrar o usuário. Verifique seus dados e tente novamente.</p>
    </cfelse>
</body>

</html>
