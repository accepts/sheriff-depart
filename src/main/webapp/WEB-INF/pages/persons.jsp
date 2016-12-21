<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/pages/template/header.jsp" %>

<script>
    $(document).ready(function () {
        var searchCondition = '${searchCondition}';
        $('.table').DataTable({
            "lengthMenu": [[1, 2, 3, 5, 10, -1], [1, 2, 3, 5, 10, "All"]],
            "oSearch": {"sSearch": searchCondition}
        });
    });
</script>


<div class="page-header">
    <h1>List of all officer</h1>

    <p class="lead">Here is list of all person in department.</p>
</div>

<div class="container col-md-10">


    <c:forEach items="${carList}" var="car" varStatus="carNumber">
        <table border="1px">
            <thead>
            <tr>
                <th>${carNumber.count} ) Car info</th>
                <th>Persons info</th>
            </tr>
            </thead>


            <tr>
                <td>

                    <p><img src="<c:url value="/resources/photo_cars/${car.carId}.png" /> " alt="image" style="width: 80%; height: auto"/> </p>

                    <p>${car.name}</p>
                    <p>${car.carCapacity}</p>
                    <p>${car.description}</p>
                </td>

                <td>
                    <br/>

                    <c:forEach items="${car.personsInCar}" var="person" varStatus="personNumber">
                        <table border="1px">
                            <thead>
                            <tr>
                                <th>Nomer</th>
                                <th>PhotoPerson</th>
                                <th>PersonInformation</th>
                            </tr>
                            </thead>

                            <tr>
                                <td>${personNumber.count}</td>
                                <td>
                                    <p><img src="<c:url value="/resources/photo_person/${person.personId}.png" /> " alt="image" style="width: 30%; height: auto"/> </p>
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


    <%--

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

    --%>


    <hr/>


    <hr/>


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
        <c:forEach items="${personList}" var="person">
            <tr>
                <c:if test="${person.inCar ne false}">

                    <td><img src="<c:url value="/resources/photo_person/${person.personId}.png" /> " alt="image"
                             style="width: 30%; height: auto"/></td>
                    <td>${person.firstName}</td>
                    <td>${person.lastName}</td>
                    <td>${person.rank}</td>
                    <td>${person.inCar}</td>
                    <td><a href="<spring:url value="/personView/${person.personId}"/> "><span
                            class="glyphicon glyphicon-info-sign"></span></a></td>

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
        <c:forEach items="${personList}" var="person">
            <tr>
                <c:if test="${person.inCar ne true}">

                    <td><img src="<c:url value="/resources/photo_person/${person.personId}.png" /> " alt="image"
                             style="width: 30%; height: auto"/></td>
                    <td>${person.firstName}</td>
                    <td>${person.lastName}</td>
                    <td>${person.rank}</td>
                    <td>${person.inCar}</td>
                    <td><a href="<spring:url value="/personView/${person.personId}"/> "><span
                            class="glyphicon glyphicon-info-sign"></span></a></td>

                </c:if>
            </tr>
        </c:forEach>
    </table>


</div>

<%@include file="/WEB-INF/pages/template/footer.jsp" %>