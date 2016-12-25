<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/pages/template/header.jsp" %>


<div class="header">
    <h1>Edit car information</h1>

    <h2>Edit require information into corresponding fields .</h2>
</div>

<div class="content">
    <div class="form-style-2">
        <div class="form-style-2-heading">Provide your information</div>


        <form:form action="${pageContext.request.contextPath}/admin/carInventory/editCar/" method="post"
                   commandName="car" enctype="multipart/form-data">

            <form:hidden path="carId"/>

            <label for="name"><span>Car Name <span class="required">*</span></span>
                <form:input path="name" id="name" class="input-field"/>
            </label>


            <label for="name"><span>Description </span>
                <form:input path="description" id="description" class="input-field"/>
            </label>


            <label for="name"><span>Personal</span>
                <form:select path="personsInCar" items="${persons}" multiple="multiple" size="5"
                             itemLabel="firstName" itemValue="personId" class="input-field"/>
            </label>


            <label for="carImage"><span>Upload Picture:</span>
                <form:input id="carImage" path="carImage" type="file" class="input-field"/>
            </label>


            <label>
                <span>&nbsp;</span><input type="submit" value="Edit Car"/>
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

<%@include file="/WEB-INF/pages/template/footer.jsp" %>


<%-- OLD FORM
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/pages/template/header.jsp"%>


<div class="page-header">
  <h1>Car  detail</h1>
  <p class="lead">Enter edited car detail info.</p>
</div>

<form:form action="${pageContext.request.contextPath}/admin/carInventory/editCar/" method="post"
           commandName="car" enctype="multipart/form-data">

  <form:hidden path="carId"/>


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

--%>




