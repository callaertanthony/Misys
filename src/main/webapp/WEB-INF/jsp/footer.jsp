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
                        <p><spring:message code="footer.section"/></p>
                    </div>
                </div>
                <div class="col-sm-7">
                </div>
                <div class="col-sm-3">
                    <div class="address">
                        <img src="<spring:url value="/assets/images/home/map.png"/>" alt=""/>
                        <p>60 Boulevard VAUBAN - 59016 LILLE cedex</p>
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
                            <li><a href=""><spring:message code="footer.contactUs"/></a></li>
                            <li><a href=""><spring:message code="footer.orderStatus"/></a></li>
                            <li><a href=""><spring:message code="footer.changeLocation"/></a></li>
                            <li><a href="">FAQ’s</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2><spring:message code="footer.quickShop"/></h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="">Vinyl</a></li>
                            <li><a href="">DVD</a></li>
                            <li><a href="">Blu-Ray</a></li>
                            <li><a href="">VOD</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2><spring:message code="footer.policies"/></h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href=""><spring:message code="footer.termOfUse"/></a></li>
                            <li><a href=""><spring:message code="footer.privecyPolicy"/></a></li>
                            <li><a href=""><spring:message code="footer.refundPolicy"/></a></li>
                            <li><a href=""><spring:message code="footer.billingSystem"/></a></li>
                            <li><a href=""><spring:message code="footer.ticketSystem"/></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2><spring:message code="footer.aboutMysis"/></h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href=""><spring:message code="footer.companyInformations"/></a></li>
                            <li><a href=""><spring:message code="footer.Carreers"/></a></li>
                            <li><a href=""><spring:message code="footer.storeLocation"/></a></li>
                            <li><a href=""><spring:message code="footer.affiliateProgram"/></a></li>
                            <li><a href="">Copyright</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-3 col-sm-offset-1">
                    <div class="single-widget">
                        <h2><spring:message code="footer.aboutMysis"/></h2>
                        <form action="#" class="searchform">
                            <input type="text" placeholder="<spring:message code="footer.mailAdress"/>" />
                            <button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
                            <p><spring:message code="footer.mostRecent"/> <br /><spring:message code="footer.beUpdate"/></p>
                        </form>
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