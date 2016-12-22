<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <meta name="description" content="Test project 'Police Department'">
  <meta name="author" content="Obelets Sergey">

  <title>Index</title>

  <!-- CSS -->
  <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/dashboard.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">

  <%--DataTables Plugin
  https://datatables.net/manual/installation
  --%>
  <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
  <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.13/css/jquery.dataTables.css">
  <script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.13/js/jquery.dataTables.js"></script>

  <%--old style--%>
  <%--<script type="text/javascript" src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>--%>
  <%--<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.10/dataTables.min.css"/>--%>


</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Police Patrol</a>
    </div>
    <div id="navbar" class="navbar-collapse collapse">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="<c:url value="/"/>">Home</a></li>
        <li><a href="<c:url value="/persons"/>">List of Persons</a></li>
        <li><a href="<c:url value="/admin"/>">Admin</a></li>

        <c:if test="${not empty pageContext.request.userPrincipal}">
          <c:if test="${pageContext.request.isUserInRole('ROLE_ADMIN')}">
            <li><a href="<c:url value="/j_spring_security_logout"/>" style="color: #e38d13">Logout</a></li>
          </c:if>
        </c:if>

        <li><a href="#">Help</a></li>
      </ul>
      <%--
      <form class="navbar-form navbar-right">
                      <input type="text" class="form-control" placeholder="Search...">
                  </form>

                  class="active"
<span class="sr-only">(current)</span>
                  --%>
    </div>
  </div>
</nav>


<div class="container-fluid">
  <div class="row">
    <div class="col-sm-3 col-md-2 sidebar">
      <ul class="nav nav-sidebar">
        <li ><a href="<c:url value="/"/>">Home </a></li>
        <li><a href="<c:url value="/admin"/>">Admin</a></li>
        <li><a href="<c:url value="/persons"/>">PersonList</a></li>
        <li><a href="<c:url value="/help"/>">HELP</a></li>
      </ul>
    </div>

    <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">