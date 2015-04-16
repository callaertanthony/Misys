<%--
  Created by IntelliJ IDEA.
  User: Guillaume
  Date: 3/11/2015
  Time: 6:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
                    <div class="btn-group">
                        <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                            <span class="glyphicon glyphicon-flag"></span>  <spring:message code="navbar.language"/>
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                            <li><a href="?lang=fr">FR</a></li>
                            <li><a href="?lang=en">UK</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-7">
                    <div class="shop-menu pull-right">
                        <ul class="nav navbar-nav">
                            <li><a href="<spring:url value="/account"/>"><i class="glyphicon glyphicon-user"></i> <spring:message code="navbar.account"/></a></li>
                            <li><a href="<spring:url value="/wishlist"/>"><i class="glyphicon glyphicon-heart-empty"></i> <spring:message code="navbar.wishlist"/></a></li>
                            <li><a href="<spring:url value="/shop/cart"/>"><i class="glyphicon glyphicon-shopping-cart"></i> <spring:message code="navbar.cart"/></a></li>
                            <sec:authorize access="isAuthenticated()">
                                <li><a href="<spring:url value="/account/view"/>"><i class="glyphicon glyphicon-user"></i> Compte</a></li>
                                <li>
                                    <form:form action="${logoutUrl}" method="post" class="form-inline left">
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"  class="form-control"/>
                                        <button type="submit" class="submitLink">Se déconnecter</button>
                                    </form:form>
                                </li>
                            </sec:authorize>
                            <sec:authorize access="!isAuthenticated()">
                                <li><a href="<spring:url value="/login"/>"><i class="glyphicon glyphicon-log-in"></i> <spring:message code="navbar.login"/></a></li>
                                <li><a href="<spring:url value="/account/create"/>"><i class="glyphicon glyphicon-pencil"></i> <spring:message code="navbar.register"/></a></li>
                            </sec:authorize>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header-middle-->
    <div class="header-bottom"><!--header-bottom-->
        <div class="container">
            <div class="row">
                <div class="col-sm-9">
                    <div class="navbar-header">
                        <!-- TODO DO BREADCUMB WILL FILL WELL HERE? -->
                    </div>
                </div>
                <div class="col-sm-3">
                    <form action="${pageContext.request.contextPath}/product/search" method="get">
                        <div class="input-group">
                            <div class="col-sm-8">
                                <input type="text" name="searchInput" id="searchInput" class="form-control pull-right"
                                       placeholder="<spring:message code="navbar.search"/>" style="border: 0px;">
                            </div>
                            <div class="col-sm-4">
                                <button type="submit" id="searchBtn" class="btn btn-default">
                                <span class="glyphicon glyphicon-search"></span>
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</header><!--/header-->
<!-- INCLUDE POPUPS -->
<jsp:include page="product/popup-success.jsp" />
<jsp:include page="product/popup-failed.jsp" />
