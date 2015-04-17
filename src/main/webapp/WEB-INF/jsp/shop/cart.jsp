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
<jsp:include page="../header.jsp" />
<section id="cart_items">
    <div class="container">
        <div data-alerts="alerts" data-fade="10000">
            <div  id="product-added-fail" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">Something wrong happened..</h4>
                        </div>
                        <div class="modal-body">
                            <p>Sorry, an error occured while trying to add product.</p>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->
        </div>
        <div id="table-cart" class="table-responsive cart_info">
            <table class="table table-condensed">
                <thead>
                <tr class="cart_menu">
                    <td class="image">Item</td>
                    <td class="description"></td>
                    <td class="price"><spring:message code="menu.price"/></td>
                    <td class="quantity"><spring:message code="wishlist.quantity"/></td>
                    <td class="total">Total</td>
                    <td></td>
                    <td></td>
                </tr>
                </thead>
                <tbody>
                <c:set var="total" scope="session" value="0"/>
                <c:choose>
                    <c:when test="${not empty products}">
                        <c:forEach items="${products}" var="product">
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
                                        <input name="quantity-${product.key.id}" type="number" value="${product.value}" max="${product.key.stock.quantity}" min="1" form="productForm-${product.key.id}"/>
                                    </td>
                                    <td class="cart_total">
                                        <p class="cart_total_price"><fmt:formatNumber type="number" value="${product.key.price * product.value}"
                                                                                      minFractionDigits="2" maxFractionDigits="2"/> €</p>
                                    </td>
                                    <td class="cart_delete">
                                        <button type="button" class="btn btn-default remove-from-cart"
                                                formaction="<spring:url value="/remove-from-cart"/>" form="${product.key.id}">
                                            <i class="glyphicon glyphicon-remove"></i>
                                        </button>
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-default update-cart"
                                                formaction="<spring:url value="/update-product"/>" form="${product.key.id}">
                                            <i class="glyphicon glyphicon-shopping-cart"></i> Update
                                        </button>
                                    </td>
                                </form>
                            </tr>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <td>
                            <p>No product added to your cart yet.</p>
                        </td>
                    </c:otherwise>
                </c:choose>
                </tbody>
            </table>
            <form id="productForm-remove-all" name="productForm-remove-all" class="productForm">
                <button type="button" class="btn btn-default remove-all-from-cart"
                        formaction="<spring:url value="/remove-all-from-cart"/>" form="productForm-remove-all">
                    <i class="glyphicon glyphicon-trash"></i> Remove all products
                </button>
            </form>
        </div>
    </div>
</section> <!--/#cart_items-->

<section id="do_action">
    <div class="container">
        <div class="heading">
            <h3><spring:message code="cart.whatwouldyou"/></h3>
            <p><spring:message code="cart.chooseIfYou"/></p>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <div class="chose_area">
                    <ul class="user_option">
                        <li>
                            <input type="checkbox">
                            <label><spring:message code="carte.useCouponCode"/></label>
                        </li>
                        <li>
                            <input type="checkbox">
                            <label><spring:message code="carte.useGiftVoucher"/></label>
                        </li>
                        <li>
                            <input type="checkbox">
                            <label><spring:message code="carte.estimateShipping"/></label>
                        </li>
                    </ul>
                    <ul class="user_info">
                        <li class="single_field">
                            <label><spring:message code="carte.country"/> : </label>
                            <select>
                                <option>France</option>
                                <option>UK</option>
                            </select>

                        </li>
                        <li class="single_field zip-field">
                            <label>Address:</label>
                            <input type="text">
                        </li>
                        <li class="single_field zip-field">
                            <label><spring:message code="cart.zipCode"/> : </label>
                            <input type="text">
                        </li>
                    </ul>
                    <a class="btn btn-default update" href=""><spring:message code="cart.getQuotes"/></a>
                    <a class="btn btn-default check_out" href=""><spring:message code="cart.Continue"/></a>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="total_area">
                    <ul>
                        <li><spring:message code="cart.cartSubTotal"/> <span><fmt:formatNumber type="number" value="${total}"
                                                                   minFractionDigits="2" maxFractionDigits="2"/> €</span></li>
                        <li><spring:message code="cart.shippingCost"/> <span><spring:message code="cart.free"/></span></li>
                        <li>Total <span><fmt:formatNumber type="number" value="${total}"
                                                          minFractionDigits="2" maxFractionDigits="2"/> €</span></li>
                    </ul>
                    <a class="btn btn-default update" href=""><spring:message code="cart.update"/></a>
                    <a class="btn btn-default check_out" href=""><spring:message code="cart.checkOut"/></a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- INCLUDE FOOTER -->
<jsp:include page="../footer.jsp" />
</body>