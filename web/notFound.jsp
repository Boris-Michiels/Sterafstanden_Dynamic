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
        <p>Je vroeg naar de ster "${naam}". Deze zit nog niet in de database.</p>
    </article>
</main>

<jsp:include page="footer.jsp"/>
</body>
</html>