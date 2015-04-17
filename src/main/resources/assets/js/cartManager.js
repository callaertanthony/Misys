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
                $("#popup-success").modal("show");
                $("p#popup-message").text("Product added to cart successfully!");
                setTimeout(function(){
                    $("#popup-success").modal("hide");
                }, 3000);
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
                $("#popup-success").modal("show");
                $("p#popup-message").text("Product added to wishlist successfully!");
                setTimeout(function(){
                    $("#popup-success").modal("hide");
                }, 3000);
                heart.removeClass("glyphicon-heart-empty").addClass("glyphicon-heart");
            }
        })
    })

    initTrigger();
})

function initTrigger() {
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
                    $("#popup-success").modal("show");
                    $("p#popup-message").text("Product removed from cart successfully!");
                    setTimeout(function(){
                        $("#popup-success").modal("hide");
                    }, 3000);
                    $('#table-cart').html(response);
                    initTrigger();
                } else {
                    $("#popup-fail").modal("show");
                    $("p#popup-message").text("An error occured while removing the product from cart.");
                    setTimeout(function(){
                        $("#popup-fail").modal("hide");
                    }, 3000);
                }
            },
            error: function(){
                $("#popup-fail").modal("show");
                $("p#popup-message").text("Can't access cart please retry.");
                setTimeout(function(){
                    $("#popup-fail").modal("hide");
                }, 3000);
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

                    $("#popup-success").modal("show");
                    $("p#popup-message").text("Product updated successfully!");
                    setTimeout(function(){
                        $("#popup-success").modal("hide");
                    }, 3000);
                    $('#table-cart').html(response);
                    initTrigger();
                } else {
                    $("#popup-fail").modal("show");
                    $("p#popup-message").text("Product update failed.");
                    setTimeout(function(){
                        $("#popup-fail").modal("hide");
                    }, 3000);
                }
            },
            error: function(){
                $("#popup-fail").modal("show");
                $("p#popup-message").text("Can't access cart please retry.");
                setTimeout(function(){
                    $("#popup-fail").modal("hide");
                }, 3000);
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
                    $("#popup-success").modal("show");
                    $("p#popup-message").text("All products removed from cart with success.");
                    setTimeout(function(){
                        $("#popup-success").modal("hide");
                    }, 3000);
                    $('#table-cart').html(response);
                    initTrigger();
                } else {
                    $("#popup-success").modal("show");
                    $("p#popup-message").text("Can't remove products from cart.");
                    setTimeout(function(){
                        $("#popup-success").modal("hide");
                    }, 3000);
                }
            },
            error: function(){
                $("#popup-fail").modal("show");
                $("p#popup-message").text("Can't access cart please retry.");
                setTimeout(function(){
                    $("#popup-fail").modal("hide");
                }, 3000);
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
                    $("#popup-fail").modal("show");
                    $("p#popup-message").text("Product removed from wishlist with success.");
                    setTimeout(function(){
                        $("#popup-fail").modal("hide");
                    }, 3000);
                    $('#table-wishlist').html(response);
                    initTrigger();
                } else {
                    $("#popup-fail").modal("show");
                    $("p#popup-message").text("Can't remove products from wishlist.");
                    setTimeout(function(){
                        $("#popup-fail").modal("hide");
                    }, 3000);
                }
            },
            error: function(){
                $("#popup-fail").modal("show");
                $("p#popup-message").text("Can't access wishlist please retry.");
                setTimeout(function(){
                    $("#popup-fail").modal("hide");
                }, 3000);
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
                    $("#popup-fail").modal("show");
                    $("p#popup-message").text("All products removed from wishlist with success.");
                    setTimeout(function(){
                        $("#popup-fail").modal("hide");
                    }, 3000);
                    $('#table-wishlist').html(response);
                    initTrigger();
                } else {
                    $("#popup-fail").modal("show");
                    $("p#popup-message").text("Can't remove products from wishlist.");
                    setTimeout(function(){
                        $("#popup-fail").modal("hide");
                    }, 3000);
                }
            },
            error: function(){
                $("#popup-fail").modal("show");
                $("p#popup-message").text("Can't access wishlist please retry.");
                setTimeout(function(){
                    $("#popup-fail").modal("hide");
                }, 3000);
            }
        })
    })
}

