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
      <th>In Car</th>
      <th>Detail</th>
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
      </tr>
    </c:forEach>
  </table>


  <%--<table class="table table-bordered">--%>
    <%--<thead>--%>
    <%--<tr class="bg-success">--%>
      <%--<th>Photo</th>--%>
      <%--<th>Car name</th>--%>
      <%--<th>Description</th>--%>
      <%--<th>Capacity</th>--%>
      <%--<th>In Car</th>--%>
      <%--<th>Detail</th>--%>
    <%--</tr>--%>
    <%--</thead>--%>
    <%--<c:forEach items="${carList}" var="car">--%>
      <%--<tr>--%>
        <%--<td><img src="<c:url value="/resources/photo_cars/${car.carId}.png" /> " alt="image" style="width: 30%; height: auto"/> </td>--%>
        <%--<td>${car.name}</td>--%>
        <%--<td>${car.description}</td>--%>
        <%--<td>${car.carCapacity}</td>--%>
        <%--<td><a href="<spring:url value="/carView/${car.carId}"/> " ><span class="glyphicon glyphicon-info-sign"></span></a></td>--%>
      <%--</tr>--%>
    <%--</c:forEach>--%>
  <%--</table>--%>


</div>

<%@include file="/WEB-INF/pages/template/footer.jsp"%>