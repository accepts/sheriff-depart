<%@include file="/WEB-INF/pages/template/header.jsp" %>

<div class="container-wrapper">
  <div class="container col-md-7">
    <div id="login-box">
      <h2>Login with Username and Password</h2>

      <c:if test="${not empty msg}">
        <div class="msg">${msg}</div>
      </c:if>

      <form name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">

        <c:if test="${not empty error}">
          <div class="error" style="color: darkred">${error}</div>
        </c:if>

        <div class="form-group">
          <label for="username">User: </label>
          <input type="text" id="username" name="username" class="form-control" value="admin"/>
        </div>
        <div class="form-group">
          <label for="password">Password: </label>
          <input type="password" id="password" name="password" class="form-control" value="admin"/>
        </div>

        <input type="submit" value="LogIn" class="btn-success"/>

        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
      </form>
    </div>
  </div>
</div>

<%@include file="/WEB-INF/pages/template/footer.jsp" %>

