<%-- 
    Document   : main
    Created on : Aug 8, 2017, 12:43:06 AM
    Author     : maksi
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="beans.Author"%>
<%@page import="beans.AuthorList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hello page</title>
        <link rel="stylesheet" href="style/style3.css">
    </head>
    <body align="center">
        <div class="bgm">
            <h1>Good news, everyone!</h1>
            <h3>Вы успешно авторизовались</h3>
            <%= "Привет, пользователь "+request.getParameter("username") %>
            <br><br>
            <span>Ваш пароль:</span>
            <h3>
                ${param["password"]}
            </h3>
            <h3>Список Авторов</h3>
            <ul>
                <jsp:useBean id="authorList" class="beans.AuthorList" scope="application"/>
                <c:forEach var="author" items="${authorList.getAuthorList()}">
                    <li><a href="#">${author.name()}</a></li>
                </c:forEach>
            </ul>
        </div>
    </body>
</html>
