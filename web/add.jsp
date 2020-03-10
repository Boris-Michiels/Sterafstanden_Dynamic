<%--
  Created by IntelliJ IDEA.
  User: boris
  Date: 10/03/2020
  Time: 10:07
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
            <li><a href="Servlet">Overzicht</a></li>
            <li id="selected"><a href="add.jsp">Voeg toe</a></li>
        </ul>
    </nav>
</header>

<main>
    <article>
        <h2>Voeg een ster toe</h2>
        <form method="POST" action="Servlet" novalidate>
            <p>
                <label for="naam">Naam Ster*</label>
                <input id="naam" type="text" name="naam" placeholder="Proxima Centauri" maxlength="50" required>
            </p>
            <p>
                <label for="grootte">Grootte Ster*</label>
                <select name="grootte" id="grootte" required>
                    <option value="">Kies</option>
                    <option value="Klein">Klein</option>
                    <option value="Gemiddeld">Gemiddeld</option>
                    <option value="Groot">Groot</option>
                </select>
            </p>
            <p>
                <label for="afstand">Afstand ster (Lichtjaar)*</label>
                <input id="afstand" type="number" name="afstand" step="0.001" min="0" placeholder="4.242" required>
            </p>
            <p>
                <input type="submit" value="Voeg Toe">
            </p>
        </form>
    </article>
</main>

<footer>
    <p>Webontwikkeling 2 - Boris Michiels</p>
</footer>
</body>
</html>