<%--
  Created by IntelliJ IDEA.
  User: boris
  Date: 16/03/2020
  Time: 01:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <title>Sterafstanden - Zoeken</title>
    <link rel="stylesheet" href="css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<jsp:include page="header.jsp">
    <jsp:param name="page" value="search"/>
</jsp:include>

<main>
    <article>
        <h2>Zoek een ster</h2>
        <form method="POST" action="Servlet?command=search" novalidate>
            <p>
                <label for="naam">Naam Ster*</label>
                <input id="naam" name="naam" type="text" placeholder="Proxima Centauri" maxlength="50" required>
            </p>
            <p>
                <input type="submit" value="Zoek">
            </p>
        </form>
    </article>
</main>

<footer>
    <p>Webontwikkeling 2 - Boris Michiels</p>
</footer>
</body>
</html>
