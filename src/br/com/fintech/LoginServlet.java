package br.com.fintech.servlet;

import br.com.fintech.UsuarioDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");

        UsuarioDAO dao = new UsuarioDAO();
        boolean autenticado = dao.autenticar(email, senha);

        if (autenticado) {
            HttpSession session = request.getSession();
            session.setAttribute("usuario", email);
            response.sendRedirect("transacao.jsp");
        } else {
            response.sendRedirect("login.jsp?erro=1");
        }
    }
}
