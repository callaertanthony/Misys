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
    <h2><spring:message code="menu.category"/></h2>
    <div class="panel-group category-products" id="accordian"><!--category-productsr-->
        <!-- CD -->
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-parent="#accordian" href="<spring:url value="/menu/cd"/>">
                        <span class="badge pull-right"><i class="glyphicon glyphicon-music"></i></span>
                        CD
                    </a>
                </h4>
            </div>
        </div>

        <!-- dvd -->
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-parent="#accordian" href="<spring:url value="/menu/dvd"/>">
                        <span class="badge pull-right"><i class="glyphicon glyphicon-facetime-video"></i></span>
                        DVD
                    </a>
                </h4>
            </div>
        </div>

        <!-- Blu-Ray -->
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-parent="#accordian" href="<spring:url value="/menu/bluray"/>">
                        <span class="badge pull-right"><i class="glyphicon glyphicon-facetime-video"></i></span>
                        Blu-Ray
                    </a>
                </h4>
            </div>
        </div>

        <!-- Vinlye -->
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-parent="#accordian" href="<spring:url value="/menu/vinyle"/>">
                        <span class="badge pull-right"><i class="glyphicon glyphicon-facetime-video"></i></span>
                        Vinyle
                    </a>
                </h4>
            </div>
        </div>

    </div><!--/category-products-->

    <div class="price-range"><!--price-range-->
        <h2><spring:message code="menu.price"/></h2>
        <div class="well">
            <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />
            <b>$ 0</b> <b class="pull-right">$ 600</b>
        </div>
    </div><!--/price-range-->
</div>

