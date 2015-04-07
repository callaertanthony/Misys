<%--
  Created by IntelliJ IDEA.
  User: Perrine
  Date: 20/03/2015
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="/WEB-INF/c.tld" %>
<%@taglib prefix="fn" uri="/WEB-INF/fn.tld" %>
<%@taglib prefix="fmt" uri="/WEB-INF/fmt.tld" %>
<html>
<head>
    <title>Search | Misys</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/prettyPhoto.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/price-range.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/main.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}/assets/js/html5shiv.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/respond.min.js"></script>
    <![endif]-->
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>
<body>
<!-- INCLUDE HEADER -->
<jsp:include page="../header.jsp"/>

<section>
    <div class="container">
        <div class="row">
            <!------------------------------------------------
                LEFT PANEL
             ------------------------------------------------>
            <div class="col-sm-3">
                <!-- INCLUDE MENU -->
                <jsp:include page="../dynamicMenu.jsp"/>
            </div>

            <!------------------------------------------------
                RIGHT PANEL
             ------------------------------------------------>
            <div class="col-sm-9 padding-right" id="resultContainer">
                <div id="noResult" style="display: none;">
                    <h3>Aucun résultat trouvé avec ces critères de recherche.</h3>
                </div>
                <c:forEach items="${products}" var="product">
                    <div class="col-sm-3 product-result">
                        <div class="product-image-wrapper">
                            <input type="hidden" id="productBrandId${product.id}" value="${product.brand.id}">
                            <input type="hidden" id="productPrice${product.id}" value="${product.price}">

                            <div class="single-products">
                                <div class="productinfo text-center">
                                    <a href="${pageContext.request.contextPath}/product/detail/${product.id}">
                                        <img src="${product.getPicturelink()}"
                                             alt="${product.name} picture"/>
                                    </a>

                                    <h2>${product.price}€</h2>

                                    <p>${product.name}</p>
                                    <label for="product-quantity${product.id}">Quantity:</label>
                                    <input id="product-quantity${product.id}" type="text" value="3"
                                           class="form-control"/>
                                    <button type="button" class="btn btn-default add-to-cart"><a
                                            href="cart/add/${product.id}"><i
                                            class="glyphicon glyphicon-shopping-cart"></i>Add to cart</a></button>
                                    <button type="button" class="btn btn-default add-to-wishlist"><a
                                            href="wishlist/add/${product.id}"><i
                                            class="glyphicon glyphicon-haert-empty"></i>Add to wishlist</a></button>
                                </div>

                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</section>

<!-- INCLUDE FOOTER -->
<jsp:include page="../footer.jsp"/>
<script src="${pageContext.request.contextPath}/assets/js/search.js"></script>
</body>
</html>
