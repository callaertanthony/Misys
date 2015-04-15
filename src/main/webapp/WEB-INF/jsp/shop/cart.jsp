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
    <title>Cart - Misys</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="<spring:url value="/assets/css/font-awesome.min.css"/>" rel="stylesheet">
    <link href="<spring:url value="/assets/css/prettyPhoto.css"/>" rel="stylesheet">
    <link href="<spring:url value="/assets/css/price-range.css"/>" rel="stylesheet">
    <link href="<spring:url value="/assets/css/animate.css"/>" rel="stylesheet">
    <link href="<spring:url value="/assets/css/main.css"/>" rel="stylesheet">
    <link href="<spring:url value="/assets/css/responsive.css"/>" rel="stylesheet">
    <link href="<spring:url value="/assets/css/table-div.css"/>" rel="stylesheet">
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
        <div class="table-responsive cart_info">
            <div class="rTable table table-condensed"> <!-- TODO Don't try to be uniforme in the % repartition, description should have more % than others-->
                <div class="rTableHeading cart_menu">

                    <div class="rTableHead7 image">
                        Item
                    </div>
                    <div class="rTableHead7 description">

                    </div>
                    <div class="rTableHead7 price">
                        Price
                    </div>
                    <div class="rTableHead7 quantity">
                        Quantity
                    </div>
                    <div class="rTableHead7 total">
                        Total
                    </div>
                    <div class="rTableHead7 total">
                        Remove
                    </div>
                    <div class="rTableHead7 total">
                        Update
                    </div>

                </div>
                <div class="rTableBody">
                <c:choose>
                    <c:when test="${not empty products}">
                        <c:forEach items="${products}" var="product">
                            <div class="rTableRow">
                                <form id="productForm-${product.key.id}" name="productForm-${product.key.id}" class="productForm">
                                    <input name="productId" type="hidden" value="${product.key.id}"/>
                                    <div class="rTableCell7 cart_product">
                                        <a href=""><img src="<spring:url value="${product.key.getPicturelink()}"/>" alt="" class="cart_product_img"></a>
                                    </div>
                                    <div class="rTableCell7 cart_description">
                                        <h4><a href="<spring:url value="/product/detail/${product.key.id}"/>}">${product.key.name}</a></h4>
                                        <p>Réf produit: ${product.key.reference}</p>
                                    </div>
                                    <div class="rTableCell7 cart_price">
                                        <p>${product.key.price}</p>
                                    </div>
                                    <div class="rTableCell7 cart_quantity">
                                        <input name="quantity" type="number" value="${product.value}" max="${product.key.stock.quantity}" min="1" form="productForm-${product.key.id}"/>
                                    </div>
                                    <div class="rTableCell7 cart_total">
                                        <p class="cart_total_price">$?</p>
                                    </div>
                                    <div class="rTableCell7 cart_delete">
                                        <button type="button" class="btn btn-default remove-from-cart"
                                                formaction="<spring:url value="/remove-from-cart"/>" form="productForm-${product.key.id}">
                                            <i class="glyphicon glyphicon-remove"></i>
                                        </button>
                                    </div>
                                    <div class="rTableCell7 ">
                                        <button type="button" class="btn btn-default update-cart"
                                                formaction="<spring:url value="/update-product"/>" form="productForm-${product.key.id}">
                                            <i class="glyphicon glyphicon-shopping-cart"></i> Update
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <td>
                            <p>No product added to your cart yet.</p>
                        </td>
                    </c:otherwise>
                </c:choose>
                </div>
            </div>

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
            <h3>What would you like to do next?</h3>
            <p>Choose if you have a discount code or reward points you want to use or would like to estimate your delivery cost.</p>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <div class="chose_area">
                    <ul class="user_option">
                        <li>
                            <input type="checkbox">
                            <label>Use Coupon Code</label>
                        </li>
                        <li>
                            <input type="checkbox">
                            <label>Use Gift Voucher</label>
                        </li>
                        <li>
                            <input type="checkbox">
                            <label>Estimate Shipping &amp; Taxes</label>
                        </li>
                    </ul>
                    <ul class="user_info">
                        <li class="single_field">
                            <label>Country:</label>
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
                            <label>Region / State:</label>
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
                            <label>Zip Code:</label>
                            <input type="text">
                        </li>
                    </ul>
                    <a class="btn btn-default update" href="">Get Quotes</a>
                    <a class="btn btn-default check_out" href="">Continue</a>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="total_area">
                    <ul>
                        <li>Cart Sub Total <span>$59</span></li>
                        <li>Eco Tax <span>$2</span></li>
                        <li>Shipping Cost <span>Free</span></li>
                        <li>Total <span>$61</span></li>
                    </ul>
                    <a class="btn btn-default update" href="">Update</a>
                    <a class="btn btn-default check_out" href="">Check Out</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- INCLUDE FOOTER -->
<jsp:include page="../footer.jsp" />
</body>