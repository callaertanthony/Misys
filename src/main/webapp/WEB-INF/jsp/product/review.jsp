<%--
  Created by IntelliJ IDEA.
  User: Guillaume
  Date: 3/11/2015
  Time: 6:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div class="tab-pane fade active in" id="reviews" >
    <div class="col-sm-12">
        <c:forEach items="${product.reviews}" var="item">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <ul>
                        <li><i class="glyphicon glyphicon-user"></i><a href="">${item.user.nickname}</a></li>
                        <li class="glyphicon glyphicon-ok"> Note: ${item.note}</li>
                    </ul>
                </div>
                <div class="panel-body">
                        ${item.review}
                </div>
            </div>
        </c:forEach>
    </div>
</div>