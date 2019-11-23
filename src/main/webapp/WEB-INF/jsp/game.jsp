<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!--<spring:url value="/resources/css/game.css" var="gameCss"/>-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/homepage.css"/>"/>


    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<header>

</header>

<body>
<div class="header">
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">IcelandicTutor</a>
            </div>
            <ul class="nav navbar-nav">
                <li class="homepage"><a onclick="location.href = '/homepage'">Home</a></li>
                <li><a href="#">Page 1</a></li>
                <li><a href="#">Page 2</a></li>
                <li><a href="#">Page 3</a></li>
            </ul>
            <div>
                <input type="button" class="btn btn-primary logoutbtn" onclick="location.href = '/logout'" value="Logout" />
            </div>
        </div>
    </nav>
</div>

<div class="container-fluid">
    <div class="mainContainer">
        <sf:form method="POST" action="/game/${cat_id}/${lvl_id}">
        <div>
            <h2>${question}</h2>
        </div>
        <div>
            <div>
                <input type="submit" class="btn btn-primary" onclick="location.href = '/game/${cat_id}/${lvl_id}'" value="${answer}" name="answer" />
            </div>
            <div>
                <input type="submit" class="btn btn-primary" onclick="location.href = '/game/${cat_id}/${lvl_id}'" value="${wrongAnswer1}" name="wrongAnswer1" />
            </div>
            <div>
                <input type="submit" class="btn btn-primary" onclick="location.href = '/game/${cat_id}/${lvl_id}'" value="${wrongAnswer2}" name="wrongAnswer2"/>
            </div>

        </div>
        </sf:form>

    </div>
</div>

</body>

</html>