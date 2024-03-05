<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <title>Sistema de Autenticação</title>
</head>

<body>

    <h1>Sistema de Autenticação</h1>

    <cfif isLoggedIn()>
        <p>Bem-vindo, #session.username#!</p>
        <a href="logout.cfm">Logout</a>
    </cfif>

    <cfelse>
        <a href="login.cfm">Login</a>
        <a href="register.cfm">Registrar</a>
    </cfelse>

</body>

</html>