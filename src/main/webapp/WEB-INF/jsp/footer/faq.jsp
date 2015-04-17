<%--
  Created by IntelliJ IDEA.
  User: Olivier
  Date: 15/04/2015
  Time: 19:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="/WEB-INF/c.tld" %>
<%@taglib prefix="fn" uri="/WEB-INF/fn.tld" %>
<%@taglib prefix="fmt" uri="/WEB-INF/fmt.tld" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>FAQ's | Misys</title>
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
</head>
<!--/head-->
<body>
<!-- INCLUDE HEADER -->
<jsp:include page="../header.jsp"/>

<
<div class="container">

    <div>
        <h1> <spring:message code="faq.faq"/></h1>

        <p><spring:message code="faq.response"/></p>

        <hr>


        <h2><spring:message code="faq.articleNorder"/></h2>
        <spring:message code="faq.howFindProduct"/><br>
        <i><spring:message code="faq.clickSearch"/><a href="<spring:url value="/product/search?searchInput="/>"> <spring:message code="faq.here"/></a>.</i><br><br>
        <spring:message code="faq.howCancelOrder"/><br>
        <i>Directement dans le <a href="<spring:url value="/shop/cart"/>"><spring:message code="navbar.cart"/></a>!</i><br><br>

        <h2>MP3</h2>
        <spring:message code="faq.howDownloadMP3"/><br>
        <i><spring:message code="faq.clickDownload"/></i><br><br>

        <h2><spring:message code="faq.payement"/></h2>
        <spring:message code="faq.payementAvailable"/><br>
        <i><spring:message code="faq.blueCardNPaypal"/></i><br><br>
        <spring:message code="faq.howModifyPayement"/><br>
        <i><spring:message code="faq.in"/><a href="<spring:url value="/account"/>"> <spring:message code="navbar.account"/></a>, <spring:message code="faq.inPayementSettings"/>".</i><br><br>

        <h2><spring:message code="faq.ourAccount"/></h2>
        <spring:message code="faq.howCreateAccount"/><br>
        <i><spring:message code="faq.clickOnlogin"/><a href="<spring:url value="/login"/>"> <spring:message code="faq.here"/></a>.</i><br><br>
        <spring:message code="faq.endSession"/><br>
        <i><spring:message code="faq.clickLogout"/></i><br><br>
        <spring:message code="faq.howChangeaccount"/><br>
        <i><spring:message code="faq.directely"/><a href="<spring:url value="/account"/>"> <spring:message code="navbar.account"/></a>.</i><br><br>
    </div>
</div>


<!-- INCLUDE FOOTER -->
<jsp:include page="../footer.jsp"/>
</body>
</html>
