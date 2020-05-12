<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <title>Sterafstanden - Voeg Toe</title>
    <link rel="stylesheet" href="css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<jsp:include page="header.jsp">
    <jsp:param name="page" value="add"/>
</jsp:include>

<main>
    <article>
        <h2>Voeg een ster toe</h2>
        <c:if test="${not empty errors}">
            <div class="alert alert-danger">
                <ul>
                    <c:forEach items="${errors}" var="error">
                        <li>${error}</li>
                    </c:forEach>
                </ul>
            </div>
        </c:if>
        <form method="POST" action="Servlet?command=add" novalidate>
            <p>
                <label for="naam">Naam Ster*</label>
                <input id="naam" name="naam" type="text" maxlength="50" placeholder="Poolster" value="${previousNaam}" required>
            </p>
            <p>
                <label for="grootte">Grootte Ster*</label>
                <select id="grootte" name="grootte" required>
                    <option value="" selected disabled hidden>Kies</option>
                    <option value="Klein" <c:if test="${previousGrootte == 'Klein'}">selected</c:if>>Klein</option>
                    <option value="Gemiddeld" <c:if test="${previousGrootte == 'Gemiddeld'}">selected</c:if>>Gemiddeld</option>
                    <option value="Groot" <c:if test="${previousGrootte == 'Groot'}">selected</c:if>>Groot</option>
                </select>
            </p>
            <p>
                <label for="afstand">Afstand ster (Lichtjaar)*</label>
                <input id="afstand" name="afstand" type="number" step="0.001" min="0" placeholder="430" value="${previousAfstand}" required>
            </p>
            <p>
                <input type="submit" value="Voeg Toe">
            </p>
        </form>
    </article>
</main>

<jsp:include page="footer.jsp"/>
</body>
</html>