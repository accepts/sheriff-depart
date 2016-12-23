<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/pages/template/header.jsp" %>


<div class="header">
    <h1>Person detail</h1>
    <h2>Detail information of particular person</h2>
</div>

<div class="content">

    <table class="pure-table pure-table-bordered">
        <thead>
        <tr class="bg-success">
            <th>Photo</th>
            <th colspan="2">Info</th>
        </tr>
        </thead>

        <tbody>
        <tr>
            <td rowspan="5">
                <div>
                    <img src="<c:url value="/resources/photo_person/${person.personId}.png" /> " alt="image"
                         style="width: 200px"/>
                </div>
            </td>

            <td> First and Last name:</td>
            <td style="color: #222222"><h3>${person.firstName} ${person.lastName}</h3></td>

        </tr>



        <tr>
            <td> Rank:</td>
            <td><p style="color: #761c19">${person.rank}</p></td>
        </tr>

        <tr>
            <td> Age:</td>
            <td style="color: #222222"><p>${person.age}</p></td>
        </tr>

        <tr>
            <td> Characteristic</td>
            <td><p style="color: #245580; font-style: italic;">${person.characteristic}</p></td>
        </tr>

        <tr>
            <td> Is in car:</td>
            <td style="color: #222222"><p>${person.inCar}</p></td>
        </tr>

        </tbody>
    </table>
    <br/>


    <%--Return buttons--%>

        <c:if test="${not empty pageContext.request.userPrincipal}">
        <c:if test="${pageContext.request.isUserInRole('ROLE_ADMIN')}">
            <a href="<spring:url value="/admin/personInventory"/>">
                <button class="button-secondary pure-button-active pure-button"> Persons Inventory</button>
            </a>
        </c:if>
    </c:if>

    <c:if test="${empty pageContext.request.userPrincipal}">
        <a href="<c:url value="/persons"/>">
            <button class="button-secondary pure-button-active pure-button"> Persons List</button>
        </a>
    </c:if>


</div>

<%@include file="/WEB-INF/pages/template/footer.jsp" %>


