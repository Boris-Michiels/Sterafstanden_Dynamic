<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <title>Sterafstanden</title>
    <link rel="stylesheet" href="css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<jsp:include page="header.jsp">
    <jsp:param name="page" value="home"/>
</jsp:include>

<main>
    <article>
        <h2>De afstanden van de aarde tot verschillende sterren</h2>
        <p>Leer de namen van de verschillende sterren in de buurt, hun afstand tot de aarde en
            welke relatieve grootte ze hebben tegenover onze eigen ster, de zon.</p>
        <c:choose>
            <c:when test="${not empty verste}">
                <p>De verste ster is: <span>${verste}</span></p>
            </c:when>
            <c:otherwise>
                <p>Er zitten nog geen sterren in de database. Voeg eerst een ster toe!</p>
            </c:otherwise>
        </c:choose>
    </article>
</main>

<jsp:include page="footer.jsp"/>
</body>
</html>