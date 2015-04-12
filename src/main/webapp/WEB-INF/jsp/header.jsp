<%--
  Created by IntelliJ IDEA.
  User: Guillaume
  Date: 3/11/2015
  Time: 6:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<header id="header"><!--header-->
    <div class="header-middle"><!--header-middle-->
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="logo pull-left">
                        <a href="<spring:url value="/"/>">
                            <img src="${pageContext.request.contextPath}/assets/images/home/logo.png"
                                                  alt=""/></a>
                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="shop-menu pull-right">
                        <ul class="nav navbar-nav">
                            <li><a href="<spring:url value="/account"/>"><i class="glyphicon glyphicon-user"></i> Compte</a></li>
                            <li><a href="<spring:url value="/whishlist"/>"><i class="glyphicon glyphicon-heart-empty"></i> Liste d'envies</a></li>
                            <li><a href="<spring:url value="/checkou"/>t"><i class="glyphicon glyphicon-shopping-cart"></i> Panier</a></li>
                            <li><a href="<spring:url value="/login"/>"><i class="glyphicon glyphicon-log-in"></i> Se connecter</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header-middle-->
</header><!--/header-->
