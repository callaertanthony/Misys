<%--
  Created by IntelliJ IDEA.
  User: Guillaume
  Date: 12/04/2015
  Time: 22:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <meta name="_csrf" content="${_csrf.token}"/>
  <!-- default header name is X-CSRF-TOKEN -->
  <meta name="_csrf_header" content="${_csrf.headerName}"/>
  <title><spring:message code="navbar.cart"/> - Misys</title>
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
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
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head><!--/head-->
<body>
<!-- INCLUDE HEADER -->
<jsp:include page="../../header.jsp" />

<section id="address">
  <div class="container">
    <div class="row">
      <div class="col-lg-6">
        <form:form commandName="addressForm" action="" name="addressForm" method="POST">
          <form:input path="firstName" type="text" required="true" class="form-control" placeholder="first name"/>
          <form:input path="lastName" type="text" required="true" class="form-control" placeholder="last name"/>
          <form:input path="street" type="text" required="true" class="form-control" placeholder="street"/>
          <form:input path="city" type="text" required="true" class="form-control" placeholder="city"/>
          <form:input path="zipcode" type="text" required="true" class="form-control" placeholder="zip code"/>
          <form:input path="country" type="text" required="true" class="form-control" placeholder="country"/>

          <button type="submit" class="btn btn-default">Submit</button>
        </form:form>
      </div>
      <div class="col-lg-6"></div>
    </div>
  </div>
</section>

<!-- INCLUDE FOOTER -->
<jsp:include page="../../footer.jsp" />
</body>