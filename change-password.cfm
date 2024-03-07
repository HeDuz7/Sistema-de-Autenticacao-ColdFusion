<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Alterar Senha</title>
</head>

<body>
    <h1>Alterar Senha</h1>

    <cfif isLoggedIn()>
        <form action="change-password.cfm" method="post">
            <label for="current_password">Senha Atual:</label>
            <input type="password" name="current_password" id="current_password" required>
            <br>
            <label for="new_password">Nova Senha:</label>
            <input type="password" name="new_password" id="new_password" required>
            <br>
            <label for="confirm_password">Confirmar Nova Senha:</label>
            <input type="password" name="confirm_password" id="confirm_password" required>
            <br>
            <input type="submit" value="Alterar Senha">
        </form>
    <cfelse>
        <p>Erro: Você precisa estar logado para alterar a senha.</p>
    </cfif>

    <cfif request.method EQ "POST" AND isLoggedIn()>
        <cfset currentPassword = #trim(form.current_password)#>
        <cfset newPassword = #trim(form.new_password)#>
        <cfset confirmPassword = #trim(form.confirm_password)#>

        <cfif isValidPassword(currentPassword, session.username) AND newPassword EQ confirmPassword AND isValidPassword(newPassword)>
            <cfset passwordChanged = changePassword(session.username, newPassword)>

            <cfif passwordChanged>
                <p>Senha alterada com sucesso!</p>
            <cfelse>
                <p>Erro: Não foi possível alterar a senha.</p>
            </cfif>
        <cfelse>
            <p>Erro: Senha atual incorreta, novas senhas não conferem ou nova senha inválida.</p>
        </cfif>
    </cfif>
</body>

</html>
