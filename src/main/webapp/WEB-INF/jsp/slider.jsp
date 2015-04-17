<%--
  Created by IntelliJ IDEA.
  User: Guillaume
  Date: 3/12/2015
  Time: 9:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<section id="slider"><!--slider-->
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#slider-carousel" data-slide-to="1"></li>
                        <li data-target="#slider-carousel" data-slide-to="2"></li>
                    </ol>

                    <div class="carousel-inner">
                        <div class="item active">
                            <div class="col-sm-6">
                                <h1><span>M</span>isys</h1>
                                <h2><spring:message code="slider.title1"/></h2>
                                <p><spring:message code="slider.section1"/> </p>
                                <button type="button" class="btn btn-default get"><spring:message code="slider.button1"/></button>
                            </div>
                            <div class="col-sm-6">
                                <img src="<spring:url value="${products[2].getPicturelink()}"/>" class="slider img-responsive" alt="" />
                            </div>
                        </div>
                        <div class="item">
                            <div class="col-sm-6">
                                <h1><span>M</span>isys</h1>
                                <h2><spring:message code="slider.title2"/></h2>
                                <p><spring:message code="slider.section2"/> </p>
                                <button type="button" class="btn btn-default get"><spring:message code="slider.button2"/></button>
                            </div>
                            <div class="col-sm-6">
                                <img src="<spring:url value="${products[1].getPicturelink()}"/>" class="slider img-responsive" alt="" />
                            </div>
                        </div>

                        <div class="item">
                            <div class="col-sm-6">
                                <h1><span>M</span>isys</h1>
                                <h2><spring:message code="slider.title3"/></h2>
                                <p><spring:message code="slider.section3"/> </p>
                                <button type="button" class="btn btn-default get"><spring:message code="slider.button3"/></button>
                            </div>
                            <div class="col-sm-6">
                                <img src="<spring:url value="${products[0].getPicturelink()}"/>" class="slider img-responsive" alt="" />
                            </div>
                        </div>
                    </div>

                    <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
                        <i class="glyphicon glyphicon-chevron-left"></i>
                    </a>
                    <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
                        <i class="glyphicon glyphicon-chevron-right"></i>
                    </a>
                </div>

            </div>
        </div>
    </div>
</section><!--/slider-->