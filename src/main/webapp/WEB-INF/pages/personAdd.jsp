<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/pages/template/header.jsp"%>


<div class="header">
  <h1>Add Person</h1>
  <h2>Enter information in corresponding fields </h2>
</div>



<div class="content">




  <div class="form-style-2">
    <div class="form-style-2-heading">Provide your information</div>



<form:form action="${pageContext.request.contextPath}/admin/personInventory/addPerson" method="post" commandName="person"
        enctype="multipart/form-data">

  <div class="form-group">
    <label for="name">First Name</label>
    <form:errors path="firstName" cssStyle="color: darkred"/>
    <form:input path="firstName" id="name" class="form-Control" />
  </div>

  <div class="form-group">
    <label for="lastname">Last Name</label>
    <form:errors path="lastName" cssStyle="color: darkred"/>
    <form:input path="lastName" id="lastname" class="form-Control" />
  </div>

  <div class="form-group">
    <label for="age">Age</label>
    <form:errors path="age" cssStyle="color: darkred"/>
    <form:input path="age" id="age" class="form-Control"/>
  </div>


  <div class="form-group">
    <label for="rank">Rank</label>
    <br/>
    <label class="checkbox-inline"><form:radiobutton path="rank" id="rank" value="OFFICER"/>OFFICER </label>
    <label class="checkbox-inline"><form:radiobutton path="rank" id="rank" value="DETECTIVE"/>DETECTIVE </label>
    <label class="checkbox-inline"><form:radiobutton path="rank" id="rank" value="SERGEANT"/>SERGEANT </label>
    <label class="checkbox-inline"><form:radiobutton path="rank" id="rank" value="LIEUTENANT"/>LIEUTENANT </label>
    <br/>
    <label class="checkbox-inline"><form:radiobutton path="rank" id="rank" value="CAPTAIN"/>CAPTAIN </label>
    <label class="checkbox-inline"><form:radiobutton path="rank" id="rank" value="MAJOR"/>MAJOR </label>
    <label class="checkbox-inline"><form:radiobutton path="rank" id="rank" value="COLONEL"/>COLONEL </label>
    <label class="checkbox-inline"><form:radiobutton path="rank" id="rank" value="SHERIFF"/>SHERIFF </label>
  </div>
































  <div class="form-group">
    <label for="characteristic">Characteristic</label>
    <br/>
    <form:textarea path="characteristic" id="characteristic" class="form-Control"/>
  </div>

  <div class="form-group">
    <label class="control-label" for="personImage">Upload Picture</label>
    <form:input id="personImage" path="personImage" type="file" class="form:input-large" />
  </div>


  <br/>
  <br/>

  <input type="Submit" value="Add person!" class="btn btn-success">

  <input type="button" value="Cancel" class="btn btn-success">

  <a href="<c:url value="/admin/personInventory" />" class="btn btn-danger"> Cancel </a>

</form:form>



  </div>
</div>










</div>




<%--


<form:form action="${pageContext.request.contextPath}/admin/personInventory/addPerson" method="post" commandName="person"
        enctype="multipart/form-data">

  <div class="form-group">
    <label for="name">First Name</label>
    <form:errors path="firstName" cssStyle="color: darkred"/>
    <form:input path="firstName" id="name" class="form-Control" />
  </div>

  <div class="form-group">
    <label for="lastname">Last Name</label>
    <form:errors path="lastName" cssStyle="color: darkred"/>
    <form:input path="lastName" id="lastname" class="form-Control" />
  </div>

  <div class="form-group">
    <label for="age">Age</label>
    <form:errors path="age" cssStyle="color: darkred"/>
    <form:input path="age" id="age" class="form-Control"/>
  </div>


  <div class="form-group">
    <label for="rank">Rank</label>
    <br/>
    <label class="checkbox-inline"><form:radiobutton path="rank" id="rank" value="OFFICER"/>OFFICER </label>
    <label class="checkbox-inline"><form:radiobutton path="rank" id="rank" value="DETECTIVE"/>DETECTIVE </label>
    <label class="checkbox-inline"><form:radiobutton path="rank" id="rank" value="SERGEANT"/>SERGEANT </label>
    <label class="checkbox-inline"><form:radiobutton path="rank" id="rank" value="LIEUTENANT"/>LIEUTENANT </label>
    <br/>
    <label class="checkbox-inline"><form:radiobutton path="rank" id="rank" value="CAPTAIN"/>CAPTAIN </label>
    <label class="checkbox-inline"><form:radiobutton path="rank" id="rank" value="MAJOR"/>MAJOR </label>
    <label class="checkbox-inline"><form:radiobutton path="rank" id="rank" value="COLONEL"/>COLONEL </label>
    <label class="checkbox-inline"><form:radiobutton path="rank" id="rank" value="SHERIFF"/>SHERIFF </label>
  </div>

  <div class="form-group">
    <label for="characteristic">Characteristic</label>
    <br/>
    <form:textarea path="characteristic" id="characteristic" class="form-Control"/>
  </div>

  <div class="form-group">
    <label class="control-label" for="personImage">Upload Picture</label>
    <form:input id="personImage" path="personImage" type="file" class="form:input-large" />
  </div>


  <br/>
  <br/>

  <input type="Submit" value="submit" class="btn btn-success">
  <a href="<c:url value="/admin/personInventory" />" class="btn btn-danger"> Cancel </a>

</form:form>


--%>