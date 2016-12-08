<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/pages/template/header.jsp"%>


<div class="page-header">
  <h1>Officer detail</h1>
  <p class="lead">Here is list of all person in department.</p>
</div>

<form:form action="${pageContext.request.contextPath}/admin/personInventory/editPerson/" method="post" commandName="person"
           enctype="multipart/form-data">

  <form:hidden path="personId" value="${person.personId}"/>

  <div class="form-group">
    <label for="name">First Name</label>
    <form:input path="firstName" id="name" class="form-Control" value="${person.firstName}" />
  </div>

  <div class="form-group">
    <label for="lastname">Last Name</label>
    <form:input path="lastName" id="lastname" class="form-Control" value="${person.lastName}" />
  </div>

  <div class="form-group">
    <label for="age">Age</label>
    <form:input path="age" id="age" class="form-Control" value="${person.age}"/>
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
    <form:textarea path="characteristic" id="characteristic" class="form-Control" value="${person.characteristic}"/>
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






