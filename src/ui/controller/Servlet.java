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

@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
    SterrenDB DB = new SterrenDB();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher view = request.getRequestDispatcher("add.jsp");

        String naam = request.getParameter("naam");
        String grootte = request.getParameter("grootte");
        String afstandParam = request.getParameter("afstand");

        if (naam.isEmpty() || grootte.isEmpty() || afstandParam.isEmpty()) {
            view.forward(request, response);
            return;
        }

        double afstand = Double.parseDouble(afstandParam);

        if (afstand < 0 || (!grootte.equals("Klein") && !grootte.equals("Gemiddeld") && !grootte.equals("Groot"))) {
            view.forward(request, response);
            return;
        }

        if (DB.getSter(naam) == null) {
            Ster ster = new Ster(naam, grootte, afstand);
            DB.add(ster);

            doGet(request, response);
            return;
        }

        view.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("sterrenLijst", DB.getSterren());
        request.setAttribute("verste", DB.getVersteSter().getNaam());

        RequestDispatcher view = request.getRequestDispatcher("overview.jsp");
        view.forward(request, response);
    }
}