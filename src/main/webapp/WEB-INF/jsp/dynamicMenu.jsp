<%@taglib prefix="c" uri="/WEB-INF/c.tld" %>
<%@taglib prefix="fn" uri="/WEB-INF/fn.tld" %>
<%@taglib prefix="fmt" uri="/WEB-INF/fmt.tld" %>
<%--
  Created by IntelliJ IDEA.
  User: Guillaume
  Date: 3/11/2015
  Time: 6:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div class="left-sidebar">
    <div class="brands_products"><!--brands_products-->
        <h2>Studio</h2>

        <div class="brands-name">
            <ul class="nav nav-pills nav-stacked">
                <li><a href="#" data-id-brand=""> <span class="pull-right">(${fn:length(products)})
                </span><spring:message code="dynamicMenu.allStudio"/>Tous le studios</a></li>
                <c:forEach items="${brands}" var="brand">
                    <c:set var="count" value="0"/>
                    <c:forEach items="${products}" var="product">
                        <c:if test="${brand.id == product.brand.id}">
                            <c:set var="count" value="${count+1}"/>
                        </c:if>
                    </c:forEach>
                    <li><a href="#" data-id-brand="${brand.id}"> <span class="pull-right">(${count})</span>${brand.name}
                    </a></li>
                </c:forEach>
            </ul>
        </div>
    </div>
    <!--/brands_products-->

    <div class="price-range"><!--price-range-->
        <h2><spring:message code="dynamicMenu.price"/></h2>

        <div class="well">
            <c:set var="prixMax" value="0"/>
            <c:set var="prixMin" value="99999999"/>
            <c:forEach items="${products}" var="product">
                <c:if test="${prixMin > product.price}">
                    <c:set var="prixMin" value="${product.price}"/>
                </c:if>
                <c:if test="${prixMax < product.price}">
                    <c:set var="prixMax" value="${product.price}"/>
                </c:if>
            </c:forEach>
            <b> <fmt:formatNumber value="0" type="currency"/></b><input id="priceRange" type="text" class="span2"
                                                                        value="" data-slider-min="0"
                                                                        data-slider-max="${prixMax}"
                                                                        data-slider-step="1"
                                                                        data-slider-value="[${prixMin},${prixMax}]"/><b>
            <fmt:formatNumber value="${prixMax}" type="currency"/></b>

        </div>
    </div>
    <!--/price-range-->
</div>

