<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/pages/template/header.jsp"%>


<div class="page-header">
  <h1>Car  detail</h1>
  <p class="lead">Enter edited car detail info.</p>
</div>





<form:form action="${pageContext.request.contextPath}/admin/carInventory/editCar/" method="post"
           commandName="car" enctype="multipart/form-data">

  <form:hidden path="carId"/>
  <%--<form:hidden path="description"/>--%>


  <table>
  <tr>
      <td>Name:</td>
      <td><form:input path="name"/></td>
  </tr>

  <tr>
    <td>description:</td>
    <td><form:input path="description"/></td>
  </tr>


  <tr>
    <td>Personal:</td>
    <td>
      <form:select path="personsInCar" items="${persons}" multiple="multiple" size="5"
                   itemLabel="firstName" itemValue="personId"/>
    </td>
  </tr>

  <tr>
    <td>
        <label class="control-label" for="carImage">Upload Picture</label>
        <form:input id="carImage" path="carImage" type="file" class="form:input-large" />
    </td>
  </tr>

<br/>


  <tr>
    <td>
      <input type="Submit" value="Edit" class="btn btn-success">
      <a href="<c:url value="/admin/carInventory" />" class="btn btn-danger"> Cancel </a>
    </td>
  </tr>



</form:form>



<%--

<form:form action="${pageContext.request.contextPath}/admin/carInventory/editCar/" method="post" commandName="car"
           enctype="multipart/form-data">

  <form:hidden path="carId" value="${car.carId}"/>
  <form:hidden path="personsInCar" type="list" value="${car.personsInCar}"  />




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

  <input type="Submit" value="Edit" class="btn btn-success">
  <a href="<c:url value="/admin/carInventory" />" class="btn btn-danger"> Cancel </a>

</form:form>

--%>




