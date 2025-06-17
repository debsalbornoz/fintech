
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cadastro de Transações</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container">
    <h1>Nova Transação</h1>
    <form action="transacao" method="post">
        <input type="text" name="descricao" placeholder="Descrição" required><br>
        <input type="number" step="0.01" name="valor" placeholder="Valor" required><br>
        <select name="tipo">
            <option value="entrada">Entrada</option>
            <option value="saida">Saída</option>
        </select><br>
        <button type="submit">Salvar</button>
    </form>
    <br>
    <a href="relatorio.jsp"><button>Ver Relatório</button></a>
</div>
</body>
</html>
