<%--
  Created by IntelliJ IDEA.
  User: Guillaume
  Date: 3/12/2015
  Time: 9:24 AM
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
    <title>Product Details | Misys</title>
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
                    <h2 class="title text-center">Features Items</h2>
                    <c:forEach items="${products}" var="product">
                        <div class="col-sm-4">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="${product.getPicturelink().getLink()}" alt=""/>

                                        <h2>${product.price}€</h2>

                                        <p>${product.name}</p>
                                        <label>Quantity:</label>
                                        <input type="text" value="3" />
                                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                    </div>
                                    <div class="product-overlay">
                                        <div class="overlay-content">
                                            <h2>${product.price}€</h2>

                                            <p>${product.name}</p>
                                            <label>Quantity:</label>
                                            <input type="text" value="3"/>
                                            <a href="#" class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i>Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="choose">
                                    <ul class="nav nav-pills nav-justified">
                                        <li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                                        <li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </c:forEach>

                </div><!--features_items-->

                <div class="category-tab"><!--category-tab-->
                    <div class="col-sm-12">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#dvd" data-toggle="tab">DVD</a></li>
                            <li><a href="#bluray" data-toggle="tab">Blu-Ray</a></li>
                            <li><a href="#vinyl" data-toggle="tab">Vinyl</a></li>
                            <li><a href="#cd" data-toggle="tab">CD</a></li>
                            <li><a href="#vod" data-toggle="tab">VOD</a></li>
                        </ul>
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane fade active in" id="tshirt" >
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery1.jpg" alt="" />
                                            <h2>$56</h2>
                                            <p>Easy Polo Black Edition</p>
                                            <label>Quantity:</label>
                                            <input type="text" value="3" />
                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                            <a href="#" class="btn btn-default add-to-wishlist"><i class="fa fa-shopping-wishlist"></i>Add to wishlist</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery2.jpg" alt="" />
                                            <h2>$56</h2>
                                            <p>Easy Polo Black Edition</p>
                                            <label>Quantity:</label>
                                            <input type="text" value="3" />
                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                            <a href="#" class="btn btn-default add-to-wishlist"><i class="fa fa-shopping-wishlist"></i>Add to wishlist</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery3.jpg" alt="" />
                                            <h2>$56</h2>
                                            <p>Easy Polo Black Edition</p>
                                            <label>Quantity:</label>
                                            <input type="text" value="3" />
                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                            <a href="#" class="btn btn-default add-to-wishlist"><i class="fa fa-shopping-wishlist"></i>Add to wishlist</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery4.jpg" alt="" />
                                            <h2>$56</h2>
                                            <p>Easy Polo Black Edition</p>
                                            <label>Quantity:</label>
                                            <input type="text" value="3" />
                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                            <a href="#" class="btn btn-default add-to-wishlist"><i class="fa fa-shopping-wishlist"></i>Add to wishlist</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="blazers" >
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery4.jpg" alt="" />
                                            <h2>$56</h2>
                                            <p>Easy Polo Black Edition</p>
                                            <label>Quantity:</label>
                                            <input type="text" value="3" />
                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                            <a href="#" class="btn btn-default add-to-wishlist"><i class="fa fa-shopping-wishlist"></i>Add to wishlist</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery3.jpg" alt="" />
                                            <h2>$56</h2>
                                            <p>Easy Polo Black Edition</p>
                                            <label>Quantity:</label>
                                            <input type="text" value="3" />
                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                            <a href="#" class="btn btn-default add-to-wishlist"><i class="fa fa-shopping-wishlist"></i>Add to wishlist</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery2.jpg" alt="" />
                                            <h2>$56</h2>
                                            <p>Easy Polo Black Edition</p>
                                            <label>Quantity:</label>
                                            <input type="text" value="3" />
                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                            <a href="#" class="btn btn-default add-to-wishlist"><i class="fa fa-shopping-wishlist"></i>Add to wishlist</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery1.jpg" alt="" />
                                            <h2>$56</h2>
                                            <p>Easy Polo Black Edition</p>
                                            <label>Quantity:</label>
                                            <input type="text" value="3" />
                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                            <a href="#" class="btn btn-default add-to-wishlist"><i class="fa fa-shopping-wishlist"></i>Add to wishlist</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="sunglass" >
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery3.jpg" alt="" />
                                            <h2>$56</h2>
                                            <p>Easy Polo Black Edition</p>
                                            <label>Quantity:</label>
                                            <input type="text" value="3" />
                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                            <a href="#" class="btn btn-default add-to-wishlist"><i class="fa fa-shopping-wishlist"></i>Add to wishlist</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery4.jpg" alt="" />
                                            <h2>$56</h2>
                                            <p>Easy Polo Black Edition</p>
                                            <label>Quantity:</label>
                                            <input type="text" value="3" />
                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                            <a href="#" class="btn btn-default add-to-wishlist"><i class="fa fa-shopping-wishlist"></i>Add to wishlist</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery1.jpg" alt="" />
                                            <h2>$56</h2>
                                            <p>Easy Polo Black Edition</p><label>Quantity:</label>
                                            <input type="text" value="3" />
                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                            <a href="#" class="btn btn-default add-to-wishlist"><i class="fa fa-shopping-wishlist"></i>Add to wishlist</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery2.jpg" alt="" />
                                            <h2>$56</h2>
                                            <p>Easy Polo Black Edition</p>
                                            <label>Quantity:</label>
                                            <input type="text" value="3" />
                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                            <a href="#" class="btn btn-default add-to-wishlist"><i class="fa fa-shopping-wishlist"></i>Add to wishlist</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="kids" >
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery1.jpg" alt="" />
                                            <h2>$56</h2>
                                            <p>Easy Polo Black Edition</p>
                                            <label>Quantity:</label>
                                            <input type="text" value="3" />
                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                            <a href="#" class="btn btn-default add-to-wishlist"><i class="fa fa-shopping-wishlist"></i>Add to wishlist</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery2.jpg" alt="" />
                                            <h2>$56</h2>
                                            <p>Easy Polo Black Edition</p>
                                            <label>Quantity:</label>
                                            <input type="text" value="3" />
                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                            <a href="#" class="btn btn-default add-to-wishlist"><i class="fa fa-shopping-wishlist"></i>Add to wishlist</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery3.jpg" alt="" />
                                            <h2>$56</h2>
                                            <p>Easy Polo Black Edition</p>
                                            <label>Quantity:</label>
                                            <input type="text" value="3" />
                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                            <a href="#" class="btn btn-default add-to-wishlist"><i class="fa fa-shopping-wishlist"></i>Add to wishlist</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery4.jpg" alt="" />
                                            <h2>$56</h2>
                                            <p>Easy Polo Black Edition</p>
                                            <label>Quantity:</label>
                                            <input type="text" value="3" />
                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                            <a href="#" class="btn btn-default add-to-wishlist"><i class="fa fa-shopping-wishlist"></i>Add to wishlist</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="poloshirt" >
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery2.jpg" alt="" />
                                            <h2>$56</h2>
                                            <p>Easy Polo Black Edition</p>
                                            <label>Quantity:</label>
                                            <input type="text" value="3" />
                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                            <a href="#" class="btn btn-default add-to-wishlist"><i class="fa fa-shopping-wishlist"></i>Add to wishlist</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery4.jpg" alt="" />
                                            <h2>$56</h2>
                                            <p>Easy Polo Black Edition</p>
                                            <label>Quantity:</label>
                                            <input type="text" value="3" />
                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                            <a href="#" class="btn btn-default add-to-wishlist"><i class="fa fa-shopping-wishlist"></i>Add to wishlist</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery3.jpg" alt="" />
                                            <h2>$56</h2>
                                            <p>Easy Polo Black Edition</p>
                                            <label>Quantity:</label>
                                            <input type="text" value="3" />
                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                            <a href="#" class="btn btn-default add-to-wishlist"><i class="fa fa-shopping-wishlist"></i>Add to wishlist</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery1.jpg" alt="" />
                                            <h2>$56</h2>
                                            <p>Easy Polo Black Edition</p>
                                            <label>Quantity:</label>
                                            <input type="text" value="3" />
                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                            <a href="#" class="btn btn-default add-to-wishlist"><i class="fa fa-shopping-wishlist"></i>Add to wishlist</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
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