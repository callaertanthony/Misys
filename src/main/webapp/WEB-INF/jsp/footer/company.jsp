<%--
  Created by IntelliJ IDEA.
  User: Olivier
  Date: 15/04/2015
  Time: 19:47
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
    <title>Company Information | Misys</title>
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

<div class="container">
    <h2>A propos de Misys</h2>

    <p><h3>Notre but</h3></p>
    <p>Diffuser de la musique !</p>
    <p><h3>Notre force</h3></p>
    <p>Toujours plus proches de vous !</p><br>
    <p>Misys est née de la volonté de proposer facilement  de la musique pour tous, et se veut comme un pilier de la distribution en ligne de musique sous mutliples formats. </p><br>

    <h2>N'hésitez-plus, prenez Misys !</h2>


</div>


<!-- INCLUDE FOOTER -->
<jsp:include page="../footer.jsp" />
</body>
</html>
