<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/pages/template/header.jsp" %>


<div class="header">
    <h1>Edit officer information</h1>

    <h2>Edit information into corresponding fields .</h2>
</div>

<div class="content">
    <div class="form-style-2">
        <div class="form-style-2-heading">Provide your information</div>

        <form:form action="${pageContext.request.contextPath}/admin/personInventory/editPerson/" method="post"
                   commandName="person"
                   enctype="multipart/form-data">

            <form:hidden path="personId" value="${person.personId}"/>


            <label for="name"><span>First Name <span class="required">*</span></span>
                <form:errors path="firstName" cssStyle="color: darkred"/>
                <form:input path="firstName" id="name" class="input-field" value="${person.firstName}"/>
            </label>


            <label for="lastname"><span>Last Name <span class="required">*</span></span>
                <form:errors path="lastName" cssStyle="color: darkred"/>
                <form:input path="lastName" id="lastname" class="input-field" value="${person.lastName}"/>
            </label>


            <label for="age"><span>Age: <span class="required">*</span></span>
                <form:errors path="age" cssStyle="color: darkred"/>
                <form:input path="age" id="age" class="input-field" value="${person.age}"/>
            </label>


            <label for="rank"><span>Rank</span>
                <form:select path="rank" class="select-field">
                    <form:options/>
                </form:select>
            </label>


            <label for="characteristic"><span>Characteristic:</span>
                <form:errors path="characteristic" cssStyle="color: darkred"/>
                <form:input path="characteristic" id="characteristic" class="input-field"
                            value="${person.characteristic}"/>
            </label>


            <label for="personImage"><span>Upload Picture:</span>
                <form:input id="personImage" path="personImage" type="file" class="input-field"/>
            </label>

            <label>
                <span>&nbsp;</span><input type="submit" value="Edit Person"/>
            </label>

            <label>
                <br/>
                <br/>

                <div class="form-style-2-heading"></div>
            </label>

            <label style="text-align: right">
                <a href="<c:url value="/admin/personInventory" />">
                    <button type="button" id="go-home-btn"><i class="fa fa-reply fa-1x" style="color: white"></i> Back
                        to Inventory
                    </button>
                </a>
            </label>

        </form:form>


    </div>
</div>

<%@include file="/WEB-INF/pages/template/footer.jsp" %>

