<%--
  Created by IntelliJ IDEA.
  User: Guillaume
  Date: 3/12/2015
  Time: 2:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="/WEB-INF/c.tld" %>
<html>
<head>
    <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home | E-Shopper</title>
    <link href="${contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/css/font-awesome.min.css" rel="stylesheet">
    <link href="${contextPath}/css/prettyPhoto.css" rel="stylesheet">
    <link href="${contextPath}/css/price-range.css" rel="stylesheet">
    <link href="${contextPath}/css/animate.css" rel="stylesheet">
    <link href="${contextPath}/css/main.css" rel="stylesheet">
    <link href="${contextPath}/css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="${contextPath}/js/html5shiv.js"></script>
    <script src="${contextPath}/js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="images/ico/favicon.ico">
</head>
<body>
<div class="container text-center">
    <div class="logo-404">
        <a href="/"><img src="${contextPath}/images/home/logo.png" alt="" /></a>
    </div>
    <div class="content-404">
        <h1><b>OPPS!</b> An unexpected error occured.</h1>
        <p>Uh... So it looks like something is broken up here. :/</p>
        <h2><a href="/">Bring me back Home</a></h2>
    </div>
</div>


<script src="${contextPath}/js/jquery.js"></script>
<script src="${contextPath}/js/price-range.js"></script>
<script src="${contextPath}/js/jquery.scrollUp.min.js"></script>
<script src="${contextPath}/js/bootstrap.min.js"></script>
<script src="${contextPath}/js/jquery.prettyPhoto.js"></script>
<script src="${contextPath}/js/main.js"></script>
</body>
</html>

