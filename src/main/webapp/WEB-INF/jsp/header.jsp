<%--
  Created by IntelliJ IDEA.
  User: Guillaume
  Date: 3/11/2015
  Time: 6:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header id="header"><!--header-->
    <div class="header-middle"><!--header-middle-->
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="logo pull-left">
                        <a href="/"><img src="${pageContext.request.contextPath}/assets/images/home/logo.png"
                                                  alt=""/></a>
                    </div>
                    <div class="btn-group pull-right">
                        <div class="btn-group">
                            <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                                France
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu">
                                <li><a href="">UK</a></li>
                            </ul>
                        </div>

                        <div class="btn-group">
                            <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                                €
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu">
                                <li><a href="">£</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-sm-2">
                    <form action="${pageContext.request.contextPath}/product/search" method="get">
                        <div class="input-group">
                            <div class="col-sm-8">
                                <input type="text" name="searchInput" id="searchInput" class="form-control"
                                       placeholder="Rechercher" style="border: 0px;">
                            </div>
                            <div class="col-sm-4">

                            <button type="submit" id="searchBtn" class="btn btn-default">
                                    <span
                                            class="glyphicon glyphicon-search"></span>
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-sm-5">
                    <div class="shop-menu pull-right">
                        <ul class="nav navbar-nav">
                            <li><a href="/account"><i class="glyphicon glyphicon-user"></i> Compte</a></li>
                            <li><a href="/whishlist"><i class="glyphicon glyphicon-heart-empty"></i> Liste d'envies</a>
                            </li>
                            <li><a href="/checkout"><i class="glyphicon glyphicon-shopping-cart"></i> Panier</a></li>
                            <li><a href="/login"><i class="glyphicon glyphicon-log-in"></i> Se connecter</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/header-middle-->
</header>
<!--/header-->
