<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/pages/template/header.jsp"%>



<div class="page-header">
  <h1>Person inventory page</h1>
  <p class="lead">List of all person</p>
</div>

<div class="container col-md-10">



  <table class="table table-bordered">
    <thead>
    <tr class="bg-success">
      <th>Photo</th>
      <th>First name</th>
      <th>Last Name</th>
      <th>Rank</th>
      <th>In car</th>
      <th>Detail</th>
      <th>Delete</th>
      <th>Edit</th>
    </tr>
    </thead>
    <c:forEach items="${personList}" var="person">
      <tr>
        <td><img src="<c:url value="/resources/photo_person/${person.personId}.png" /> " alt="image" style="width: 30%; height: auto"/> </td>
        <td>${person.firstName}</td>
        <td>${person.lastName}</td>
        <td>${person.rank}</td>
        <td>${person.inCar}</td>
        <td><a href="<spring:url value="/personView/${person.personId}"/> " ><span class="glyphicon glyphicon-info-sign"></span></a></td>
        <td><a href="<spring:url value="/admin/personInventory/deletePerson/${person.personId}"/> " ><span class="glyphicon glyphicon-remove" style="color: #c12e2a"></span></a></td>
        <td><a href="<spring:url value="/admin/personInventory/editPerson/${person.personId}"/> " ><span class="glyphicon glyphicon-pencil" style="color: #3c763d"></span></a></td>
      </tr>
    </c:forEach>
  </table>

  <a href="<spring:url value="/admin/personInventory/addPerson"/> " class="btn btn-primary" > Add person</a>

</div>

<%@include file="/WEB-INF/pages/template/footer.jsp"%>