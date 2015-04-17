<%--
  Created by IntelliJ IDEA.
  User: Olivier
  Date: 15/04/2015
  Time: 19:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="/WEB-INF/c.tld" %>
<%@taglib prefix="fn" uri="/WEB-INF/fn.tld" %>
<%@taglib prefix="fmt" uri="/WEB-INF/fmt.tld" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>FAQ's | Misys</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="<spring:url value="/assets/css/font-awesome.min.css"/>" rel="stylesheet">
    <link href="<spring:url value="/assets/css/prettyPhoto.css"/>" rel="stylesheet">
    <link href="<spring:url value="/assets/css/price-range.css"/>" rel="stylesheet">
    <link href="<spring:url value="/assets/css/animate.css"/>" rel="stylesheet">
    <link href="<spring:url value="/assets/css/main.css"/>" rel="stylesheet">
    <link href="<spring:url value="/assets/css/responsive.css"/>" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}/assets/js/html5shiv.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/respond.min.js"></script>
    <![endif]-->
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<!--/head-->
<body>
<!-- INCLUDE HEADER -->
<jsp:include page="../header.jsp"/>

<
<div class="container">

    <div>
        <h1> FAQ - Foire Aux Questions </h1>

        <p>Vous trouverez ci-dessous les réponses aux questions les plus fréquemment posées par thèmes :</p>

        <hr>


        <h2>Articles et Commandes</h2>
        Comment trouver un produit sur le site ?<br>
        <i>Il suffit de cliquer sur le champ de recherche avec une loupe, en haut du site, ou <a href="<spring:url value="/product/search?searchInput="/>">ici</a>.</i><br><br>
        Comment puis-je modifier ma commande ou l'annuler ?<br>
        <i>Directement dans le <a href="<spring:url value="/shop/cart"/>">panier</a>!</i><br><br>

        <h2>MP3</h2>
        Comment faire pour télécharger des MP3 ?<br>
        <i>Dans vos produits achetés, cliquez sur télécharger.</i><br><br>

        <h2>Paiement</h2>
        Quelssont les moyens de paiements possibles ?<br>
        <i>Par carte bleue ou compte Paypal.</i><br><br>
        Comment puis-je ajouter, modifier ou supprimer un mode de paiement&nbsp;?<br>
        <i>Dans votre <a href="<spring:url value="/account"/>">compte</a>, dans la partie "Vos options de paiement".</i><br><br>

        <h2>Votre compte</h2>
        Comment créer mon compte ?<br>
        <i>Cliquez sur "Se connecter" en haut de page, ou <a href="<spring:url value="/login"/>">ici</a>.</i><br><br>
        Comment faire pour terminer ma session sur le site ?<br>
        <i>En haut de page, cliquez sur le bouton "Déconnexion".</i><br><br>
        Comment changer mon nom, mon adresse e-mail ou mon mot de passe&nbsp;?<br>
        <i>Directement dans votre <a href="<spring:url value="/account"/>">compte</a>.</i><br><br>
    </div>
</div>


<!-- INCLUDE FOOTER -->
<jsp:include page="../footer.jsp"/>
</body>
</html>
