package ui.controller;

import domain.db.SterrenDB;
import domain.model.Ster;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

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
            case "overview":
                destination = overview(request, response);
                break;
            case "deleteConfirmation":
                destination = deleteConfirmation(request, response);
                break;
            case "delete":
                destination = delete(request, response);
                break;
            case "addForm":
                destination = addForm(request, response);
                break;
            case "add":
                destination = add(request, response);
                break;
            case "searchForm":
                destination = searchForm(request, response);
                break;
            case "search":
                destination = search(request, response);
                break;
            default:
                destination = home(request, response);
        }
        request.getRequestDispatcher(destination).forward(request, response);
    }

    private String home(HttpServletRequest request, HttpServletResponse response) {
        if (DB.getSterren().isEmpty()) request.setAttribute("verste", null);
        else request.setAttribute("verste", DB.getVersteSter().getNaam());
        return "index.jsp";
    }

    private String overview(HttpServletRequest request, HttpServletResponse response) {
        if (DB.getSterren().isEmpty()) request.setAttribute("verste", null);
        else {
            request.setAttribute("sterrenLijst", DB.getSterren());
            request.setAttribute("verste", DB.getVersteSter().getNaam());
        }
        return "overview.jsp";
    }

    private String deleteConfirmation(HttpServletRequest request, HttpServletResponse response) { return "deleteConfirmation.jsp"; }

    private String delete(HttpServletRequest request, HttpServletResponse response) {
        try {
            if (request.getParameter("bevestiging") != null && request.getParameter("bevestiging").equals("Verwijder") && DB.getSter(request.getParameter("naam")) != null) {
                DB.verwijder(request.getParameter("naam"));
            }
        } catch (IllegalArgumentException ignored) { }
        return overview(request, response);
    }

    private String addForm(HttpServletRequest request, HttpServletResponse response) {
        return "add.jsp";
    }

    private String add(HttpServletRequest request, HttpServletResponse response) {
        ArrayList<String> errors = new ArrayList<>();
        Ster ster = new Ster();

        setNaam(ster, request, errors);
        setGrootte(ster, request, errors);
        setAfstand(ster, request, errors);

        if (errors.size() == 0) {
            try {
                DB.add(ster);
                return overview(request, response);
            } catch (Exception e) {
                errors.add(e.getMessage());
            }
        }
        request.setAttribute("errors", errors);
        return addForm(request, response);
    }

    private void setNaam(Ster ster, HttpServletRequest request, ArrayList<String> errors) {
        String naam = request.getParameter("naam");
        try {
            ster.setNaam(naam);
            request.setAttribute("previousNaam", naam);
        } catch (IllegalArgumentException e) {
            errors.add(e.getMessage());
        }
    }

    private void setGrootte(Ster ster, HttpServletRequest request, ArrayList<String> errors) {
        String grootte = request.getParameter("grootte");
        try {
            ster.setGrootte(grootte);
            request.setAttribute("previousGrootte", grootte);
        } catch (IllegalArgumentException e) {
            errors.add(e.getMessage());
        }
    }

    private void setAfstand(Ster ster, HttpServletRequest request, ArrayList<String> errors) {
        String afstandParam = request.getParameter("afstand");
        try {
            ster.setAfstand(Double.parseDouble(afstandParam));
            request.setAttribute("previousAfstand", afstandParam);
        } catch (NumberFormatException | NullPointerException e) {
            errors.add("Vul een nummer in voor afstand");
        } catch (IllegalArgumentException e) {
            errors.add(e.getMessage());
        }
    }

    private String searchForm(HttpServletRequest request, HttpServletResponse response) {
        return "search.jsp";
    }

    private String search(HttpServletRequest request, HttpServletResponse response) {
        ArrayList<String> errors = new ArrayList<>();
        String naam = request.getParameter("naam");

        try {
            Ster ster = DB.getSter(naam);
            if (ster == null) {
                request.setAttribute("naam", naam);
                return "notFound.jsp";
            } else {
                request.setAttribute("ster", ster);
                return "found.jsp";
            }
        } catch (IllegalArgumentException e) {
            errors.add(e.getMessage());
        }
        request.setAttribute("errors", errors);
        return searchForm(request, response);
    }
}