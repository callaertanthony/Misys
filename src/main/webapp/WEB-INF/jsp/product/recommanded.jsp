<%--
  Created by IntelliJ IDEA.
  User: Guillaume
  Date: 3/11/2015
  Time: 6:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div class="recommended_items"><!--recommended_items-->
    <h2 class="title text-center"><spring:message code="recommanded.items"/></h2>

    <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">

            <c:set var="count" value="0"/>
            <%int i = 0; %>

            <c:forEach items="${productsRecommended}" var="productElement">
                <c:if test="${count == 0}">
                    <div class="item<%= i++ == 0 ? " active" : ""%>">
                </c:if>

                <div class="col-sm-4">
                    <form id="productForm-${productElement.id}" name="productForm-${productElement.id}" class="productForm">
                        <input name="productId" type="hidden" value="${productElement.id}"/>
                        <div class="product-image-wrapper">
                            <div class="single-products">
                                <div class="productinfo text-center">
                                    <a href="<spring:url value="/product/detail/${productElement.id}"/>">
                                        <img src="<spring:url value="${productElement.getPicturelink()}"/>" alt="${productElement.name} picture"/>
                                    </a>

                                    <h2>${productElement.price}€</h2>

                                    <p>${productElement.name}</p>
                                    <c:if test="${productElement.haveStock()}">
                                    <div>
                                        <label>Quantity:</label>
                                        <input type="number" value="1" max="${productElement.stock.quantity}" min="0" />
                                    </div>
                                    </c:if>
                                </div>
                            </div>
                            <div class="choose">
                                <ul class="nav nav-pills nav-stacked">
                                    <li><button type="button" class="btn btn-default add-to-wishlist"><i class="glyphicon glyphicon-heart-empty"></i><spring:message code="detail.addWishlist"/></button></li>
                                    <c:if test="${productElement.haveStock()}">
                                        <li><button type="button" class="btn btn-default add-to-cart"><i class="glyphicon glyphicon-shopping-cart"></i><spring:message code="wishlist.addtoCart"/></button></li>
                                    </c:if>
                                </ul>
                            </div>
                        </div>
                    </form>
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
