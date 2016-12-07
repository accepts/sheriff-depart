<%@include file="/WEB-INF/pages/template/header.jsp" %>

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
                <td>${person1.rank}</td>
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
                <td>${person2.rank}</td>
                <td>${person2.inCar}</td>
            </tr>
        </table>
<%--
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

        -----------Persons in car -------------- <br/>

        <table BORDER>
            <thead>
            <tr>
                <th>Fist Name</th>
                <th>Last Name</th>
                <th>Range</th>
            </tr>
            </thead>
            <c:forEach items="${patrolCar.personsInCar}" var="personsInCar">
                <tr>
                    <td>${personsInCar.firstName}</td>
                    <td>${personsInCar.lastName}</td>
                    <td>${personsInCar.rank}</td>
                </tr>
            </c:forEach>
        </table>
        <br/>
        <br/>

        -----------FINAL table -------------- <br/>


        <table BORDER>
            <tr>
                <td>${patrolCar.name}</td>
                <td rowspan="4">

                    <table BORDER>
                        <c:forEach items="${patrolCar.personsInCar}" var="personsInCar">
                            <tr>
                                <td rowspan="3">NO_PERSON_PHOTO</td>
                                <td>First name:</td>
                                <td>${personsInCar.firstName}</td>
                            </tr>
                            <tr>
                                <td>Last name:</td>
                                <td>${personsInCar.lastName}</td>
                            </tr>
                            <tr>
                                <td>Range:</td>
                                <td>${personsInCar.rank}</td>
                            </tr>
                        </c:forEach>
                    </table>

                </td>
            </tr>
            <tr>
                <td>Car capacity: ${patrolCar.carCapacity}</td>
            </tr>
            <tr>
                <td>NO_CAR_PHOTO</td>
            </tr>
            <tr>
                <td>${patrolCar.description}</td>
            </tr>
        </table>

        ---- person table --------

        <table BORDER>
            <c:forEach items="${patrolCar.personsInCar}" var="personsInCar">
                <tr>
                    <td rowspan="3">NO_PERSON_PHOTO</td>
                    <td>First name:</td>
                    <td>${personsInCar.firstName}</td>
                </tr>
                <tr>
                    <td>Last name:</td>
                    <td>${personsInCar.lastName}</td>
                </tr>
                <tr>
                    <td>Range:</td>
                    <td>${personsInCar.rank}</td>
                </tr>
            </c:forEach>
        </table>--%>


        <br/><br/><br/>

        <h4>--------------------------</h4>
        <a href="<c:url value="/"/>">Back to home page</a>


<%@include file="/WEB-INF/pages/template/footer.jsp" %>
