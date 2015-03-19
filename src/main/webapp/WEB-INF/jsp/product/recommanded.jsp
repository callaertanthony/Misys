<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <c:set var="count" value="0"/>

            <%int i = 0; %>

            <c:forEach items="${productsRecommended}" var="productelement">
                <c:if test="${count == 0}">
                    <div class="item<%= i++ == 0 ? " active" : ""%>">
                </c:if>
                <div class="col-sm-4">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <a href="${pageContext.request.contextPath}/product/detail/${productelement.id}">
                                    <img src="${productelement.getPicturelink().getLink()}"
                                         alt="${productelement.name} picture"/>
                                </a>

                                <h2>${productelement.price}€</h2>

                                <p>${productelement.name}</p>
                                <div>
                                    <label>Quantity:</label>
                                    <input type="number" value="1" max="${productelement.stock.quantity}" min="0" />
                                </div>
                            </div>
                        </div>
                        <div class="choose">
                            <ul class="nav nav-pills nav-justified">
                                <li><button type="button" class="btn btn-default add-to-wishlist"><i class="glyphicon glyphicon-heart-empty"></i>Add to wishlist</button></li> <!--TODO manage quantity -->
                                <li><button type="button" class="btn btn-default add-to-cart"><i class="glyphicon glyphicon-shopping-cart"></i>Add to cart</button></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <c:set var="count" value="${count+1}"/>
                <c:if test="${count == 3}">
                    </div>
                    <c:set var="count" value="0"/>
                </c:if>
             </c:forEach>
            <c:if test="${count != 0}">
        </div>

        </c:if>
        </div>

    <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
            <i class="glyphicon glyphicon-chevron-left"></i>
        </a>
        <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
            <i class="glyphicon glyphicon-chevron-right"></i>
        </a>
    </div>
</div><!--/recommended_items-->
