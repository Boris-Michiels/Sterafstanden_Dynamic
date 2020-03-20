<%--
  Created by IntelliJ IDEA.
  User: boris
  Date: 20/03/2020
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
    <h1>SterAfstanden</h1>
    <nav>
        <ul>
            <li <c:if test="${param.page == 'home'}">id="selected"</c:if>><a href="Servlet?command=home">Home</a></li>
            <li <c:if test="${param.page == 'overview'}">id="selected"</c:if>><a href="Servlet?command=overview">Overzicht</a></li>
            <li <c:if test="${param.page == 'add'}">id="selected"</c:if>><a href="Servlet?command=addForm">Voeg Toe</a></li>
            <li <c:if test="${param.page == 'search'}">id="selected"</c:if>><a href="Servlet?command=searchForm">Zoeken</a></li>
        </ul>
    </nav>
</header>