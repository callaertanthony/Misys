<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<table class="table table-condensed">
  <thead>
  <tr class="cart_menu">
    <td class="image">Item</td>
    <td class="description"></td>
    <td class="price">Price</td>
    <td class="quantity">Quantity</td>
    <td class="total">Total</td>
    <td></td>
    <td></td>
  </tr>
  </thead>
  <tbody>
  <c:choose>
    <c:when test="${not empty products}">
      <c:forEach items="${products}" var="product">
        <tr>
          <form id="productForm-${product.key.id}" name="productForm-${product.key.id}" class="productForm">
            <input name="productId-${product.key.id}" type="hidden" value="${product.key.id}"/>
            <td class="cart_product">
              <a href=""><img src="<spring:url value="${product.key.getPicturelink()}"/>" alt="" class="cart_product_img"></a>
            </td>
            <td class="cart_description">
              <h4><a href="<spring:url value="/product/detail/${product.key.id}"/>}">${product.key.name}</a></h4>
              <p>Réf produit: ${product.key.reference}</p>
            </td>
            <td class="cart_price">
              <p>${product.key.price}</p>
            </td>
            <td class="cart_quantity">
              <input name="quantity-${product.key.id}" type="number" value="${product.value}" max="${product.key.stock.quantity}" min="1" form="productForm-${product.key.id}"/>
            </td>
            <td class="cart_total">
              <p class="cart_total_price"><fmt:formatNumber type="number" value="${product.key.price * product.value}"
                                                            minFractionDigits="2" maxFractionDigits="2"/> $</p>
            </td>
            <td class="cart_delete">
              <button type="button" class="btn btn-default remove-from-cart"
                      formaction="<spring:url value="/remove-from-cart"/>" form="${product.key.id}">
                <i class="glyphicon glyphicon-remove"></i>
              </button>
            </td>
            <td>
              <button type="button" class="btn btn-default update-cart"
                      formaction="<spring:url value="/update-product"/>" form="${product.key.id}">
                <i class="glyphicon glyphicon-shopping-cart"></i> Update
              </button>
            </td>
          </form>
        </tr>
      </c:forEach>
    </c:when>
    <c:otherwise>
      <td>
        <p>No product added to your cart yet.</p>
      </td>
    </c:otherwise>
  </c:choose>
  </tbody>
</table>
<form id="productForm-remove-all" name="productForm-remove-all" class="productForm">
  <button type="button" class="btn btn-default remove-all-from-cart"
          formaction="<spring:url value="/remove-all-from-cart"/>" form="productForm-remove-all">
    <i class="glyphicon glyphicon-trash"></i> Remove all products
  </button>
</form>