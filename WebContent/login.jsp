
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login - FinTech</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container">
    <h1>Login</h1>
    <form action="login" method="post">
        <input type="text" name="usuario" placeholder="Usuário" required><br>
        <input type="password" name="senha" placeholder="Senha" required><br>
        <button type="submit">Entrar</button>
        <% if (request.getParameter("erro") != null) { %>
            <p style="color:red;">Usuário ou senha inválidos</p>
        <% } %>
    </form>
</div>
</body>
</html>
