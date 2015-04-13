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
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Product Details | Misys</title>

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
<jsp:include page="header.jsp" />

<section>
    <div class="container">
        <div class="row">
            <!-- INCLUDE SLIDER -->
            <jsp:include page="slider.jsp" />

            <!------------------------------------------------
                LEFT PANEL
             ------------------------------------------------>
            <div class="col-sm-3">
                <!-- INCLUDE MENU -->
                <jsp:include page="menu.jsp" />
            </div>

            <!------------------------------------------------
                RIGHT PANEL
             ------------------------------------------------>
            <div class="col-sm-9 padding-right">
                <div class="features_items"><!--features_items-->
                    <h2 class="title text-center">Les produits du moment</h2>
                    <c:forEach items="${products}" var="product">
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
                                            <label>Quantity:</label>
                                            <input type="number" value="1" max="${product.stock.quantity}" min="0" />
                                        </div>
                                    </div>
                                </div>

                                <div class="choose">
                                    <ul class="nav nav-pills nav-stacked">
                                        <li><button type="button" class="btn btn-default add-to-wishlist-btn"><i class="glyphicon glyphicon-heart-empty"></i>Liste de souhaits</button></li>
                                        <li><button type="button" class="btn btn-default add-to-cart-btn"><i class="glyphicon glyphicon-shopping-cart"></i>Ajouter au panier</button></li>
                                    </ul>
                                </div>

                            </div>
                        </div>
                    </c:forEach>
                </div><!--features_items-->

                <!--category-tab-->
                <div class="category-tab">
                    <div class="col-sm-12">
                        <ul class="nav nav-tabs menu">
                            <li class="active"><a href="#catdvd" data-toggle="tab">DVD</a></li>
                            <li><a href="#catbluray" data-toggle="tab">Blu-Ray</a></li>
                            <li><a href="#catvinyl" data-toggle="tab">Vinyle</a></li>
                            <li><a href="#catcd" data-toggle="tab">CD</a></li>
                            <li><a href="#catvod" data-toggle="tab">VOD</a></li>
                        </ul>
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane fade active in" id="catdvd" >
                            <c:forEach items="${products}" var="product">
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
                                                    <label>Quantity:</label>
                                                    <input type="number" value="1" max="${product.stock.quantity}" min="0" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="choose">
                                            <ul class="nav nav-pills nav-justified">
                                                <li><button type="button" class="btn btn-default add-to-wishlist-btn"><i class="glyphicon glyphicon-heart-empty"></i>Add to wishlist</button></li>
                                                <li><button type="button" class="btn btn-default add-to-cart-btn"><i class="glyphicon glyphicon-shopping-cart"></i>Add to cart</button></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>

                        <div class="tab-pane fade" id="catvinyle" >
                        </div>

                        <div class="tab-pane fade" id="catcd" >
                        </div>

                        <div class="tab-pane fade" id="catvod" >
                        </div>

                    </div>
                </div><!--/category-tab-->
            </div>
        </div>
    </div>
</section>

<!-- INCLUDE FOOTER -->
<jsp:include page="footer.jsp" />

</body>
</html>