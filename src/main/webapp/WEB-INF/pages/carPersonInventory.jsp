<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/pages/template/header.jsp" %>


<div class="header">
    <h1>Car-Person table</h1>

    <h2>List of all Department cars and car personal with add/remove functions</h2>
</div>

<div class="content">

    <table class="pure-table pure-table-bordered">
        <thead>
        <tr class="bg-success">
            <th>Photo</th>
            <th>Name</th>
            <th>Capacity</th>
            <%--<th>Description</th>--%>
            <th>Persons</th>
            <th>Edit</th>
        </tr>
        </thead>
        <c:forEach items="${carList}" var="car">
            <tr>
                <td>
                    <div id="photo-car-in-table">
                        <img src="<c:url value="/resources/photo_cars/${car.carId}.png" /> " alt="image"/>
                    </div>
                </td>

                <td>${car.name}</td>
                <td>${car.carCapacity}</td>
                    <%--<td>${car.description}</td>--%>
                <td>
                    <c:forEach var="person" items="${car.personsInCar}">
                        <c:out value="${person.firstName}"/> <c:out value="${person.lastName}"/><br/>
                    </c:forEach>
                </td>

                <td>
                    <a href="<spring:url value="/admin/carPersonInventory/editPersonsInCar/${car.carId}"/> ">
                        <i class="fa fa-user-plus fa-2x" style="color: #245580"></i></a>
                </td>
            </tr>
        </c:forEach>
    </table>


    <form:form action="${pageContext.request.contextPath}/admin/carPersonInventory/editPersonsInCar" method="post"
               commandName="car">

    <form:hidden path="carId"/>
    <form:hidden path="description"/>
    <form:hidden path="name"/>

    <table class="pure-table pure-table-bordered">

        <tr class="bg-success">
            <td>Car Name:</td>
            <td>Personal:</td>
        </tr>

        <tr>
            <td>
                <strong style="color: #761c19; font-size: 20px" >${car.name}</strong>
                <br/>
                <strong style="color: #245580; font-size: 12px; font-style: italic;" >${car.description}</strong>
            </td>
            <td>
                <form:select path="personsInCar" items="${persons}" multiple="multiple" size="5"
                             itemLabel="lastName" itemValue="personId"/>
            </td>
        </tr>


        <tr>
            <br/>
            <td>
                <div id="function-btn">
                    <button type="submit" class="button-secondary pure-button-active pure-button"><i class="fa fa-refresh  fa-1x" style="color: white"></i> Edit personal</button>
                </div>
            </td>
        </tr>



        </form:form>


</div>

<%@include file="/WEB-INF/pages/template/footer.jsp" %>