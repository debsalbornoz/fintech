
<%@ page import="java.util.List" %>
<%@ page import="br.com.fintech.Transacao" %>
<%@ page import="br.com.fintech.TransacaoDAO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Relatório de Transações</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container">
    <h1>Relatório de Transações</h1>
    <table border="1" width="100%">
        <tr>
            <th>ID</th>
            <th>Descrição</th>
            <th>Valor</th>
            <th>Tipo</th>
            <th>Data</th>
        </tr>
        <%
            TransacaoDAO dao = new TransacaoDAO();
            List<Transacao> lista = dao.listar();
            for (Transacao t : lista) {
        %>
        <tr>
            <td><%= t.getId() %></td>
            <td><%= t.getDescricao() %></td>
            <td><%= t.getValor() %></td>
            <td><%= t.getTipo() %></td>
            <td><%= t.getData() %></td>
        </tr>
        <% } %>
    </table>
    <br>
    <a href="transacao.jsp"><button>Nova Transação</button></a>
</div>
</body>
</html>
