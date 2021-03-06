<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <c:if test="${not empty errors}">
            <div class="alert alert-danger">
                <ul>
                    <c:forEach items="${errors}" var="error">
                        <li>${error}</li>
                    </c:forEach>
                </ul>
            </div>
        </c:if>
        <form method="GET" action="Servlet" novalidate>
            <p><input type="hidden" name="command" value="search"></p>
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

<jsp:include page="footer.jsp"/>
</body>
</html>
