<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/pages/template/header.jsp"%>

<div class="header">
  <h1>Administrator page</h1>

  <h2>Main page with link's on general crud-operation.</h2>
</div>

<div class="content">

  <div class="pure-g">

    <div class="pure-u-1-3">
      <a href="<c:url value="/admin/personInventory"/> " >
      <img class="pure-img-responsive" src="<c:url value="/resources/images/tp-person.jpg" />"
           alt="Peyto Lake">
      </a>
      <h2>Person inventory</h2>
      <p>CRUD operation with personal </p>
    </div>

    <div class="pure-u-1-3">
      <a href="<c:url value="/admin/carInventory"/> " >
      <img class="pure-img-responsive" src="<c:url value="/resources/images/tp-cars.jpg" />"
           alt="Train">
      </a>
      <h2>Car inventory</h2>
      <p>CRUD operation with Cars </p>
    </div>

    <div class="pure-u-1-3">
      <a href="<c:url value="/admin/carPersonInventory"/> " >
      <img class="pure-img-responsive" src="<c:url value="/resources/images/tp-car.jpg" />"
           alt="T-Shirt Store">
      </a>
      <h2>Car - Person</h2>
      <p>Set particular persons in corresponding Car</p>
    </div>

  </div>

  <c:if test="${pageContext.request.userPrincipal.name != null }">
  <div id="function-btn">
    <a href="<c:url value="/j_spring_security_logout"/>"> <button class="button-error pure-button-active pure-button"><i class="fa fa-power-off fa-1x" style="color: white"></i> Logout</button></a>
  </div>
  </c:if>

</div>

<%@include file="/WEB-INF/pages/template/footer.jsp"%>
