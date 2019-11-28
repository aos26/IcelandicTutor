<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!--<spring:url value="/resources/css/homepage.css" var="homepageCss"/>-->
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
                <a class="navbar-brand">IcelandicTutor</a>
            </div>
            <div>
                <span style="float: right" class="navbar-text">
                    Class HBV501G, University of Iceland
                </span>
            </div>
        </div>
    </nav>
</div>

<ul>
    <li><a href="/register">Register</a></li>
    <p>Already have an account?</p>
    <li><a href="/login">Login</a></li>
</ul>


</body>
</html>