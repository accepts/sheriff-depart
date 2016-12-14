<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/pages/template/header.jsp"%>


<div class="page-header">
  <h1>Car info</h1>
  <p class="lead">Insert a car information in corresponding fields</p>
</div>

<form:form action="${pageContext.request.contextPath}/admin/carInventory/addCar" method="post" commandName="car"
           enctype="multipart/form-data">

  <div class="form-group">
    <label for="name">Name</label>
    <form:errors path="name" cssStyle="color: darkred"/>
    <form:input path="name" id="name" class="form-Control" />
  </div>

  <div class="form-group">
    <label for="description">Description</label>
    <br/>
    <form:textarea path="description" id="description" class="form-Control"/>
  </div>

  <div class="form-group">
    <label class="control-label" for="carImage">Upload Picture</label>
    <form:input id="carImage" path="carImage" type="file" class="form:input-large" />
  </div>


  <br/>
  <br/>

  <input type="Submit" value="Add" class="btn btn-success">
  <a href="<c:url value="/admin/carInventory" />" class="btn btn-danger"> Cancel </a>

</form:form>






