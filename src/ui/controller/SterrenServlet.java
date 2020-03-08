package ui.controller;

import domain.db.SterrenDB;
import domain.model.Ster;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/SterrenServlet")
public class SterrenServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SterrenDB DB = new SterrenDB();
        List<Ster> DBList = DB.getSterren();
        Ster verste = DB.getVersteSter();

        request.setAttribute("DBList", DBList);
        request.setAttribute("verste", verste.getNaam());

        RequestDispatcher view = request.getRequestDispatcher("overzicht.jsp");
        view.forward(request, response);
    }
}
