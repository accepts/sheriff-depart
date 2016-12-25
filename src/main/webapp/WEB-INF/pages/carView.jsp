<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/pages/template/header.jsp" %>


<div class="header">
  <h1>Car detail</h1>
  <h2>Detail information of particular car</h2>
</div>

<div class="content">

  <table class="pure-table pure-table-bordered">
    <thead>
    <tr class="bg-success">
      <th>Photo</th>
      <th colspan="2">Info</th>
    </tr>
    </thead>

    <tbody>
    <tr>
      <td rowspan="4">
        <div>
          <img src="<c:url value="/resources/photo_cars/${car.carId}.png" /> " alt="image"
               style="width: 200px"/>
        </div>
      </td>

      <td> Car name:</td>
      <td style="color: #222222"><h3>${car.name}</h3></td>

    </tr>

    <tr>
      <td> Capacity:</td>
      <td><p style="color: #761c19">${car.carCapacity}</p></td>
    </tr>

    <tr>
      <td> Description:</td>
      <td style="color: #222222"><p>${car.description}</p></td>
    </tr>

    <tr>
      <td> Persons in car: </td>
      <td style="width: 120px">
        <p id="list-persons-in-car">
          <c:forEach items="${car.personsInCar}" var="pc">
          ${pc.firstName} ${pc.lastName}<br/>
          </c:forEach>
        </p>
      </td>
    </tr>

    </tbody>
  </table>
  <br/>

  <c:if test="${not empty pageContext.request.userPrincipal}">
    <c:if test="${pageContext.request.isUserInRole('ROLE_ADMIN')}">
      <a href="<spring:url value="/admin/carInventory"/>">
        <button class="button-secondary pure-button-active pure-button"><i class="fa fa-reply fa-1x" style="color: white"></i> Car list</button>
      </a>
    </c:if>
  </c:if>

  <c:if test="${empty pageContext.request.userPrincipal}">
    <a href="<c:url value="/cars"/>">
      <button class="button-secondary pure-button-active pure-button"><i class="fa fa-reply fa-1x" style="color: white"></i> Car List</button>
    </a>
  </c:if>


</div>

<%@include file="/WEB-INF/pages/template/footer.jsp" %>










<%--
<%@include file="/WEB-INF/pages/template/header.jsp"%>

<div class="page-header">
  <h1>Car detail</h1>
  <p class="lead">Here is detail information about a car.</p>

  -------------------------
  <c:if test="${not empty pageContext.request.userPrincipal}">
    <c:if test="${pageContext.request.isUserInRole('ROLE_ADMIN')}">
          <strong style="color: #c12e2a">hello Admin!</strong>
    </c:if>
  </c:if>
  -------------------------

</div>

<div class="container col-md-10">

  <div class="row table-bordered">
      <div class="col-md-6">
        <img src="<c:url value="/resources/photo_cars/${car.carId}.png" /> " alt="image" style="width:100%"/>
      </div>


    <div class="col-md-4">
      <h3>${car.name}</h3>
      <strong>Capacity:</strong>
      <p style="color: #c12e2a">${car.carCapacity}</p>
      <strong>Description</strong>:
      <p style="color: #398439">${car.description}</p>

      <strong>Persons in car: </strong> <br/>
      <c:forEach items="${car.personsInCar}" var="pc">
          ${pc.firstName} ${pc.lastName}<br/>
        </c:forEach>
    </div>
  </div>

  <a href="<c:url value="/cars"/>"> Car list </a>>
</div>

<%@include file="/WEB-INF/pages/template/footer.jsp"%>
--%>