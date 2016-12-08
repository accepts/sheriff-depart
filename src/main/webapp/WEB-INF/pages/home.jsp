
<%@include file="/WEB-INF/pages/template/header.jsp"%>


        <%--<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">--%>
            <h1 class="page-header">Police Board</h1>


            <div class="row placeholders">
                <div class="col-xs-6 col-sm-3 placeholder">
                    <a href="<c:url value="/persons"/>">
                    <img src="resources/images/dispatcher.jpg" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
                    </a>
                        <h4>Dispatcher</h4>
                    <span class="text-muted">Board of all personal on patrol car and moving on foot.</span>

                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img src="resources/images/sheriff.jpg" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
                    <h4>Person's</h4>
                    <span class="text-muted">Information about particular person with Edit option</span>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img src="resources/images/car.jpg" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
                    <h4>Car personal</h4>
                    <span class="text-muted">Edit personal of particular patrol Car</span>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img src="resources/images/mechanic.jpg" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
                    <h4>Car</h4>
                    <span class="text-muted">Mechanic department: change car characteristic</span>
                </div>
            </div>






<%@include file="/WEB-INF/pages/template/footer.jsp"%>




