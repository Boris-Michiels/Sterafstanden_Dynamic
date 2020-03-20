<%--
  Created by IntelliJ IDEA.
  User: boris
  Date: 16/03/2020
  Time: 02:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <title>Sterafstanden - Zoekresultaat</title>
    <link rel="stylesheet" href="css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<header>
    <h1>SterAfstanden</h1>
    <nav>
        <ul>
            <li><a href="Servlet?command=home">Home</a></li>
            <li><a href="Servlet?command=overview">Overzicht</a></li>
            <li><a href="Servlet?command=addForm">Voeg Toe</a></li>
            <li><a href="Servlet?command=searchForm">Zoeken</a></li>
        </ul>
    </nav>
</header>

<main>
    <article>
        <h2>Zoekresultaat: Gevonden</h2>
        <p>Je vroeg naar de volgende ster:</p>
        <p>${naam} (Grootte: ${grootte}):
            ${afstand} lichtjaren.</p>
    </article>
</main>

<footer>
    <p>Webontwikkeling 2 - Boris Michiels</p>
</footer>
</body>
</html>