<%--
  Created by IntelliJ IDEA.
  User: Guillaume
  Date: 17/04/2015
  Time: 13:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
<section id="cart_items">
    <div class="container">
        <h1>Order n°: ${order.id}</h1>
        <div id="table-cart" class="table-responsive cart_info">
            <table class="table table-condensed">
                <thead>
                <tr class="cart_menu">
                    <td class="image">Item</td>
                    <td class="description"></td>
                    <td class="price"><spring:message code="menu.price"/></td>
                    <td class="quantity"><spring:message code="wishlist.quantity"/></td>
                    <td class="quantity">Total</td>
                </tr>
                </thead>
                <tbody>
                <c:set var="total" scope="session" value="0"/>
                <c:choose>
                    <c:when test="${not empty order}">
                        <c:forEach items="${order.productsQuantity}" var="product">
                            <c:set var="total" scope="session" value="${total + (product.key.price * product.value)}"/>
                            <tr>
                                <form id="productForm-${product.key.id}" name="productForm-${product.key.id}" class="productForm">
                                    <input name="productId-${product.key.id}" type="hidden" value="${product.key.id}"/>
                                    <td class="cart_product">
                                        <a href=""><img src="<spring:url value="${product.key.getPicturelink()}"/>" alt="" class="cart_product_img"></a>
                                    </td>
                                    <td class="cart_description">
                                        <h4><a href="<spring:url value="/product/detail/${product.key.id}"/>}">${product.key.name}</a></h4>
                                        <p>Réf produit: ${product.key.reference}</p>
                                    </td>
                                    <td class="cart_price">
                                        <p>${product.key.price}</p>
                                    </td>
                                    <td class="cart_quantity">
                                        <p>${product.value}</p>
                                    </td>
                                    <td class="cart_total">
                                        <p class="cart_total_price"><fmt:formatNumber type="number" value="${product.key.price * product.value}"
                                                                                      minFractionDigits="2" maxFractionDigits="2"/> €</p>
                                    </td>
                                </form>
                            </tr>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <td>
                            <p>No order found.</p>
                        </td>
                    </c:otherwise>
                </c:choose>
                </tbody>
            </table>
        </div>
    </div>
</section> <!--/#cart_items-->
<section id="do_action">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <div class="total_area">
                    <ul>
                        <li><spring:message code="cart.cartSubTotal"/> <span><fmt:formatNumber type="number" value="${total}"
                                                                                               minFractionDigits="2" maxFractionDigits="2"/> €</span></li>
                        <li><spring:message code="cart.shippingCost"/> <span><spring:message code="cart.free"/></span></li>
                        <li>Total <span><fmt:formatNumber type="number" value="${total}"
                                                          minFractionDigits="2" maxFractionDigits="2"/> €</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- INCLUDE FOOTER -->
<jsp:include page="../../footer.jsp" />
</body>