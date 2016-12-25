<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/pages/template/header.jsp" %>

<script>
    $(document).ready(function () {
        var searchCondition = '${searchCondition}';
        $('.pure-table-all').DataTable({
            "lengthMenu": [[1, 2, 3, 5, 10, -1], [1, 2, 3, 5, 10, "All"]],
            "oSearch": {"sSearch": searchCondition}
        });
    });
</script>



    <div class="header">
        <h1>Cars - Persons tables</h1>

        <h2>List of all Department personal with their status (on car or on foot)</h2>
    </div>

    <div class="content">


    <c:forEach items="${carList}" var="car" varStatus="carNumber">
        <table class="pure-table pure-table-bordered">
            <thead>
            <tr>
                <th class="table-border-car-person">${carNumber.count} ) Car info</th>
                <th class="table-border-car-person">Persons info</th>
            </tr>
            </thead>

            <tr>
                <td>
                    <p><img src="<c:url value="/resources/photo_cars/${car.carId}.png" /> " alt="image" style="width: 80%; height: auto"/> </p>
                    <p>Car name: </p><p class="name-of-entity">${car.name}</p>
                    <p>Car capacity: </p><p class="name-of-entity">${car.carCapacity}</p>
                    <p>Car description: </p><p class="name-of-entity">${car.description}</p>
                </td>

                <td>
                    <br/>

                    <c:forEach items="${car.personsInCar}" var="person" varStatus="personNumber">
                        <table class="pure-table pure-table-bordered">
                            <thead>
                            <tr>
                                <th>Number</th>
                                <th>Photo</th>
                                <th>Information</th>
                            </tr>
                            </thead>

                            <tr>
                                <td>${personNumber.count}</td>
                                <td>
                                    <p><img src="<c:url value="/resources/photo_person/${person.personId}.png" /> " alt="image"  style="width: 60%; height: auto" /> </p>
                                </td>

                                <td>
                                    <p>${person.firstName}</p>
                                    <p>${person.lastName}</p>
                                    <p>${person.rank}</p>
                                </td>

                            </tr>
                        </table>
                        <br/>
                    </c:forEach>

                </td>
            </tr>

        </table>
        <br/>
    </c:forEach>



      <table class="pure-table pure-table-bordered pure-table-all">
        <thead>
        <tr>
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
            <td><img class="pure-pic-table" src="<c:url value="/resources/photo_person/${person.personId}.png" /> " alt="image" /> </td>
            <td>${person.firstName}</td>
            <td>${person.lastName}</td>
            <td>${person.rank}</td>
            <td>${person.inCar}</td>
            <td><a href="<spring:url value="/personView/${person.personId}"/> " ><span class="glyphicon glyphicon-info-sign"></span></a></td>
          </tr>
        </c:forEach>
      </table>



<h2 class="table-title">Table of all policeman</h2>


    <table class="pure-table pure-table-bordered">
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
                <c:if test="${person.inCar ne false}">
                    <td><img class="pure-pic-table" src="<c:url value="/resources/photo_person/${person.personId}.png" /> " alt="image" /></td>
                    <td>${person.firstName}</td>
                    <td>${person.lastName}</td>
                    <td>${person.rank}</td>
                    <td>${person.inCar}</td>
                    <td><a href="<spring:url value="/personView/${person.personId}"/> "><i class="fa fa-id-card fa-2x"></i></a></td>

                </c:if>
            </tr>
        </c:forEach>


        <tr class="pure-table pure-table-bordered" >
            <th colspan="6">Persons on foot</th>
        </tr>

        <tr class="bg-warning">
            <th>Photo</th>
            <th>First name</th>
            <th>Last Name</th>
            <th>Rank</th>
            <th>In Car</th>
            <th>Detail</th>
        </tr>
        <c:forEach items="${personList}" var="person">
            <tr>
                <c:if test="${person.inCar ne true}">
                    <td><img class="pure-pic-table" src="<c:url value="/resources/photo_person/${person.personId}.png" /> " alt="image" /></td>
                    <td>${person.firstName}</td>
                    <td>${person.lastName}</td>
                    <td>${person.rank}</td>
                    <td>${person.inCar}</td>
                    <td><a href="<spring:url value="/personView/${person.personId}"/> ">
                        <i class="fa fa-id-card fa-2x"></i></a></td>
                </c:if>
            </tr>
        </c:forEach>

    </table>

</div>

<%@include file="/WEB-INF/pages/template/footer.jsp" %>


















<%--
    <h2>Persons on foot</h2>

   <table class="pure-table pure-table-bordered">
        <thead>
        <tr class="bg-warning">
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
                <c:if test="${person.inCar ne true}">
                    <td><img class="pure-pic-table" src="<c:url value="/resources/photo_person/${person.personId}.png" /> " alt="image" /></td>
                    <td>${person.firstName}</td>
                    <td>${person.lastName}</td>
                    <td>${person.rank}</td>
                    <td>${person.inCar}</td>
                    <td><a href="<spring:url value="/personView/${person.personId}"/> ">
                        <i class="fa fa-id-card fa-2x"></i></a></td>
                </c:if>
            </tr>
        </c:forEach>
    </table>--%>
