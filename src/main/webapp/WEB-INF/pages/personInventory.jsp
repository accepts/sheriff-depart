<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/pages/template/header.jsp"%>




<div class="header">
  <h1>Persons table</h1>

  <h2>List of all Department personal with crud-functions</h2>
</div>

<div class="content">


  <table class="pure-table pure-table-bordered">
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
        <td><a href="<spring:url value="/personView/${person.personId}"/> " ><i class="fa fa-id-card fa-2x"></i></a></td>
        <td><a href="<spring:url value="/admin/personInventory/deletePerson/${person.personId}"/> " ><i class="fa fa-times fa-2x" style="color: #c12e2a"></i></a></td>
        <td><a href="<spring:url value="/admin/personInventory/editPerson/${person.personId}"/> " ><i class="fa fa-pencil-square-o fa-2x" style="color: #245580"></i></a></td>
      </tr>
    </c:forEach>
  </table>

  <br/>

  <div id="function-btn">
  <a href="<spring:url value="/admin/personInventory/addPerson"/>"> <button class="button-secondary pure-button-active pure-button"><i class="fa fa-plus-square fa-1x" style="color: white"></i> Add person</button></a>
  <%--<a href="<spring:url value="/admin/personInventory/addPerson"/> " class="btn btn-primary" > Add person</a>--%>
  </div>

</div>





<%@include file="/WEB-INF/pages/template/footer.jsp"%>