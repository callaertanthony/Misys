/**
 * Created by anthonycallaert on 12/04/15.
 */

$(document).ready(function(){
    $('.add-to-cart').click(function(){

        var formId = $(this).attr("form");
        var form = $("#"+formId);
        var productId = form.find('input[name="productId"]').val();
        var quantity = form.find('input[name="quantity"]').val();
        var json = {"productId" : productId, "quantity" : quantity};

        $.ajax({
            url: $(this).attr("formaction"),
            data: JSON.stringify(json),
            type: "POST",
            contentType: 'application/json',
            success: function(){
                alert('Product added to cart with success');
            }
        })
    })

    $('.add-to-wishlist').click(function(){

        var formId = $(this).attr("form");
        var form = $("#"+formId);
        var productId = form.find('input[name="productId"]').val();
        var json = {"productId" : productId};

        var heart = $(this).find('.glyphicon-heart-empty');

        $.ajax({
            url: $(this).attr("formaction"),
            data: JSON.stringify(json),
            type: "POST",
            contentType: 'application/json',
            success: function(){
                alert('Product added to wishlist with success');
                heart.removeClass("glyphicon-heart-empty").addClass("glyphicon-heart");
            }
        })
    })

    $('.remove-from-cart').click(function(){

        var formId = $(this).attr("form");
        var form = $("#"+formId);
        var productId = form.find('input[name="productId"]').val();
        var quantity = form.find('input[name="quantity"]').val();
        var json = {"productId" : productId, "quantity" : quantity};

        $.ajax({
            url: $(this).attr("formaction"),
            data: JSON.stringify(json),
            type: "POST",
            contentType: 'application/json',
            success: function(){
                alert('Product removed from cart with success');
                location.reload();
            }
        })
    })

    $('.remove-from-wishlist').click(function(){

        var formId = $(this).attr("form");
        var form = $("#"+formId);
        var productId = form.find('input[name="productId"]').val();
        var json = {"productId" : productId};

        var heart = $(this).find('.glyphicon-heart-empty');

        $.ajax({
            url: $(this).attr("formaction"),
            data: JSON.stringify(json),
            type: "POST",
            contentType: 'application/json',
            success: function(){
                alert('Product removed from wishlist with success');
                location.reload();
            }
        })
    })

    $('.remove-all-from-cart').click(function(){

        var formId = $(this).attr("form");
        var form = $("#"+formId);

        $.ajax({
            url: $(this).attr("formaction"),
            type: "POST",
            contentType: 'application/json',
            success: function(){
                alert('Products removed from cart with success');
                location.reload();
            }
        })
    })

    $('.remove-all-from-wishlist').click(function(){

        var formId = $(this).attr("form");
        var form = $("#"+formId);
        var productId = form.find('input[name="productId"]').val();
        var json = {"productId" : productId};

        $.ajax({
            url: $(this).attr("formaction"),
            data: JSON.stringify(json),
            type: "POST",
            contentType: 'application/json',
            success: function(){
                alert('Products removed from wishlist with success');
                location.reload();
            }
        })
    })
})