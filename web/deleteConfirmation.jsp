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
<jsp:include page="header.jsp">
    <jsp:param name="page" value="overview"/>
</jsp:include>

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

<jsp:include page="footer.jsp"/>
</body>
</html>