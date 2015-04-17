<%--
  Created by IntelliJ IDEA.
  User: Guillaume
  Date: 13/04/2015
  Time: 17:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="/WEB-INF/c.tld" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <title><spring:message code="create.productDetails"/> | Misys</title>

  <link href="<spring:url value="/assets/css/bootstrap.min.css"/>" rel="stylesheet">
  <link href="<spring:url value="/assets/css/font-awesome.min.css"/>" rel="stylesheet">
  <link href="<spring:url value="/assets/css/prettyPhoto.css"/>" rel="stylesheet">
  <link href="<spring:url value="/assets/css/price-range.css"/>" rel="stylesheet">
  <link href="<spring:url value="/assets/css/animate.css"/>" rel="stylesheet">
  <link href="<spring:url value="/assets/css/main.css"/>" rel="stylesheet">
  <link href="<spring:url value="/assets/css/responsive.css"/>" rel="stylesheet">
  <!--[if lt IE 9]>
  <script src="${pageContext.request.contextPath}/assets/js/html5shiv.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/respond.min.js"></script>
  <![endif]-->
</head><!--/head-->
<body>
<!-- INCLUDE HEADER -->
<jsp:include page="../header.jsp" />

<section id="form">
  <div class="container">
    <div class="row">
      <div class="col-sm-4"></div>
      <div class="col-sm-4">
        <div class="signup-form"><!--sign up form-->
          <h2><spring:message code="create.newUserSignUp"/></h2>
          <form:form name="form" action="" method="post" modelAttribute="form">
            <form:errors/>

              <spring:message code="create.email" var="email"/>
              <spring:message code="create.password" var="password"/>
              <spring:message code="create.repeatpw" var="repeat"/>
              <spring:message code="view.firstName" var="firstname"/>
              <spring:message code="view.lastName" var="lastname"/>
              <spring:message code="view.gender" var="gender"/>

             <form:input type="email" name="email" value="${form.email}" id="email" required="true" path="email" class="form-control" placeholder="${email}"/>
            <form:input type="password" name="password" id="password" required="true" path="password" class="form-control" placeholder="${password}"/>
            <form:input type="password" name="passwordRepeated" id="passwordRepeated" required="true" path="passwordRepeated" class="form-control" placeholder="${repeat}"/>
            <form:input type="text" name="firstName" id="firstName" required="true" path="firstName" class="form-control" placeholder="${firstname}"/>
            <form:input type="text" name="lastName" id="lastName" required="true" path="lastName" class="form-control" placeholder="${lastname}"/>
            <form:select name="gender" id="gender" required="true" path="gender"  class="form-control" placeholder="${gender}">/
              <%--
                          <form:input type="email" name="email" value="${form.email}" id="email" required="true" path="email" class="form-control" placeholder="E-mail"/>
                          <form:input type="password" name="password" id="password" required="true" path="password" class="form-control" placeholder="Password"/>
                          <form:input type="password" name="passwordRepeated" id="passwordRepeated" required="true" path="passwordRepeated" class="form-control" placeholder="Repeat password"/>
                          <form:input type="text" name="firstName" id="firstName" required="true" path="firstName" class="form-control" placeholder="First name"/>
                          <form:input type="text" name="lastName" id="lastName" required="true" path="lastName" class="form-control" placeholder="Last Name"/>
                          <form:select name="gender" id="gender" required="true" path="gender"  class="form-control" placeholder="Gender">--%>
                            <spring:message code="create.man" var="man"/>
                            <spring:message code="create.woman" var="woman"/>
                          <form:option value="${man}"/>
                          <form:option value="${woman}"/>
                        </form:select>
                        <button type="submit" class="btn btn-default"><spring:message code="login.button"/></button>
                      </form:form>
                    </div><!--/sign up form-->
                  </div>
                  <div class="col-sm-4"></div>
                </div>
              </div>
            </section>
            <!-- INCLUDE FOOTER -->
            <jsp:include page="../footer.jsp" />
            </body>
            </html>