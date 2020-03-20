<%--
  Created by IntelliJ IDEA.
  User: boris
  Date: 16/03/2020
  Time: 02:13
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
<jsp:include page="header.jsp">
    <jsp:param name="page" value="search"/>
</jsp:include>

<main>
    <article>
        <h2>Zoekresultaat: Niet Gevonden</h2>
        <p>Je vroeg naar de volgende ster: ${naam}. Deze zit nog niet in de database.</p>
    </article>
</main>

<footer>
    <p>Webontwikkeling 2 - Boris Michiels</p>
</footer>
</body>
</html>