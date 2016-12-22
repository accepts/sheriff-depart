<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description"
        content="A layout example with a side menu that hides on mobile, just like the Pure website.">
  <title>Police</title>

  <%--<link rel="stylesheet" href="https://unpkg.com/purecss@0.6.1/build/pure-min.css"--%>
  <%--integrity="sha384-CCTZv2q9I9m3UOxRLaJneXrrqKwUNOzZ6NGEUMwHtShDJ+nCoiXJCAgi05KfkLGY" crossorigin="anonymous">--%>

  <%--Pure CSS--%>
  <link href="<c:url value="/resources/css/pure-css/pure-min.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/pure-css/grids-responsive-min.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/pure-css/side-menu.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/pure-css/buttons.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/pure-css/pure-custom.css" />" rel="stylesheet">



  <link href="<c:url value="/resources/css/font-awesome.min.css" />" rel="stylesheet">
  <%--<link href="<c:url value="/resources/css/login-style.css" />" rel="stylesheet">--%>



  <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
  <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.13/css/jquery.dataTables.css">
  <script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.13/js/jquery.dataTables.js"></script>

  <!--[if lte IE 8]>
  <!--<link rel="stylesheet" href="/combo/1.18.13?/css/layouts/side-menu-old-ie.css">-->
  <!--[if gt IE 8]><!-->
  <%--<link rel="stylesheet" href="/combo/1.18.13?/css/layouts/side-menu.css">--%>
  <!--<![endif]-->
  <!--[if lt IE 9]>
  <!--<script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script>-->

  <script>
    (function (i, s, o, g, r, a, m) {
      i['GoogleAnalyticsObject'] = r;
      i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
              }, i[r].l = 1 * new Date();
      a = s.createElement(o),
              m = s.getElementsByTagName(o)[0];
      a.async = 1;
      a.src = g;
      m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-41480445-1', 'purecss.io');
    ga('send', 'pageview');
  </script>
</head>
<body>


<div id="layout">
  <!-- Menu toggle -->
  <a href="#menu" id="menuLink" class="menu-link">
    <!-- Hamburger icon -->
    <span> </span>
  </a>

  <div id="menu">
    <div class="pure-menu">
      <img class="pure-img-responsive"
           src="<c:url value="/resources/images/logo-twin-peaks-sheriff-department.png" />" alt="logo">
      <a class="pure-menu-heading" href="<c:url value="/"/>"> Sheriff </a>


      <ul class="pure-menu-list">
        <li class="pure-menu-item"><a href="<c:url value="/persons"/>" class="pure-menu-link">List All</a></li>



        <li class="pure-menu-item"><a href="#" class="pure-menu-link">==============</a></li>

        <li class="pure-menu-item"><a href="<c:url value="/admin"/>" class="pure-menu-link">Admin</a></li>

        <li class="pure-menu-item"><a href="<c:url value="/admin/personInventory"/>" class="pure-menu-link">Persons</a></li>

        <li class="pure-menu-item"><a href="<c:url value="/admin/carInventory"/>" class="pure-menu-link">Cars</a></li>

        <li class="pure-menu-item" class="menu-item-divided pure-menu-selected">
          <a href="<c:url value="/admin/carPersonInventory"/>" class="pure-menu-link">Car-Persons</a>
        </li>


        <c:if test="${not empty pageContext.request.userPrincipal}">
          <c:if test="${pageContext.request.isUserInRole('ROLE_ADMIN')}">
            <li class="button-warning pure-button" ><a href="<c:url value="/j_spring_security_logout"/>">Logout</a></li>
          </c:if>
        </c:if>
      </ul>
    </div>
  </div>

  <div id="main">















  <%--
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

  &lt;%&ndash;DataTables Plugin
  https://datatables.net/manual/installation
  &ndash;%&gt;
  <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
  <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.13/css/jquery.dataTables.css">
  <script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.13/js/jquery.dataTables.js"></script>

  &lt;%&ndash;old style&ndash;%&gt;
  &lt;%&ndash;<script type="text/javascript" src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>&ndash;%&gt;
  &lt;%&ndash;<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.10/dataTables.min.css"/>&ndash;%&gt;


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
      &lt;%&ndash;
      <form class="navbar-form navbar-right">
                      <input type="text" class="form-control" placeholder="Search...">
                  </form>

                  class="active"
<span class="sr-only">(current)</span>
                  &ndash;%&gt;
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

    <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">--%>
