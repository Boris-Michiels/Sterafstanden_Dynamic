<%@ page import="domain.model.Ster" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: boris
  Date: 05/03/2020
  Time: 11:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% ArrayList<Ster> sterrenLijst = (ArrayList<Ster>) request.getAttribute("sterrenLijst"); %>
<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <title>Sterafstanden - Overzicht</title>
    <link rel="stylesheet" href="css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<header>
    <h1>SterAfstanden</h1>
    <nav>
        <ul>
            <li><a href="Servlet?command=home">Home</a></li>
            <li id="selected"><a href="Servlet?command=overview">Overzicht</a></li>
            <li><a href="Servlet?command=addForm">Voeg Toe</a></li>
        </ul>
    </nav>
</header>

<main>
    <article>
        <h2>Bekijk alle sterren</h2>
        <div id="table">
            <table>
                <tr>
                    <th>Naam</th>
                    <th>Grootte</th>
                    <th>Afstand (lichtjaar)</th>
                </tr>
                <% for (Ster ster : sterrenLijst) {
                %>
                <tr>
                    <td><%=ster.getNaam()%></td>
                    <td><%=ster.getGrootte()%></td>
                    <td><%=ster.getAfstand()%></td>
                </tr>
                <%}%>
            </table>
        </div>
        <p>De verste ster is: <span><%=request.getAttribute("verste")%></span></p>
    </article>
</main>

<footer>
    <p>Webontwikkeling 2 - Boris Michiels</p>
</footer>
</body>
</html>