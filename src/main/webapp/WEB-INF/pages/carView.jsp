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