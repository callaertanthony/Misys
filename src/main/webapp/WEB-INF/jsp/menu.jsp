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
                    <a data-toggle="collapse" data-parent="#accordian" href="#cd">
                        <span class="badge pull-right"><i class="glyphicon glyphicon-music"></i></span>
                        CD & Vinyle
                    </a>
                </h4>
            </div>
            <div id="cd" class="panel-collapse collapse">
                <div class="panel-body">
                    <ul>
                        <li><a href="">Alternatif</a></li>
                        <li><a href="">Bande originale</a></li>
                        <li><a href="">Blues</a></li>
                        <li><a href="">Chanson française</a></li>
                        <li><a href="">Compilations</a></li>
                        <li><a href="">Country</a></li>
                        <li><a href="">Electro</a></li>
                        <li><a href="">Chanson pour enfant</a></li>
                        <li><a href="">Folk</a></li>
                        <li><a href="">Hard rock - Metal</a></li>
                        <li><a href="">Jazz</a></li>
                        <li><a href="">Musique Classique</a></li>
                        <li><a href="">Musique du monde</a></li>
                        <li><a href="">Pop</a></li>
                        <li><a href="">Rap & Hip-Hop</a></li>
                        <li><a href="">Reggae, Ragga & Ska</a></li>
                        <li><a href="">Rock</a></li>
                        <li><a href="">R&B, Soul & Funk</a></li>
                        <li><a href="">Humour et livre audio</a></li>
                        <li><a href="">Divers</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- dvd -->
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordian" href="#dvd">
                        <span class="badge pull-right"><i class="glyphicon glyphicon-facetime-video"></i></span>
                        Blu-Ray & DVD
                    </a>
                </h4>
            </div>
            <div id="dvd" class="panel-collapse collapse">
                <div class="panel-body">
                    <ul>
                        <li><a href="<spring:url value="/menu/cd"/>">Action, Policier et Thriller</a></li>
                        <li><a href="">Jeunesse et famille</a></li>
                        <li><a href="">Série TV</a></li>
                        <li><a href="">Films musicaux et concerts</a></li>
                        <li><a href="">Drame et émotion</a></li>
                        <li><a href="">Comédie</a></li>
                        <li><a href="">Fantastique, Horreur et Science-fiction</a></li>
                        <li><a href="">Cinéma Asiatique</a></li>
                        <li><a href="">Documentaires et Divers</a></li>
                        <li><a href="">Grands classiques</a></li>
                        <li><a href="">Animation japonaise</a></li>
                        <li><a href="">Spectacles et Humour</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordian" href="#vod">
                        <span class="badge pull-right"><i class="glyphicon glyphicon-download"></i></span>
                        VOD
                    </a>
                </h4>
            </div>
            <div id="vod" class="panel-collapse collapse">
                <div class="panel-body">
                    <ul>
                        <li><a href="">Action, Policier et Thriller</a></li>
                        <li><a href="">Jeunesse et famille</a></li>
                        <li><a href="">Série TV</a></li>
                        <li><a href="">Films musicaux et concerts</a></li>
                        <li><a href="">Drame et émotion</a></li>
                        <li><a href="">Comédie</a></li>
                        <li><a href="">Fantastique, Horreur et Science-fiction</a></li>
                        <li><a href="">Cinéma Asiatique</a></li>
                        <li><a href="">Documentaires et Divers</a></li>
                        <li><a href="">Grands classiques</a></li>
                        <li><a href="">Animation japonaise</a></li>
                        <li><a href="">Spectacles et Humour</a></li>
                    </ul>
                </div>
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

