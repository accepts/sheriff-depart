<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/pages/template/header.jsp"%>


<div class="header">
  <h1>Car table</h1>

  <h2>List of all Department cars with crud-functions</h2>
</div>

<div class="content">

  <table class="pure-table pure-table-bordered">
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
      <th style="font-size: 12px">Remove persons</th>
    </tr>
    </thead>
    <c:forEach items="${carList}" var="car">
      <tr>
        <td>
          <div id="photo-car-in-table">
          <img src="<c:url value="/resources/photo_cars/${car.carId}.png" /> " alt="image"/>
          </div>
        </td>
        <td>${car.name}</td>
        <td>${car.carCapacity}</td>
        <td>
          <div id="description-in-table">
            <p>
        ${car.description}
            </p>
          </div>
        </td>

        <td>
          <div id="personal-in-table">
            <p>
            <c:forEach items="${car.personsInCar}" var="pc">
              ${pc.firstName} ${pc.lastName}<br/>
            </c:forEach>
          </p>
          </div>
        </td>

        <td><a href="<spring:url value="/carView/${car.carId}"/> " ><i class="fa fa-id-card fa-2x"></i></a></td>
        <td><a href="<spring:url value="/admin/carInventory/deleteCar/${car.carId}"/> " ><i class="fa fa-times fa-2x" style="color: #c12e2a"></i></a></td>
        <td><a href="<spring:url value="/admin/carInventory/editCar/${car.carId}"/> " ><i class="fa fa-pencil-square-o fa-2x" style="color: #245580"></i></a></td>
        <td><a href="<spring:url value="/admin/carPersonInventory/clearCarPersonal/${car.carId}"/> " ><i class="fa fa-scissors fa-2x" style="color: #d58512"></i></a></td>
      </tr>
    </c:forEach>
  </table>

  <br/>

  <div id="function-btn">
    <a href="<spring:url value="/admin/carInventory/addCar"/>"> <button class="button-secondary pure-button-active pure-button"><i class="fa fa-plus-square fa-1x" style="color: white"></i>  Add car</button></a>
  </div>


</div>

<%@include file="/WEB-INF/pages/template/footer.jsp"%>