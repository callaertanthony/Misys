<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<table class="table table-condensed">
    <thead>
    <tr class="cart_menu">
        <td class="image">Item</td>
        <td class="description"></td>
        <td class="price">Price</td>
        <td></td>
    </tr>
    </thead>
    <tbody>
    <c:choose>
        <c:when test="${not empty products}">
            <c:forEach items="${products}" var="product">
                <tr>
                    <td class="cart_product">
                        <a href=""><img src="<spring:url value="${product.getPicturelink()}"/>" alt="" class="cart_product_img"></a>
                    </td>
                    <td class="cart_description">
                        <h4><a href="<spring:url value="/product/detail/${product.id}"/>}">${product.name}</a></h4>
                        <p>Réf produit: ${product.reference}</p>
                    </td>
                    <td class="cart_price">
                        <p>${product.price}</p>
                    </td>
                    <td class="cart_delete">
                        <form id="productForm-${product.id}" name="productForm-${product.id}" class="productForm">
                            <input name="productId-${product.id}" type="hidden" value="${product.id}"/>
                            <button type="button" class="btn btn-default remove-from-wishlist"
                                    formaction="<spring:url value="/remove-from-wishlist"/>" form="${product.id}">
                                <i class="glyphicon glyphicon-remove"></i>
                            </button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </c:when>
        <c:otherwise>
            <td>
                <p>No product added to your wishlist yet.</p>
            </td>
        </c:otherwise>
    </c:choose>
    </tbody>
</table>
<form id="productForm-remove-all" name="productForm-remove-all" class="productForm">
    <button type="button" class="btn btn-default remove-all-from-wishlist"
            formaction="<spring:url value="/remove-all-from-wishlist"/>" form="productForm-remove-all">
        <i class="glyphicon glyphicon-trash"></i> Remove all products
    </button>
</form>