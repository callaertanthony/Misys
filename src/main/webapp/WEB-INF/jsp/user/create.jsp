<%--
  Created by IntelliJ IDEA.
  User: Guillaume
  Date: 3/12/2015
  Time: 9:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="/WEB-INF/c.tld" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="_csrf" content="${_csrf.token}"/>
    <!-- default header name is X-CSRF-TOKEN -->
    <meta name="_csrf_header" content="${_csrf.headerName}"/>
    <title>Product Details | Misys</title>

    <link href="<spring:url value="/assets/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<spring:url value="/assets/css/font-awesome.min.css"/>" rel="stylesheet">
    <link href="<spring:url value="/assets/css/prettyPhoto.css"/>" rel="stylesheet">
    <link href="<spring:url value="/assets/css/price-range.css"/>" rel="stylesheet">
    <link href="<spring:url value="/assets/css/animate.css"/>" rel="stylesheet">
    <link href="<spring:url value="/assets/css/main.css"/>" rel="stylesheet">
    <link href="<spring:url value="/assets/css/responsive.css"/>" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="<spring:url value="/assets/js/html5shiv.js"/>"></script>
    <script src="<spring:url value="/assets/js/respond.min.js"/>"></script>
    <![endif]-->
</head><!--/head-->
<body>
<!-- INCLUDE HEADER -->
<jsp:include page="../header.jsp" />

<section id="user_create">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <h1>Créer un utilisateur<br/></h1>

                <form:form name="form" action="" method="post" modelAttribute="form" class="form-horizontal">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    <div class="form-group">
                        <form:label for="email" path="email" class="col-sm-4 control-label">Email</form:label>
                        <div class="col-sm-8">
                            <form:input type="email" name="email" value="${form.email}" id="email" required="true" path="email" class="form-control"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <form:label for="password" path="password" class="col-sm-4 control-label">Mot de passe</form:label>
                        <div class="col-sm-8">
                            <form:input type="password" name="password" id="password" required="true" path="password" class="form-control"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <form:label for="passwordRepeated" path="passwordRepeated" class="col-sm-4 control-label">Confirmer</form:label>
                        <div class="col-sm-8">
                            <form:input type="password" name="passwordRepeated" id="passwordRepeated" required="true" path="passwordRepeated" class="form-control"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <form:label for="firstName" path="firstName" class="col-sm-4 control-label">Prénom</form:label>
                        <div class="col-sm-8">
                            <form:input type="text" name="firstName" id="firstName" required="true" path="firstName" class="form-control"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <form:label for="lastName" path="lastName" class="col-sm-4 control-label">Nom</form:label>
                        <div class="col-sm-8">
                            <form:input type="text" name="lastName" id="lastName" required="true" path="lastName" class="form-control"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <form:label for="gender" path="gender" class="col-sm-4 control-label">Sexe</form:label>
                        <div class="col-sm-8">
                            <form:select name="gender" id="gender" required="true" path="gender"  class="form-control">
                                <form:option value="MAN">Homme</form:option>
                                <form:option value="WOMAN">Femme</form:option>
                            </form:select>
                        </div>
                    </div>
                    <div class="form-group">
                        <form:label for="role" path="role" class="col-sm-4 control-label">Role</form:label>
                        <div class="col-sm-8">
                            <form:select name="role" id="role" required="true" path="role"  class="form-control">
                                <form:option value="USER">USER</form:option>
                                <form:option value="ADMIN">ADMIN</form:option>
                            </form:select>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <form:errors/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-warning btn-lg">Créer le compte</button>
                        </div>
                    </div>
                </form:form>
            </div><!-- /col-lg-6 -->

        </div><!-- /row -->
    </div>
</section>

<!-- INCLUDE FOOTER -->
<jsp:include page="../footer.jsp" />

</body>
</html>