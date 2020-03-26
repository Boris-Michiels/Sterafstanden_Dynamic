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
<jsp:include page="header.jsp">
    <jsp:param name="page" value="add"/>
</jsp:include>

<main>
    <article>
        <h2>Voeg een ster toe</h2>
        <form method="POST" action="Servlet?command=add" novalidate>
            <p>
                <label for="naam">Naam Ster*</label>
                <input id="naam" name="naam" type="text" placeholder="Proxima Centauri" maxlength="50" required>
            </p>
            <p>
                <label for="grootte">Grootte Ster*</label>
                <select id="grootte" name="grootte" required>
                    <option value="">Kies</option>
                    <option value="Klein">Klein</option>
                    <option value="Gemiddeld">Gemiddeld</option>
                    <option value="Groot">Groot</option>
                </select>
            </p>
            <p>
                <label for="afstand">Afstand ster (Lichtjaar)*</label>
                <input id="afstand" name="afstand" type="number" step="0.001" min="0" placeholder="4.242" required>
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