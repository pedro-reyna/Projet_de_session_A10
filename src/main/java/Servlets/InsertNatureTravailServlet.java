package Servlets;

import dao.NatureTravailDAO;
import entities.Naturetravail;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "InsertNatureTravailServlet", value = "/InsertNatureTravailServlet")
public class InsertNatureTravailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String nom = request.getParameter("nom");
        Naturetravail naturetravail = new Naturetravail();
        naturetravail.setNom(nom);

        NatureTravailDAO.insert(naturetravail);

        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward( request, response );
    }
}
