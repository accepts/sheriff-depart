<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description"
        content="A layout example with a side menu that hides on mobile, just like the Pure website.">
  <title>Sheriff</title>

  <%--Pure CSS--%>
  <link href="<c:url value="/resources/css/pure-css/pure-min.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/pure-css/grids-responsive-min.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/pure-css/side-menu.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/pure-css/buttons.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/pure-css/pure-custom.css" />" rel="stylesheet">

  <link href="<c:url value="/resources/css/add-edit-pages.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/font-awesome.min.css" />" rel="stylesheet">

  <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
  <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.13/css/jquery.dataTables.css">
  <script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.13/js/jquery.dataTables.js"></script>


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

      </ul>
    </div>
  </div>

  <div id="main">



