package br.com.fintech.servlet;

import br.com.fintech.Transacao;
import br.com.fintech.TransacaoDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/transacao")
public class TransacaoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String tipo = request.getParameter("tipo");
        double valor = Double.parseDouble(request.getParameter("valor"));
        String categoria = request.getParameter("categoria");

        Transacao transacao = new Transacao(tipo, valor, categoria);
        TransacaoDAO dao = new TransacaoDAO();
        dao.cadastrar(transacao);

        response.sendRedirect("transacao.jsp?sucesso=1");
    }
}
