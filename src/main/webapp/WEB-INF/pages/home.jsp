
<%@include file="/WEB-INF/pages/template/header.jsp"%>


<div class="header">
    <h1>Tween Peaks Sheriff Department</h1>

    <h2>Police department project with private crud-area</h2>
</div>

<div class="content">
    <h2 class="content-subhead">What technology I would like to implement in this project?</h2>

    <p>
        The aim of this project is study and mounted on practice java web-technologies and next frameworks:
    </p>
    Back-end:
    <ul>
    <li> <code>Spring, Spring Web-MVC, Spring Security, Spring ORM, Maven, LogBack with slf4j, Apache commons (for file upload);</code> </li>
    <li> <code> Database: PostgreSQL, Hibernate (+ Validator);</code> </li>
    </ul>
        Front-end:
    <ul>
        <li><code>Yahoo PureCSS, FontAwesome icons.</code></li>
        <li><code>JSP pages with JSTL and Spring Tags library</code></li>
        <li><code>jQuery (DataTables plugin)</code></li>
   </ul>




    <h2 class="content-subhead">Let's look on site-map in brief: </h2>

    <p>
        In this project, I created two basic entities that bounded to each other: cars and persons.
        Correspondingly, an administrator can:
    </p>
    <ul>
        <li>View detailed information about a person\car</li>
        <li>Added person\car</li>
        <li>Edit the person\car</li>
        <li>Delete the person\car</li>
        <li>Assign specific persons for corresponding car</li>
    </ul>




    <h2 class="content-subhead">Ignorance about Tween Peaks?</h2>

    <div class="pure-g">
        <div class="pure-u-1-4">
            <img class="pure-img-responsive" src="<c:url value="/resources/images/tp-forest.jpg" />"
                 alt="Peyto Lake">
        </div>
        <div class="pure-u-1-4">
            <img class="pure-img-responsive" src="<c:url value="/resources/images/tp-welcome.jpg" />"
                 alt="Train">
        </div>
        <div class="pure-u-1-4">
            <img class="pure-img-responsive" src="<c:url value="/resources/images/tp-lora.jpg" />"
                 alt="T-Shirt Store">
        </div>
        <div class="pure-u-1-4">
            <img class="pure-img-responsive" src="<c:url value="/resources/images/tp-police.jpg" />"
                 alt="Mountain">
        </div>
    </div>


    <p style="font-style: italic">
        Twin Peaks is an American television serial drama created by Mark Frost and David Lynch.
        Its pilot episode was broadcast on April 8, 1990 on ABC. Seven more episodes were produced, and the series was renewed for a second season that aired until June 10, 1991. Short begining plot:
        In 1989, logger Pete Martell discovers a naked corpse wrapped in plastic on the bank of a river outside the town of Twin Peaks, Washington. When Sheriff Harry S. Truman, his deputies, and Dr. Will Hayward arrive, the body is identified as homecoming queen Laura Palmer. A badly injured second girl, Ronette Pulaski, is discovered in a fugue state.
        FBI Special Agent Dale Cooper is called in to investigate. Cooper's initial examination of Laura's body reveals a tiny typed letter "R" inserted under her fingernail. Cooper informs the community that Laura's death matches the signature of a killer who murdered another girl in southwestern Washington the previous year, and that evidence indicates the killer lives in Twin Peaks.
        The authorities discover that Laura has been living a double life.

    </p>
</div>






<%@include file="/WEB-INF/pages/template/footer.jsp"%>




<%--
        &lt;%&ndash;<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">&ndash;%&gt;
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
                    <a href="<c:url value="/admin/personInventory"/>">
                    <img src="resources/images/sheriff.jpg" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
                    </a>
                    <h4>Person's</h4>
                    <span class="text-muted">Information about particular person with Edit option</span>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <a href="<c:url value="/admin/carPersonInventory"/>">
                    <img src="resources/images/car.jpg" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
                    </a>
                    <h4>Car personal</h4>
                    <span class="text-muted">Edit personal of particular patrol Car</span>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <a href="<c:url value="/admin/carInventory"/>">
                    <img src="resources/images/mechanic.jpg" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
                    </a>
                    <h4>Car</h4>
                    <span class="text-muted">Mechanic department: change car characteristic</span>
                </div>
            </div>
--%>
