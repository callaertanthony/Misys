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
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="_csrf" content="${_csrf.token}"/>
    <!-- default header name is X-CSRF-TOKEN -->
    <meta name="_csrf_header" content="${_csrf.headerName}"/>
    <title>${product.name} - Misys</title>
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

    <section>
        <div class="container">
            <div class="row">
                <%-- add breacrumb--%>
                <%--
                    If the list size is more than 10 elements, we only show the root and the three latest categories to the
                    client. Otherwise, we show the full breadcrumb.
                 --%>
                <c:choose>
                    <c:when test="${categories.size()<='10'}">
                        <ol class="breadcrumb_detail breadcrumb">
                            <c:forEach items="${categories}" var="category">
                                <%--<li><a href="<spring:url value="/category/${category.getCategoryLink()}"/>"> ${category.getCategory()} </a> </li>--%>
                                <li><a href="<spring:url value="/"/>"> ${category.getCategory()} </a> </li>
                            </c:forEach>
                        </ol>
                    </c:when>
                    <c:otherwise>
                        <ol class="breadcrumb_detail breadcrumb">
                            <%--
                            <li><a href="<spring:url value="/category/${categories.get(0).getCategoryLink()}"/> ${pageContext.request.contextPath}"> ${categories.get(0).getCategory()}</a></li>
                            <li> (...) </li>
                            <li><a href="<spring:url value="/category/${categories.get(categories.size()-3).getCategoryLink()}"/>"></a></li>
                            <li><a href="<spring:url value="/category/${categories.get(categories.size()-2).getCategoryLink()}"/>"></a></li>
                            <li><a href="<spring:url value="/category/${categories.get(categories.size()-1).getCategoryLink()}"/>"></a></li>
                            --%>
                            <li><a href="<spring:url value="/"/> ${pageContext.request.contextPath}"> ${categories.get(0).getCategory()}</a></li>
                            <li> (...) </li>
                            <li><a href="<spring:url value="/"/>"></a></li>
                            <li><a href="<spring:url value="/"/>"></a></li>
                            <li><a href="<spring:url value="/"/>"></a></li>

                        </ol>
                    </c:otherwise>
                </c:choose>
                <div class="col-sm-3">
                    <!-- INCLUDE MENU -->
                    <jsp:include page="../menu.jsp" />
                </div>

                <div class="col-sm-9 padding-right">
                    <div class="product-details"><!--product-details-->
                        <form id="productForm-${product.id}" name="productForm-${product.id}" class="productForm">
                            <input name="productId" type="hidden" value="${product.id}"/>
                            <div class="col-sm-5">
                                <div class="view-product">
                                   <img src="<spring:url value="${product.getPicturelink()}"/>" alt="${product.name}" />
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
                                        <c:if test="${product.haveStock()}">
                                        <label>Quantity:</label>
                                        <input name="quantity" type="number" value="1" max="${product.stock.quantity}" min="1" form="productForm-${product.id}"/>
                                        </c:if>
                                            <input type="hidden" id="inputId" value="${product.id}"/>

                                        <div class="choose">

                                            <ul class="nav nav-pills nav-stacked">
                                                <li>
                                                    <button type="button" class="btn btn-default add-to-wishlist"
                                                            formaction="<spring:url value="/add-to-wishlist"/>" form="productForm-${product.id}">
                                                        <i class="glyphicon glyphicon-heart-empty"></i><spring:message code="detail.addWishlist"/>
                                                    </button>
                                                </li>
                                                <c:if test="${product.haveStock()}">
                                                    <li>
                                                        <button type="button" class="btn btn-default add-to-cart"
                                                                formaction="<spring:url value="/add-to-cart"/>" form="productForm-${product.id}">
                                                            <i class="glyphicon glyphicon-shopping-cart"></i><spring:message code="wishlist.addtoCart"/>
                                                        </button>
                                                    </li>
                                                </c:if>
                                            </ul>
                                        </div>
                                    </span>
                                    <c:choose>
                                        <c:when test="${product.haveStock()}">
                                            <p><b><spring:message code="detail.availability"/> : </b> <spring:message code="detail.inStock"/></p>
                                        </c:when>
                                        <c:otherwise>
                                            <p><b><spring:message code="detail.availability"/> : </b> <spring:message code="detail.outOgStock"/></p>
                                        </c:otherwise>
                                    </c:choose>
                                    <p><b>Brand:</b> ${product.getBrand().getName()}</p>
                                    <a href=""><img src="<spring:url value="/assets/images/product-details/share.png"/>"
                                            class="share img-responsive" alt=""/></a>
                                </div><!--/product-information-->
                            </div>
                        </form>
                    </div><!--/product-details-->

                    <div class="category-tab shop-details-tab"><!--category-tab-->
                        <div class="col-sm-12">
                            <ul class="nav nav-tabs">
                                <li><a href="#details" data-toggle="tab"> <spring:message code="detail.details"/></a></li>
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

                    <c:if test="${not empty productsRecommended}">
                        <!-- INCLUDING RECOMMANDED ITEMS -->
                        <jsp:include page="recommanded.jsp" />
                    </c:if>
                </div>
            </div>
        </div>
    </section>

    <!-- INCLUDE FOOTER -->
    <jsp:include page="../footer.jsp" />
</body>
</html>
