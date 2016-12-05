<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
</head>
<body>

<h4>----------Testing----------------</h4>

${message}
<br/>
-------------- Person info -----------<br/>
<table BORDER>
  <thead>
  <tr>
    <th>First Name</th>
    <th>Last name</th>
    <th>Range</th>
    <th>In Car</th>
  </tr>
  </thead>
  <tr>
    <td>${person1.firstName}</td>
    <td>${person1.lastName}</td>
    <td>${person1.range}</td>
    <td>${person1.inCar}</td>
  </tr>
</table>


<br/>

<table BORDER>
  <thead>
  <tr>
    <th>First Name</th>
    <th>Last name</th>
    <th>Range</th>
    <th>In Car</th>
  </tr>
  </thead>
  <tr>
    <td>${person2.firstName}</td>
    <td>${person2.lastName}</td>
    <td>${person2.range}</td>
    <td>${person2.inCar}</td>
  </tr>
</table>

-----------Car info -------------- <br/>

<table BORDER>
  <thead>
  <tr>
    <th>Name</th>
    <th>Capacity</th>
  </tr>
  </thead>
  <tr>
    <td>${patrolCar.name}</td>
    <td>${patrolCar.carCapacity}</td>
  </tr>
</table>
<br/>

<h4>--------------------------</h4>
<a href="<c:url value="/"/>">Back to home page</a>

</body>
</html>
