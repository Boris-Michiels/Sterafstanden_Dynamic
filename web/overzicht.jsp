<%@ page import="domain.model.Ster" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: boris
  Date: 05/03/2020
  Time: 11:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% List<Ster> lijst = (ArrayList<Ster>) request.getAttribute("DBList"); %>
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
            <li  id="selected"><a href="${pageContext.request.contextPath}/SterrenServlet">Overzicht</a></li>
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
                <% for (Ster ster : lijst) {
                %>
                <tr>
                    <td><%=ster.getNaam()%></td>
                    <td><%=ster.getGrootte()%></td>
                    <td><%=ster.getAfstand()%></td>
                    <td><a href="#">Pas aan</a></td>
                    <td><a href="#">Verwijder</a></td>
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