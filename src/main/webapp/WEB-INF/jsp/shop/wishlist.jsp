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



<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="_csrf" content="${_csrf.token}"/>
    <!-- default header name is X-CSRF-TOKEN -->
    <meta name="_csrf_header" content="${_csrf.headerName}"/>
    <title>Wishlist - Misys</title>
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

<section id="cart_items">
    <div class="container">
        <div data-alerts="alerts" data-fade="10000"></div>
        <div id="table-wishlist" class="table-responsive cart_info">
            <table class="table table-condensed">
                <thead>
                <tr class="cart_menu">
                    <td class="image">Item</td>
                    <td class="description"></td>
                    <td class="price"><spring:message code="menu.price"/></td>
                    <td></td>
                </tr>
                </thead>
                <tbody>
                <c:choose>
                    <c:when test="${not empty products}">
                        <c:forEach items="${products}" var="product">
                            <tr>
                                <form id="productForm-${product.id}" name="productForm-${product.id}" class="productForm">
                                    <input name="productId-${product.id}" type="hidden" value="${product.id}"/>
                                    <td class="cart_product">
                                        <a href=""><img src="<spring:url value="${product.getPicturelink()}"/>" alt="" class="cart_product_img"></a>
                                    </td>
                                    <td class="cart_description">
                                        <h4><a href="<spring:url value="/product/detail/${product.id}"/>}">${product.name}</a></h4>
                                        <p>Réf produit: ${product.reference}</p>
                                    </td>
                                    <td class="cart_price">
                                        <p>${product.price}</p>
                                    </td>
                                    <td class="cart_delete">
                                        <button type="button" class="btn btn-default remove-from-wishlist"
                                                formaction="<spring:url value="/remove-from-wishlist"/>" form="${product.id}">
                                            <i class="glyphicon glyphicon-remove"></i>
                                        </button>
                                    </td>
                                </form>
                            </tr>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <td>
                            <p><spring:message code="cart.noPoductAdd"/></p>
                        </td>
                    </c:otherwise>
                </c:choose>
                </tbody>
            </table>
            <form id="productForm-remove-all" name="productForm-remove-all" class="productForm">
                <button type="button" class="btn btn-default remove-all-from-wishlist"
                        formaction="<spring:url value="/remove-all-from-wishlist"/>" form="productForm-remove-all">
                    <i class="glyphicon glyphicon-trash"></i> <spring:message code="cart.removeAll"/>
                </button>
            </form>
        </div>
    </div>
    <a class="btn btn-default check_out" href=""><spring:message code="wishlist.addtoCart"/></a>
</section> <!--/#cart_items-->


<!-- INCLUDE FOOTER -->
<jsp:include page="../footer.jsp" />
</body>