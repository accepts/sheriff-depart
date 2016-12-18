<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/pages/template/header.jsp" %>


<div class="page-header">
    <h1>Car inventory page</h1>

    <p class="lead">List of all car with their personal</p>
</div>

<div class="container col-md-10">

    <table class="table table-bordered">
        <thead>
        <tr class="bg-success">
            <th>Photo</th>
            <th>Name</th>
            <th>Capacity</th>
            <th>Description</th>
            <th>Persons</th>
            <th>Edit</th>
        </tr>
        </thead>
        <c:forEach items="${carList}" var="car">
            <tr>
                <td><img src="<c:url value="/resources/photo_cars/${car.carId}.png" /> " alt="image"
                         style="width: 30%; height: auto"/></td>
                <td>${car.name}</td>
                <td>${car.carCapacity}</td>
                <td>${car.description}</td>
                <td>
                    <c:forEach var="person" items="${car.personsInCar}">
                        <c:out value="${person.firstName}"/> <c:out value="${person.lastName}"/><br/>
                    </c:forEach>
                </td>

                <td>
                    <a href="<spring:url value="/admin/carPersonInventory/editPersonsInCar/${car.carId}"/> "> Edit</a>
                </td>
            </tr>
        </c:forEach>
    </table>



    <form:form action="${pageContext.request.contextPath}/admin/carPersonInventory/editPersonsInCar" method="post"
               commandName="car">

    <form:hidden path="carId"/>

    Name: <form:input path="name"/>

    <table>
        <tr>
            <%--<td>Name:</td>--%>
            <%--<td><form:input path="name"/></td>--%>
        </tr>

        <tr>
            <td>Personal:</td>
            <td>
                <form:select path="personsInCar" items="${persons}" multiple="multiple" size="5"
                             itemLabel="firstName" itemValue="personId" />
            </td>
        </tr>


        <tr>
            <td align="right"><input type="submit" value="submit"></td>
        </tr>

        </form:form>

        <%--<form:select path="persons" items="${persons}" multiple="multiple" size="5" itemLabel="firstName"--%>
                     <%--itemValue="personId"/>--%>


</div>

<%@include file="/WEB-INF/pages/template/footer.jsp" %>