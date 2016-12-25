<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/pages/template/header.jsp" %>


<div class="header">
  <h1>Add a new Car</h1>

  <h2>Enter require information into corresponding fields .</h2>
</div>

<div class="content">
  <div class="form-style-2">
    <div class="form-style-2-heading">Provide your information</div>



<form:form action="${pageContext.request.contextPath}/admin/carInventory/addCar" method="post" commandName="car"
           enctype="multipart/form-data">

    <label for="name"><span>Car Name <span class="required">*</span></span>
      <form:errors path="name" cssStyle="color: darkred"/>
      <form:input path="name" id="name" class="input-field"/>
    </label>


    <label for="name"><span>Description <span class="required">*</span></span>
      <form:errors path="description" cssStyle="color: darkred"/>
      <form:input path="description" id="description" class="input-field"/>
    </label>


    <label for="carImage"><span>Upload Picture:</span>
      <form:input id="carImage" path="carImage" type="file" class="input-field"/>
    </label>


    <label>
      <span>&nbsp;</span><input type="submit" value="Add Car"/>
    </label>

    <label>
      <br/>
      <br/>
      <div class="form-style-2-heading"></div>
    </label>

    <label style="text-align: right">
      <a href="<c:url value="/admin/carInventory" />">
        <button type="button" id="go-home-btn"><i class="fa fa-reply fa-1x" style="color: white"></i> Back
          to car inventory
        </button>
      </a>
    </label>

</form:form>


  </div>
</div>

<%@include file="/WEB-INF/pages/template/footer.jsp"%>

















<%--    OLD form
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
--%>

