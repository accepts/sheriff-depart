<%@include file="/WEB-INF/pages/template/header.jsp"%>

<div class="page-header">
  <h1>Car detail</h1>
  <p class="lead">Here is detail information about a car.</p>
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
    </div>
  </div>

  <a href="<c:url value="/cars"/>"> Car list </a>>
</div>

<%@include file="/WEB-INF/pages/template/footer.jsp"%>