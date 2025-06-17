package br.com.fintech.servlet;

import br.com.fintech.Relatorio;
import br.com.fintech.RelatorioDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/relatorio")
public class RelatorioServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RelatorioDAO dao = new RelatorioDAO();
        List<Relatorio> relatorios = dao.listar();

        request.setAttribute("relatorios", relatorios);
        request.getRequestDispatcher("relatorio.jsp").forward(request, response);
    }
}
