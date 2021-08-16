package mx.edu.utez.controller;

import mx.edu.utez.model.user.BeanUser;
import mx.edu.utez.model.user.DaoUser;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletSession", urlPatterns = {"/loggin", "/logout"})
public class ServletSession extends HttpServlet {
    /**
     * Cierra la sesion del usuario
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//cerrar la sesion
        HttpSession session = request.getSession();
        session.setAttribute("session", null);
        session.invalidate();
        request.getRequestDispatcher("/").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Crear la sesion
        BeanUser beanUser = new BeanUser();
        HttpSession session = request.getSession();
        DaoUser daoUser = new DaoUser();

        beanUser.setEmail(request.getParameter("email"));
        beanUser.setPassword(request.getParameter("password"));
        boolean flag = daoUser.createSession(
                beanUser.getEmail(),
                beanUser.getPassword()
        );

        if(flag){
            session.setAttribute("session",beanUser);
            request.getRequestDispatcher("/views/game/games.jsp").forward(request,response);
        }else{
            request.getRequestDispatcher("/").forward(request,response);
        }
    }
}
