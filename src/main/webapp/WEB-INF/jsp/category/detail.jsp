<%--
  Created by IntelliJ IDEA.
  User: Guillaume
  Date: 17/04/2015
  Time: 12:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="/WEB-INF/c.tld" %>
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

<section>
    <div class="container">
        <div class="row">
            <!------------------------------------------------
                LEFT PANEL
             ------------------------------------------------>
            <div class="col-sm-3">
                <!-- INCLUDE MENU -->
                <jsp:include page="../menu.jsp" />
            </div>

            <!------------------------------------------------
                RIGHT PANEL
             ------------------------------------------------>
            <div class="col-sm-9 padding-right">
                <div class="features_items"><!--features_items-->
                    <h2 class="title text-center"><spring:message code="home.title"/></h2>
                    <c:forEach items="${products}" var="product">
                        <form id="productForm-${product.id}" name="productForm-${product.id}" class="productForm">
                            <input name="productId" type="hidden" value="${product.id}"/>
                            <div class="col-sm-4">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <a href="<spring:url value="/product/detail/${product.id}"/>">
                                                <img src="<spring:url value="${product.getPicturelink()}"/>" alt="${product.name} picture"/>
                                            </a>
                                            <h2>${product.price}€</h2>

                                            <p>${product.name}</p>
                                            <div>

                                                <label><spring:message code="wishlist.quantity"/>:</label>
                                                <input name="quantity" type="number" value="1" max="${product.stock.quantity}" min="1" form="productForm-${product.id}"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="choose">
                                        <ul class="nav nav-pills nav-stacked">
                                            <li>
                                                <button type="button" class="btn btn-default add-to-wishlist"
                                                        formaction="<spring:url value="/add-to-wishlist"/>" form="productForm-${product.id}">
                                                    <i class="glyphicon glyphicon-heart-empty"></i><spring:message code="detail.addWishlist"/>
                                                </button>
                                            </li>
                                            <li>
                                                <button type="button" class="btn btn-default add-to-cart"
                                                        formaction="<spring:url value="/add-to-cart"/>" form="productForm-${product.id}">
                                                    <i class="glyphicon glyphicon-shopping-cart"></i><spring:message code="wishlist.addtoCart"/>
                                                </button>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </c:forEach>
                </div><!--features_items-->
            </div>
        </div>
    </div>
</section>

<!-- INCLUDE FOOTER -->
<jsp:include page="../footer.jsp" />

</body>
</html>