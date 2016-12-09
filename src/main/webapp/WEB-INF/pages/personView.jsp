<%@include file="/WEB-INF/pages/template/header.jsp"%>


<div class="page-header">
    <h1>Officer detail</h1>
    <p class="lead">Detail person information.</p>
</div>

<div class="container col-md-10">

    <div class="row table-bordered">
        <div class="col-md-6">
            <img src="<c:url value="/resources/photo_person/${person.personId}.png" /> " alt="image"/>
        </div>

        <div class="col-md-4">
            <h3>${person.firstName} ${person.lastName}</h3>
            <p style="color: #398439">${person.rank}</p>
            <strong>Age:</strong>
                <p>${person.age}</p>
            <strong>Characteristic</strong>:
                <p style="color: #398439">${person.characteristic}</p>
            <strong>Is in car:</strong>
                <p>${person.inCar}</p>
        </div>
    </div>

    <a href="<c:url value="/persons"/>"> Person list </a>>
</div>

<%@include file="/WEB-INF/pages/template/footer.jsp"%>

