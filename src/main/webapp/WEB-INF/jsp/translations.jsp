<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!--<spring:url value="/resources/css/dictionary.css" var="dictionaryCss"/>-->
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
                <li class="scoreboard"><a onclick="location.href = '/scoreboard'">Scoreboard</a></li>
                <li class="dictionary"><a onclick="location.href = '/dictionary'">Dictionary</a></li>
            </ul>
            <div>
                <input type="button" class="btn btn-primary logoutbtn" onclick="location.href = '/logout'" value="Logout" />
            </div>
        </div>
    </nav>
</div>
<div>
    <c:forEach var="listItem" items="${isl}" varStatus="theCount" >
        <tr><td>${listItem}       </td> <td>${ensk[theCount.index]}</td></tr><p></p>
    </c:forEach>
</div>


</body>

</html>