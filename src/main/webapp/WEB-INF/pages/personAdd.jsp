<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/pages/template/header.jsp" %>


<div class="header">
    <h1>Add a new Officer</h1>

    <h2>Enter require information into corresponding fields .</h2>
</div>

<div class="content">
    <div class="form-style-2">
        <div class="form-style-2-heading">Provide your information</div>


        <form:form action="${pageContext.request.contextPath}/admin/personInventory/addPerson" method="post"
                   commandName="person"
                   enctype="multipart/form-data">


            <label for="name"><span>First Name <span class="required">*</span></span>
                <form:input path="firstName" id="name" class="input-field"/>
                <form:errors path="firstName" cssStyle="color: darkred"/>
            </label>


            <label for="lastname"><span>Last Name <span class="required">*</span></span>
                <form:input path="lastName" id="lastname" class="input-field"/>
                <form:errors path="lastName" cssStyle="color: darkred"/>
            </label>


            <label for="age"><span>Age: <span class="required">*</span></span>
                <form:input path="age" id="age" class="input-field"/>
                <form:errors path="age" cssStyle="color: darkred"/>
            </label>


            <label for="rank"><span>Rank</span>
                <form:select path="rank" class="select-field">
                    <form:options/>
                </form:select>
            </label>


            <label for="characteristic"><span>Characteristic:</span>
                <form:input path="characteristic" id="characteristic" class="input-field"/>
                <form:errors path="characteristic" cssStyle="color: darkred"/>
            </label>


            <label for="personImage"><span>Upload Picture:</span>
                <form:input id="personImage" path="personImage" type="file" class="input-field"/>
            </label>

            <label>
                <span>&nbsp;</span><input type="submit" value="Add Person"/>
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

