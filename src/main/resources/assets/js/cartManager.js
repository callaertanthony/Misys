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

        var id = $(this).attr("form");
        var productId = $('input[name="productId-' + id + '"]').val();
        var quantity = $('input[name="quantity-' + id + '"]').val();
        var json = {"productId" : productId, "quantity" : quantity};

        $.ajax({
            url: $(this).attr("formaction"),
            data: JSON.stringify(json),
            type: "POST",
            contentType: 'application/json',
            success: function(response){
                if(response != $('#table-cart')){
                    console.log(response);
                    $(document).trigger("add-alerts", {
                        message: "Product removed from cart with success.",
                        priority: "success"
                    });
                    $('#table-cart').html(response);
                } else {
                    $(document).trigger("add-alerts", {
                        message: "Can't remove product from cart.",
                        priority: "error"
                    });
                }
            },
            error: function(){
                $(document).trigger("add-alerts", {
                    message: "Can't access cart please retry.",
                    priority: "warning"
                });
            }
        })
    })

    $('.update-cart').click(function(){

        var id = $(this).attr("form");
        var productId = $('input[name="productId-' + id + '"]').val();
        var quantity = $('input[name="quantity-' + id + '"]').val();
        var json = {"productId" : productId, "quantity" : quantity};

        $.ajax({
            url: $(this).attr("formaction"),
            data: JSON.stringify(json),
            type: "POST",
            contentType: 'application/json',
            success: function(response){
                if(response != $('#table-cart')){
                    console.log(response);
                    $(document).trigger("add-alerts", {
                        message: "Product updated in cart with success.",
                        priority: "success"
                    });
                    $('#table-cart').html(response);
                } else {
                    $(document).trigger("add-alerts", {
                        message: "Can't update product in cart.",
                        priority: "error"
                    });
                }
            },
            error: function(){
                $(document).trigger("add-alerts", {
                    message: "Can't access cart please retry.",
                    priority: "warning"
                });
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
            success: function(response){
                if(response != $('#table-cart')){
                    console.log(response);
                    $(document).trigger("add-alerts", {
                        message: "All products removed from cart with success.",
                        priority: "success"
                    });
                    $('#table-cart').html(response);
                } else {
                    $(document).trigger("add-alerts", {
                        message: "Can't remove products from cart.",
                        priority: "error"
                    });
                }
            },
            error: function(){
                $(document).trigger("add-alerts", {
                    message: "Can't access cart please retry.",
                    priority: "warning"
                });
            }
        })
    })

    $('.remove-from-wishlist').click(function(){

        var id = $(this).attr("form");
        var productId = $('input[name="productId-' + id + '"]').val();
        var json = {"productId" : productId};

        $.ajax({
            url: $(this).attr("formaction"),
            data: JSON.stringify(json),
            type: "POST",
            contentType: 'application/json',
            success: function(response){
                if(response != $('#table-wishlist')){
                    console.log(response);
                    $(document).trigger("add-alerts", {
                        message: "Product removed from wishlist with success.",
                        priority: "success"
                    });
                    $('#table-wishlist').html(response);
                } else {
                    $(document).trigger("add-alerts", {
                        message: "Can't remove product from wishlist.",
                        priority: "error"
                    });
                }
            },
            error: function(){
                $(document).trigger("add-alerts", {
                    message: "Can't access wishlist please retry.",
                    priority: "warning"
                });
            }
        })
    })

    $('.remove-all-from-wishlist').click(function(){

        var formId = $(this).attr("form");
        var form = $("#"+formId);

        $.ajax({
            url: $(this).attr("formaction"),
            type: "POST",
            contentType: 'application/json',
            success: function(response){
                if(response != $('#table-wishlist')){
                    console.log(response);
                    $(document).trigger("add-alerts", {
                        message: "All products removed from wishlist with success.",
                        priority: "success"
                    });
                    $('#table-wishlist').html(response);
                } else {
                    $(document).trigger("add-alerts", {
                        message: "Can't remove products from wishlist.",
                        priority: "error"
                    });
                }
            },
            error: function(){
                $(document).trigger("add-alerts", {
                    message: "Can't access wishlist please retry.",
                    priority: "warning"
                });
            }
        })
    })
})