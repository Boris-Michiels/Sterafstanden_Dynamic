package ui.controller;

import domain.db.SterrenDB;
import domain.model.Ster;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
    SterrenDB DB = new SterrenDB();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String command = "home", destination;

        if (request.getParameter("command") != null) command = request.getParameter("command");

        switch (command) {
            case "home" :
                destination = home(request, response);
                break;
            case "overview" :
                destination = overview(request, response);
                break;
            case "addForm" :
                destination = addForm(request, response);
                break;
            case "add" :
                destination = add(request, response);
                break;
            default :
                destination = home(request, response);
        }
        request.getRequestDispatcher(destination).forward(request, response);
    }

    private String home(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("verste", DB.getVersteSter().getNaam());
        return "index.jsp";
    }

    private String overview(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("sterrenLijst", DB.getSterren());
        request.setAttribute("verste", DB.getVersteSter().getNaam());
        return "overview.jsp";
    }

    private String addForm(HttpServletRequest request, HttpServletResponse response) {
        return "add.jsp";
    }

    private String add(HttpServletRequest request, HttpServletResponse response) {
        String naam = request.getParameter("naam");
        String grootte = request.getParameter("grootte");
        String afstandParam = request.getParameter("afstand");
        double afstand;

        if (naam == null || naam.trim().isEmpty() || afstandParam == null || afstandParam.trim().isEmpty() ||
                (!grootte.equals("Klein") && !grootte.equals("Gemiddeld") && !grootte.equals("Groot"))) {
            return addForm(request, response);
        }

        try {
            afstand = Double.parseDouble(afstandParam);
        } catch (NumberFormatException e) {
            return addForm(request, response);
        }

        if (afstand < 0 || DB.getSter(naam) != null) {
            return addForm(request, response);
        } else {
            Ster ster = new Ster(naam, grootte, afstand);
            DB.add(ster);
            return overview(request, response);
        }
    }
}