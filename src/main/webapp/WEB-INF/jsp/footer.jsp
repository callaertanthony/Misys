<%--
  Created by IntelliJ IDEA.
  User: Guillaume
  Date: 3/11/2015
  Time: 6:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<footer id="footer"><!--Footer-->
    <div class="footer-top">
        <div class="container">
            <div class="row">
                <div class="col-sm-2">
                    <div class="companyinfo">
                        <h2><span>M</span>isys</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="footer-widget">
        <div class="container">
            <div class="row">
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2>Service</h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="<spring:url value="/contact"/>">Contact Us</a></li>
                            <li><a href="<spring:url value="/faq"/>">FAQ’s</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2>Quick Shop</h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="<spring:url value="/shop/cart"/>">Cart</a></li>
                            <li><a href="<spring:url value="/wishlist"/>">Wishlist</a></li>
                            <li><a href="<spring:url value="/product/search?searchInput="/>">Search</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2>Policies</h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="<spring:url value="/terms"/>">Terms of Use</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2>About Misys</h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="<spring:url value="/company"/>">Company Information</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <p class="pull-left">Copyright © 2015 Misys Inc. All rights reserved.</p>
            </div>
        </div>
    </div>
</footer><!--/Footer-->
<script src="<spring:url value="/assets/js/jquery.js"/>"></script>
<script src="<spring:url value="/assets/js/price-range.js"/>"></script>
<script src="<spring:url value="/assets/js/jquery.scrollUp.min.js"/>"></script>
<script src="<spring:url value="/assets/js/bootstrap.min.js"/>"></script>
<script src="<spring:url value="/assets/js/jquery.prettyPhoto.js"/>"></script>
<script src="<spring:url value="/assets/js/main.js"/>"></script>
<script src="<spring:url value="/assets/js/cartManager.js"/>" ></script>