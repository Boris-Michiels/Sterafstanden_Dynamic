<%-- Created by IntelliJ IDEA. --%>
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
<header>
  <h1>SterAfstanden</h1>
  <nav>
    <ul>
      <li><a href="index.html">Home</a></li>
      <li><a href="overzicht.html">Overzicht</a></li>
      <li><a href="add.html">Voeg toe</a></li>
    </ul>
  </nav>
</header>

<main>
  <article>
    <h2>Verwijder een ster</h2>
    <p>Ben je zeker dat je "deze ster" wil verwijderen?</p>
    <form action="#">
      <p><input type="button" value="Verwijder" onclick=""></p>
      <p><input type="button" value="Toch niet" onclick="window.location.href = 'overzicht.html'"></p>
    </form>
  </article>
</main>

<footer>
  <p>Webontwikkeling 2 - Boris Michiels</p>
</footer>
</body>
</html>