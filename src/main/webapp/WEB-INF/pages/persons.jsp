<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/pages/template/header.jsp"%>



<div class="page-header">
  <h1>List of all officer</h1>
  <p class="lead">Here is list of all person in department.</p>
</div>

<div class="container col-md-10">



  <table class="table table-bordered">
    <thead>
    <tr class="bg-success">
      <th>Photo</th>
      <th>First name</th>
      <th>Last Name</th>
      <th>Rank</th>
      <th>Detail</th>
    </tr>
    </thead>
    <c:forEach items="${personList}" var="car">
      <tr>
        <td><img src="<c:url value="/resources/photo_person/${car.personId}.png" /> " alt="image" style="width: 30%; height: auto"/> </td>
        <td>${car.firstName}</td>
        <td>${car.lastName}</td>
        <td>${car.rank}</td>
        <%--<td><a href="<c:url value="/persons/viewPerson/person001"/>" ><span class="glyphicon glyphicon-info-sign"></span></a></td>--%>
        <td><a href="<spring:url value="/personView/${car.personId}"/> " ><span class="glyphicon glyphicon-info-sign"></span></a></td>
      </tr>
    </c:forEach>
  </table>


</div>

<%@include file="/WEB-INF/pages/template/footer.jsp"%>