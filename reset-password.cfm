<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Recuperar Senha</title>
</head>

<body>
    <h1>Recuperar Senha</h1>
    
    <form action="reset-password.cfm" method="post">
        <label for="email">Email:</label>
        <input type="email" name="email" id="email" required>
        <br>
        <input type="submit" value="Solicitar Recuperação de Senha">
    </form>

    <cfif request.method EQ "POST">
        <cfset email = #trim(form.email)#>

        <cfif isValidEmail(email)>
            <cfset resetSent = resetPassword(email)>

            <cfif resetSent>
                <p>Email de recuperação de senha enviado com sucesso! Verifique sua caixa de entrada.</p>
            <cfelse>
                <p>Erro: Não foi possível enviar o email de recuperação.</p>
            </cfif>
        <cfelse>
            <p>Erro: Email inválido.</p>
        </cfif>
    </cfif>
</body>

</html>
