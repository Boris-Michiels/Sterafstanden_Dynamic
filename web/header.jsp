<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
    <h1>SterAfstanden</h1>
    <nav>
        <ul>
            <li ${param.page == 'home' ? "id=selected" : ""}><a href="Servlet?command=home">Home</a></li>
            <li ${param.page == 'overview' ? "id=selected" : ""}><a href="Servlet?command=overview">Overzicht</a></li>
            <li ${param.page == 'add' ? "id=selected" : ""}><a href="Servlet?command=addForm">Voeg Toe</a></li>
            <li ${param.page == 'search' ? "id=selected" : ""}><a href="Servlet?command=searchForm">Zoeken</a></li>
        </ul>
    </nav>
</header>