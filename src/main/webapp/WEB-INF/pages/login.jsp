<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link href="<c:url value="/resources/css/login.css" />" rel="stylesheet">

</head>
<body>

<div class="inner-container">

    <c:if test="${not empty msg}">
        <div class="msg">${msg}</div>
    </c:if>

    <form name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">

        <div class="box">

            <h1>Login</h1>

            <c:if test="${not empty error}">
                <div class="error" style="color: #c9302c; text-align: center">${error}</div>
            </c:if>


            <input type="text" id="username" name="username" class="form-control" value="admin" placeholder="Username"/>
            <input type="password" id="password" name="password" class="form-control" value="admin"
                   placeholder="Password"/>


            <button type="submit" value="LogIn"> Login</button>

            <a href="<c:url value="/"/>">
                <button type="button" id="go-home-btn">Home</button>
            </a>

            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </div>

    </form>

</div>


</body>
</html>

