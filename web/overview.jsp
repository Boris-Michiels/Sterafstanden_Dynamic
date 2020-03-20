<%--
  Created by IntelliJ IDEA.
  User: boris
  Date: 05/03/2020
  Time: 11:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <li><a href="Servlet?command=searchForm">Zoeken</a></li>
        </ul>
    </nav>
</header>

<main>
    <article>
        <h2>Bekijk alle sterren</h2>
        <c:choose>
            <c:when test="${not empty sterrenLijst}">
                <div id="table">
                    <table>
                        <tr>
                            <th>Naam</th>
                            <th>Grootte</th>
                            <th>Afstand (lichtjaar)</th>
                            <th>Verwijder</th>
                        </tr>
                        <c:forEach var="ster" items="${sterrenLijst}">
                            <tr>
                                <td>${ster.naam}</td>
                                <td>${ster.grootte}</td>
                                <td>${ster.afstand}</td>
                                <td><a href="Servlet?command=deleteConfirmation&naam=${ster.naam}">Verwijder</a></td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
                <p>De verste ster is: <span>${verste}</span></p>
            </c:when>
            <c:otherwise>
                <p>Er zitten nog geen sterren in de database. Voeg eerst een ster toe!</p>
            </c:otherwise>
        </c:choose>
    </article>
</main>

<footer>
    <p>Webontwikkeling 2 - Boris Michiels</p>
</footer>
</body>
</html>