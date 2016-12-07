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
      <th>First name</th>
      <th>Last Name</th>
      <th>Rank</th>
      <th>Detail</th>
    </tr>
    </thead>
    <c:forEach items="${personList}" var="person">
      <tr>
        <td>${person.firstName}</td>
        <td>${person.lastName}</td>
        <td>${person.rank}</td>
        <%--<td><a href="<c:url value="/persons/viewPerson/person001"/>" ><span class="glyphicon glyphicon-info-sign"></span></a></td>--%>
        <td><a href="<spring:url value="/personView/${person.personId}"/> " ><span class="glyphicon glyphicon-info-sign"></span></a></td>
      </tr>
    </c:forEach>
  </table>



</div>




<%@include file="/WEB-INF/pages/template/footer.jsp"%>