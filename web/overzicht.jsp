<%@ page import="model.domain.ster" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: boris
  Date: 05/03/2020
  Time: 11:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ster poolster = new ster("Poolster", "Groot", 430);
    ster procent = new ster("Proxima Centauri", "Klein", 4.242);
    ster sirius = new ster("Sirius", "Groot", 8.583);

    List<ster> lijst = new ArrayList<>();

    lijst.add(poolster);
    lijst.add(procent);
    lijst.add(sirius);
%>
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
            <li><a href="index.jsp">Home</a></li>
            <li  id="selected"><a href="overzicht.jsp">Overzicht</a></li>
            <li><a href="add.jsp">Voeg toe</a></li>
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
                    <th>Pas aan</th>
                    <th>Verwijder</th>
                </tr>
                <% for (int i = 0; i < lijst.size(); i++) {
                %>
                <tr>
                    <td><%=lijst.get(i).getNaam()%></td>
                    <td><%=lijst.get(i).getGrootte()%></td>
                    <td><%=lijst.get(i).getAfstand()%></td>
                    <td><a href="wijzig.html">Pas aan</a></td>
                    <td><a href="verwijder.html">Verwijder</a></td>
                </tr>
                <%}%>
            </table>
        </div>
        <p>De verste ster is: </p>
    </article>
</main>

<footer>
    <p>Webontwikkeling 2 - Boris Michiels</p>
</footer>
</body>
</html>