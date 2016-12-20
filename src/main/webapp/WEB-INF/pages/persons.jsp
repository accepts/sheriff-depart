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





  <h2>Persons in Car</h2>

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
    <c:forEach items="${personList}" var="person" >
      <tr>
        <c:if test="${person.inCar ne false}">

          <td><img src="<c:url value="/resources/photo_person/${person.personId}.png" /> " alt="image" style="width: 30%; height: auto"/> </td>
          <td>${person.firstName}</td>
          <td>${person.lastName}</td>
          <td>${person.rank}</td>
          <td>${person.inCar}</td>
          <td><a href="<spring:url value="/personView/${person.personId}"/> " ><span class="glyphicon glyphicon-info-sign"></span></a></td>

        </c:if>
      </tr>
    </c:forEach>
  </table>





  <h2>Persons on foot</h2>

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
    <c:forEach items="${personList}" var="person" >
      <tr>
        <c:if test="${person.inCar ne true}">

        <td><img src="<c:url value="/resources/photo_person/${person.personId}.png" /> " alt="image" style="width: 30%; height: auto"/> </td>
        <td>${person.firstName}</td>
        <td>${person.lastName}</td>
        <td>${person.rank}</td>
        <td>${person.inCar}</td>
        <td><a href="<spring:url value="/personView/${person.personId}"/> " ><span class="glyphicon glyphicon-info-sign"></span></a></td>

        </c:if>
      </tr>
    </c:forEach>
  </table>


</div>

<%@include file="/WEB-INF/pages/template/footer.jsp"%>