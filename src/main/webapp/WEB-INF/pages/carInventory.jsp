<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/pages/template/header.jsp"%>


<div class="page-header">
  <h1>Car inventory page</h1>
  <p class="lead">List of all car</p>
</div>

<div class="container col-md-10">

  <table class="table table-bordered">
    <thead>
    <tr class="bg-success">
      <th>Photo</th>
      <th>Name</th>
      <th>Capacity</th>
      <th>Description</th>
      <th>Personal</th>
      <th>Detail</th>
      <th>Delete</th>
      <th>Edit</th>
    </tr>
    </thead>
    <c:forEach items="${carList}" var="car">
      <tr>
        <td><img src="<c:url value="/resources/photo_cars/${car.carId}.png" /> " alt="image" style="width: 30%; height: auto"/> </td>
        <td>${car.name}</td>
        <td>${car.carCapacity}</td>
        <td>${car.description}</td>

        <td>
      <c:forEach items="${car.personsInCar}" var="pc">
        ${pc.firstName} ${pc.lastName}<br/>
      </c:forEach>
        </td>

        <td><a href="<spring:url value="/carView/${car.carId}"/> " ><span class="glyphicon glyphicon-info-sign"></span></a></td>
        <td><a href="<spring:url value="/admin/carInventory/deleteCar/${car.carId}"/> " ><span class="glyphicon glyphicon-remove" style="color: #c12e2a"></span></a></td>
        <td><a href="<spring:url value="/admin/carInventory/editCar/${car.carId}"/> " ><span class="glyphicon glyphicon-pencil" style="color: #3c763d"></span></a></td>
      </tr>
    </c:forEach>
  </table>

  <a href="<spring:url value="/admin/carInventory/addCar"/> " class="btn btn-primary" > Add car</a>

</div>

<%@include file="/WEB-INF/pages/template/footer.jsp"%>