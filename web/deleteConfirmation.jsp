<%--
  Created by IntelliJ IDEA.
  User: boris
  Date: 15/03/2020
  Time: 21:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <title>Sterafstand - Verwijder</title>
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
        <h2>Verwijder een ster</h2>
        <p>Ben je zeker dat je <span>${param.naam}</span> wil verwijderen?</p>
        <form method="POST" action="Servlet?command=delete">
            <p><input type="hidden" name="naam" value="${param.naam}"></p>
            <p><input type="submit" name="bevestiging" value="Verwijder"></p>
            <p><input type="submit" name="bevestiging" value="Toch niet"></p>
        </form>
    </article>
</main>

<footer>
    <p>Webontwikkeling 2 - Boris Michiels</p>
</footer>
</body>
</html>