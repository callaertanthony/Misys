<%--
  Created by IntelliJ IDEA.
  User: Guillaume
  Date: 3/10/2015
  Time: 9:40 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="/WEB-INF/c.tld" %>

<html>
<head>
    <c:set var="contextPath" value="${pageContext.request.contextPath}"/>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Product Details | E-Shopper</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/css/font-awesome.min.css" rel="stylesheet">
    <link href="${contextPath}/css/prettyPhoto.css" rel="stylesheet">
    <link href="${contextPath}/css/price-range.css" rel="stylesheet">
    <link href="${contextPath}/css/animate.css" rel="stylesheet">
    <link href="${contextPath}/css/main.css" rel="stylesheet">
    <link href="${contextPath}/css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="${contextPath}/js/html5shiv.js"></script>
    <script src="${contextPath}/js/respond.min.js"></script>
    <![endif]-->
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head><!--/head-->
<body>
<!-- INCLUDE HEADER -->
<jsp:include page="../header.jsp" />

<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <!-- INCLUDE MENU -->
                <jsp:include page="../menu.jsp" />
            </div>

            <div class="col-sm-9 padding-right">
                <div class="product-details"><!--product-details-->
                    <div class="col-sm-5">
                        <div class="view-product">
                            <img src="${contextPath}/images/product-details/1.jpg" alt="" />
                        </div>

                    </div>
                    <div class="col-sm-7">
                        <div class="product-information"><!--/product-information-->
                            <img src="${contextPath}/images/product-details/new.jpg" class="newarrival" alt="" />
                            <h2>${product.name}</h2>
                            <p>Web ID: ${product.reference}</p>
                            <img src="${contextPath}/images/product-details/rating.png" alt="" />
								<span>
									<span>${product.price}€</span>
									<label>Quantity:</label>
									<input type="text" value="3" />
									<button type="button" class="btn btn-default cart">
                                        <i class="fa fa-shopping-cart"></i>
                                        Add to cart
                                    </button>
                                    <button type="button" class="btn btn-default wishlist">
                                        <i class="fa fa-shopping-wishlist"></i>
                                        Add to wishlist
                                    </button>
								</span>
                            <c:choose>
                                <c:when test="${product.getStock().getQuantity() > '0'}">
                                    <p><b>Availability:</b> In Stock</p>
                                </c:when>
                                <c:otherwise>
                                    <p><b>Availability:</b> Out of stock</p>
                                </c:otherwise>
                            </c:choose>
                            <p><b>Brand:</b> ${product.getBrand().getName()}</p>
                            <a href=""><img src="${contextPath}/images/product-details/share.png" class="share img-responsive"  alt="" /></a>
                        </div><!--/product-information-->
                    </div>
                </div><!--/product-details-->

                <div class="category-tab shop-details-tab"><!--category-tab-->
                    <div class="col-sm-12">
                        <ul class="nav nav-tabs">
                            <li><a href="#details" data-toggle="tab">Details</a></li>
                            <li><a href="#companyprofile" data-toggle="tab">Company Profile</a></li>
                            <li><a href="#tag" data-toggle="tab">Tag</a></li>
                            <li class="active"><a href="#reviews" data-toggle="tab">Reviews (5)</a></li>
                        </ul>
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane fade" id="details" >
                            <div class="col-sm-12">
                                <p>${product.description}</p>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="companyprofile" >
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="${contextPath}/images/home/gallery1.jpg" alt="" />
                                            <h2>$56</h2>
                                            <p>Easy Polo Black Edition</p>
                                            <label>Quantity:</label>
                                            <input type="text" value="3" />
                                            <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                            <button type="button" class="btn btn-default add-to-wishlist"><i class="fa fa-shopping-wishlist"></i>Add to wishlist</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="${contextPath}/images/home/gallery3.jpg" alt="" />
                                            <h2>$56</h2>
                                            <p>Easy Polo Black Edition</p>
                                            <label>Quantity:</label>
                                            <input type="text" value="3" />
                                            <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                            <button type="button" class="btn btn-default add-to-wishlist"><i class="fa fa-shopping-wishlist"></i>Add to wishlist</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="${contextPath}/images/home/gallery2.jpg" alt="" />
                                            <h2>$56</h2>
                                            <p>Easy Polo Black Edition</p>
                                            <label>Quantity:</label>
                                            <input type="text" value="3" />
                                            <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                            <button type="button" class="btn btn-default add-to-wishlist"><i class="fa fa-shopping-wishlist"></i>Add to wishlist</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="${contextPath}/images/home/gallery4.jpg" alt="" />
                                            <h2>$56</h2>
                                            <p>Easy Polo Black Edition</p>
                                            <label>Quantity:</label>
                                            <input type="text" value="3" />
                                            <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                            <button type="button" class="btn btn-default add-to-wishlist"><i class="fa fa-shopping-wishlist"></i>Add to wishlist</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="tag" >
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="${contextPath}/images/home/gallery1.jpg" alt="" />
                                            <h2>$56</h2>
                                            <p>Easy Polo Black Edition</p>
                                            <label>Quantity:</label>
                                            <input type="text" value="3" />
                                            <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                            <button type="button" class="btn btn-default add-to-wishlist"><i class="fa fa-shopping-wishlist"></i>Add to wishlist</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="${contextPath}/images/home/gallery2.jpg" alt="" />
                                            <h2>$56</h2>
                                            <p>Easy Polo Black Edition</p>
                                            <label>Quantity:</label>
                                            <input type="text" value="3" />
                                            <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                            <button type="button" class="btn btn-default add-to-wishlist"><i class="fa fa-shopping-wishlist"></i>Add to wishlist</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="${contextPath}/images/home/gallery3.jpg" alt="" />
                                            <h2>$56</h2>
                                            <p>Easy Polo Black Edition</p>
                                            <label>Quantity:</label>
                                            <input type="text" value="3" />
                                            <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                            <button type="button" class="btn btn-default add-to-wishlist"><i class="fa fa-shopping-wishlist"></i>Add to wishlist</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="${contextPath}/images/home/gallery4.jpg" alt="" />
                                            <h2>$56</h2>
                                            <p>Easy Polo Black Edition</p>
                                            <label>Quantity:</label>
                                            <input type="text" value="3" />
                                            <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                            <button type="button" class="btn btn-default add-to-wishlist"><i class="fa fa-shopping-wishlist"></i>Add to wishlist</button>
                                        </div>
                                    </div>
                                </div>
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
