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
                            <li><a href="<spring:url value="/contact"/>"><spring:message code="footer.contactUs"/> </a></li>
                            <li><a href="<spring:url value="/faq"/>">FAQ’s</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2><spring:message code="footer.quickShop"/></h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="<spring:url value="/shop/cart"/>"><spring:message code="navbar.cart"/></a></li>
                            <li><a href="<spring:url value="/wishlist"/>"><spring:message code="navbar.wishlist"/></a></li>
                            <li><a href="<spring:url value="/product/search?searchInput="/>"><spring:message code="navbar.search"/></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2><spring:message code="footer.policies"/></h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="<spring:url value="/terms"/>"><spring:message code="footer.termOfUse"/></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2><spring:message code="footer.aboutMysis"/></h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="<spring:url value="/company"/>"><spring:message code="footer.companyInformations"/></a></li>
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
<script src="<spring:url value="/assets/js/jquery.bsAlerts.js"/>" ></script>
<script src="<spring:url value="/assets/js/cartManager.js"/>" ></script>