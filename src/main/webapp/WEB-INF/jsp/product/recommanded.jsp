<%--
  Created by IntelliJ IDEA.
  User: Guillaume
  Date: 3/11/2015
  Time: 6:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="recommended_items"><!--recommended_items-->
    <h2 class="title text-center">recommended items</h2>

    <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="item active">
                <div class="col-sm-4">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <img src="${pageContext.request.contextPath}/assets/images/home/recommend1.jpg" alt=""/>
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
                <div class="col-sm-4">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <img src="${pageContext.request.contextPath}/assets/images/home/recommend2.jpg" alt=""/>
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
                <div class="col-sm-4">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <img src="${pageContext.request.contextPath}/assets/images/home/recommend3.jpg" alt=""/>
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
            <div class="item">
                <div class="col-sm-4">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <img src="${pageContext.request.contextPath}${product.getPicturelink().getLink()}" alt=""/>
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
                <div class="col-sm-4">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <img src="${pageContext.request.contextPath}${product.getPicturelink().getLink()}" alt=""/>
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
                <div class="col-sm-4">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <img src="${pageContext.request.contextPath}${product.getPicturelink().getLink()}" alt=""/>
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
        </div>
        <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
            <i class="glyphicon glyphicon-chevron-left"></i>
        </a>
        <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
            <i class="glyphicon glyphicon-chevron-right"></i>
        </a>
    </div>
</div><!--/recommended_items-->
