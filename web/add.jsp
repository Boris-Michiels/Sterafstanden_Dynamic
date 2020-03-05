<%--
  Created by IntelliJ IDEA.
  User: boris
  Date: 05/03/2020
  Time: 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <title>Sterafstanden - Voeg Toe</title>
    <link rel="stylesheet" href="css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<header>
    <h1>SterAfstanden</h1>
    <nav>
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="overzicht.jsp">Overzicht</a></li>
            <li id="selected"><a href="add.jsp">Voeg toe</a></li>
        </ul>
    </nav>
</header>

<main>
    <article>
        <h2>Voeg een ster toe</h2>
        <form action="#">
            <p><label for="sternaam">Naam Ster*</label>
                <input id="sternaam" type="text" name="naam" placeholder="Proxima Centauri" maxlength="50" required></p>
            <p><label for="stergrootte">Grootte Ster</label>
                <select name="grootte" id="stergrootte">
                    <option value="klein">Klein</option>
                    <option value="gemiddeld">Gemiddeld</option>
                    <option value="groot">Groot</option>
                </select></p>
            <p><label for="sterafstand">Afstand ster (Lichtjaar)*</label>
                <input id="sterafstand" type="number" name="afstand" step="0.001" min="0" placeholder="4.242" required></p>
            <p><input type="submit" value="Voeg Toe"></p>
        </form>
    </article>
</main>

<footer>
    <p>Webontwikkeling 2 - Boris Michiels</p>
</footer>
</body>
</html>