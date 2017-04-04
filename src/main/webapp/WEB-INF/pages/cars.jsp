<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/pages/template/header.jsp" %>

<div class="page-header">
    <h1>List of all cars</h1>

    <p class="lead">Here is list of all cars in department.</p>
</div>

<div class="container col-md-10">

    <table class="table table-bordered">
        <thead>
        <tr class="bg-success">
            <th>Photo</th>
            <th>Name:</th>
            <th>Capacity:</th>
            <th>Description:</th>
        </tr>
        </thead>
        <c:forEach items="${carList}" var="car">
            <tr>
                <td><img src="<c:url value="/resources/photo_cars/${car.carId}.png" /> " alt="image"
                         style="width: 30%; height: auto"/></td>
                <td>${car.name}</td>
                <td>${car.carCapacity}</td>
                <td>${car.description}</td>
                <td><a href="<spring:url value="/carView/${car.carId}"/> "><span
                        class="glyphicon glyphicon-info-sign"></span></a></td>
            </tr>
        </c:forEach>
    </table>

</div>

<%@include file="/WEB-INF/pages/template/footer.jsp" %>