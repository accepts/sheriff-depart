<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/pages/template/header.jsp"%>


<div class="page-header">
  <h1>Car  detail</h1>
  <p class="lead">Enter edited car detail info.</p>
</div>

<form:form action="${pageContext.request.contextPath}/admin/carInventory/editCar/" method="post" commandName="car"
           enctype="multipart/form-data">

  <form:hidden path="carId" value="${car.carId}"/>


  <div class="form-group">
    <label for="name">Name</label>
    <form:input path="name" id="name" class="form-Control" value="${car.name}"  />
  </div>

  <div class="form-group">
    <label for="description">Description</label>
    <br/>
    <form:textarea path="description" id="description" class="form-Control" value="${car.description}"/>
  </div>


  <div class="form-group">
    <label class="control-label" for="carImage">Upload Picture</label>
    <form:input id="carImage" path="carImage" type="file" class="form:input-large" />
  </div>

  <br/>
  <br/>

  <input type="Submit" value="submit" class="btn btn-success">
  <a href="<c:url value="/admin/carInventory" />" class="btn btn-danger"> Cancel </a>

</form:form>






