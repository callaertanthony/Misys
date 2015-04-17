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
        <div class="breadcrumbs">
            <ol class="breadcrumb">
                <li><a href="#"><spring:message code="wishlist.home"/></a></li>
                <li class="active"><spring:message code="wishlist.shopingCart"/></li>
            </ol>
        </div>
        <div class="table-responsive cart_info">
            <table class="table table-condensed">
                <thead>
                <tr class="cart_menu">
                    <td class="image">Item</td>
                    <td class="description"></td>
                    <td class="price"><spring:message code="menu.price"/></td>
                    <td class="quantity"><spring:message code="wishlist.quantity"/></td>
                    <td class="total">Total</td>
                    <td></td>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${products}" var="product">
                    <tr>
                        <td class="cart_product">
                            <a href=""><img src="<spring:url value="${product.getPicturelink()}"/>" alt="" class="cart_product_img"></a>
                        </td>
                        <td class="cart_description">
                            <h4><a href="<spring:url value="/product/detail/${product.id}"/>}">${product.name}</a></h4>
                            <p><spring:message code="wishlist.productRef"/> : ${product.reference}</p>
                        </td>
                        <td class="cart_price">
                            <p>${product.price}</p>
                        </td>
                        <td class="cart_quantity">
                            <div class="cart_quantity_button">
                                <a class="cart_quantity_up" href=""> + </a>
                                <input class="cart_quantity_input" type="text" name="quantity" value="1" autocomplete="off" size="2">
                                <a class="cart_quantity_down" href=""> - </a>
                            </div>
                        </td>
                        <td class="cart_total">
                            <p class="cart_total_price">$?</p>
                        </td>
                        <td class="cart_delete">
                            <a class="cart_quantity_delete" href=""><i class="glyphicon glyphicon-remove"></i></a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
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
                                <option>United States</option>
                                <option>Bangladesh</option>
                                <option>UK</option>
                                <option>India</option>
                                <option>Pakistan</option>
                                <option>Ucrane</option>
                                <option>Canada</option>
                                <option>Dubai</option>
                            </select>

                        </li>
                        <li class="single_field">
                            <label><spring:message code="cart.region/state"/> : </label>
                            <select>
                                <option>Select</option>
                                <option>Dhaka</option>
                                <option>London</option>
                                <option>Dillih</option>
                                <option>Lahore</option>
                                <option>Alaska</option>
                                <option>Canada</option>
                                <option>Dubai</option>
                            </select>

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
                        <li><spring:message code="cart.cartSubTotal"/>Cart Sub Total <span>$59</span></li>
                        <li>Eco Tax <span>$2</span></li>
                        <li><spring:message code="cart.shippingCost"/> <span><spring:message code="cart.free"/></span></li>
                        <li>Total <span>$61</span></li>
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