<%--
  Created by IntelliJ IDEA.
  User: Guillaume
  Date: 3/10/2015
  Time: 9:40 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="/WEB-INF/c.tld" %>
<%@taglib prefix="fn" uri="/WEB-INF/fn.tld" %>
<%@taglib prefix="fmt" uri="/WEB-INF/fmt.tld" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Product Details | E-Shopper</title>
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
</head><!--/head-->
<body>
<!-- INCLUDE HEADER -->
<jsp:include page="../header.jsp" />

<section>
    <div class="container">
        <div class="row">
            <%-- add breacrumb--%>
            <ol class="breadcrumb_detail breadcrumb">
                <li><a href="http://localhost:8080/">Home</a></li>
                <li><a href="http://localhost:8080/product">Library</a></li>
                <li class="http://localhost:8080/product/detail">Music</li>
            </ol>
            <div class="col-sm-3">
                <!-- INCLUDE MENU -->
                <jsp:include page="../menu.jsp" />
            </div>

            <div class="col-sm-9 padding-right">
                <div class="product-details"><!--product-details-->
                    <div class="col-sm-5">
                        <div class="view-product">
                            <img src="${pageContext.request.contextPath}${product.getPicturelink().getLink()}" alt="${product.name}" />
                        </div>

                    </div>
                    <div class="col-sm-7">
                        <div class="product-information"><!--/product-information-->
                            <h2>${product.name}</h2>
                            <p>Web ID: ${product.reference}</p>
                            <c:set var="noteMoyenne" value="0"/>
                            <c:forEach items="${product.reviews}" var="item">
                                <c:set var="noteMoyenne" value="${noteMoyenne+item.note}"/>
                            </c:forEach>
                            <c:choose>
                                <c:when test="${noteMoyenne<='0'}">
                                    <p>Note: 0/5</p>
                                </c:when>
                                <c:otherwise>
                                    <c:set var="noteMoyenne" value="${noteMoyenne / fn:length(product.reviews)}"/>
                                    <p>Note: <fmt:formatNumber value="${noteMoyenne}" maxFractionDigits="2"/>/5</p>
                                </c:otherwise>
                            </c:choose>
                            <span>
                                <span>${product.price}€</span>
                                <label>Quantity:</label>
                                <input type="text" value="3" />
                                <button type="button" class="btn btn-default cart">
                                    <i class="glyphicon glyphicon-credit-card"></i>
                                    Add to cart
                                </button>
                                <button type="button" class="btn btn-default wishlist">
                                    <i class="glyphicon glyphicon-heart-empty"></i>
                                    Add to wishlist
                                </button>
                            </span>
                            <c:choose>
                                <c:when test="${product.haveStock()}">
                                    <p><b>Availability:</b> In Stock</p>
                                </c:when>
                                <c:otherwise>
                                    <p><b>Availability:</b> Out of stock</p>
                                </c:otherwise>
                            </c:choose>
                            <p><b>Brand:</b> ${product.getBrand().getName()}</p>
                            <a href=""><img src="${pageContext.request.contextPath}/assets/images/product-details/share.png"
                                    class="share img-responsive" alt=""/></a>
                        </div><!--/product-information-->
                    </div>
                </div><!--/product-details-->

                <div class="category-tab shop-details-tab"><!--category-tab-->
                    <div class="col-sm-12">
                        <ul class="nav nav-tabs">
                            <li><a href="#details" data-toggle="tab">Details</a></li>
                            <li><a href="#companyprofile" data-toggle="tab">Company Profile</a></li>
                            <li><a href="#tag" data-toggle="tab">Tag</a></li>
                            <li class="active"><a href="#reviews"
                                                  data-toggle="tab">Reviews: ${fn:length(product.reviews)}</a></li>
                        </ul>
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane fade" id="details" >
                            <div class="col-sm-12">
                                <p>${product.description}</p>
                            </div>
                        </div>

                        <!-- INCLUDING REVIEWS -->
                        <jsp:include page="review.jsp" />

                    </div>
                </div><!--/category-tab-->

                <!-- INCLUDING RECOMMANDED ITEMS -->
                <jsp:include page="recommanded.jsp" />

            </div>
        </div>
    </div>
</section>

<!-- INCLUDE FOOTER -->
<jsp:include page="../footer.jsp" />

</body>
</html>
