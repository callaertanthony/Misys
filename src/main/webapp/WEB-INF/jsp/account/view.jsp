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
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Cart - Misys</title>
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
<jsp:include page="../header.jsp" />

<section id="account_view">
  <sec:authentication property="principal.user" var="userConnected" />
  <div class="container">
    <div class="row">
      <div class="col-lg-4">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h1 class="panel-title">General</h1>
          </div>
          <div class="panel-body">
            <h3>First name</h3>
            <p>${userConnected.firstName}</p>
            <h3>Last name</h3>
            <p>${userConnected.lastName}</p>
            <h3>E-mail</h3>
            <p>${userConnected.email}</p>
            <h3>Gender</h3>
            <p>${userConnected.gender}</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h3 class="panel-title">Address</h3>
          </div>
          <div class="panel-body">

          </div>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h3 class="panel-title">Payment</h3>
          </div>
          <div class="panel-body">

          </div>
        </div>
      </div>
    </div>
  </div>
</section> <!--/#cart_items-->


<!-- INCLUDE FOOTER -->
<jsp:include page="../footer.jsp" />
</body>