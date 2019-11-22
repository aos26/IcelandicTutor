<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
                <a class="navbar-brand" onclick="location.href = '/homepage'">IcelandicTutor</a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a onclick="location.href = '/homepage'">Home</a></li>
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
       <sf:form name="adminForm" method="POST" modelAttribute="addQuestion" action="/admin">
           <table>
               <div class="form-group">
                   <label path="questionWord">questionWord</label>
                   <sf:input type="text" path="questionWord" name="questionWord" class="form-control" placeholder="Enter word" />
               </div>
               <div class="form-group">
                   <label path="answer">answer</label>
                   <sf:input type="text" path="answer" name="answer" class="form-control" placeholder="Enter answer"/>
               </div>
               <div class="form-group">
                   <label path="wrongAnswer1">wrongAnswer1</label>
                   <sf:input type="text" path="wrongAnswer1" name="wrongAnswer1" class="form-control" placeholder="Enter wrong answer"/>
               </div>
               <div class="form-group">
                   <label path="wrongAnswer2">wrongAnswer1</label>
                   <sf:input type="text" path="wrongAnswer2" name="wrongAnswer2" class="form-control" placeholder="Enter wrong answer"/>
               </div>
               <input type="submit" class="btn btn-primary login" value="Submit" />
           </table>
       </sf:form>
    </div>
</div>

</body>

</html>