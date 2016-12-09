<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/pages/template/header.jsp"%>


<div class="page-header">
  <h1>Admin page</h1>
  <p>Add some product</p>

  <c:if test="${pageContext.request.userPrincipal.name != null }">
    <h2>
      Welcome: ${pageContext.request.userPrincipal.name} <br/>
      <a href="<c:url value="/j_spring_security_logout"/>  " class="btn btn-danger" > Logout</a>
    </h2>
  </c:if>


</div>



<div class="container col-md-10">

  <h3>
    <a href="<c:url value="/admin/personInventory"/> " >Person inventory </a>
  </h3>




</div>

<%@include file="/WEB-INF/pages/template/footer.jsp"%>