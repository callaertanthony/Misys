/**
 * Created by Olivier on 13/03/2015.
 */
$(function () {
    $(document).on("click", ".add-to-wishlist-btn", function () {
        if ($(this).parents('.product-details').length){
            var input =$('#inputQuantity');
            var id =$('#inputId').val();
        } else {
            var input = $(this).parents('.product-image-wrapper').first().find('input[type="number"]');
            var id = $(this).parents('.product-image-wrapper').first().find('a[href*="product/detail"]').first().attr('href').replace('/product/detail/', '');
        }
        //TODO : user
        addTo(input, id, "addtowishlist")
    })

    $(document).on("click", ".add-to-cart-btn", function () {
        if ($(this).parents('.product-details').length){
            var input =$('#inputQuantity');
            var id =$('#inputId').val();
        } else {
            var input = $(this).parents('.product-image-wrapper').first().find('input[type="number"]');
            var id = $(this).parents('.product-image-wrapper').first().find('a[href*="product/detail"]').first().attr('href').replace('/product/detail/', '');
        }
        //TODO : user
        addTo(input, id, "addtocart");

    })

    function addTo(input, id, url){
        //test de la quantité
        var quantityS = input.val();
        var quantity = parseInt(quantityS);
        if (isNaN(quantity)|| quantity == 0 || quantity == "" || quantity == undefined || input.attr('min') > quantity || input.attr('max') < quantity) {
            input.addClass('error');
        } else {
            var string = "id_user=1&id_product=" + id + "&quantity=" + quantity;
            $.ajax({
                type: "POST",
                url: "http://localhost:8080/product/" + url,
                data: string,
                success: function (dataReturn) {
                    alert("success");
                },
                error: function () {
                    alert("Error on cart !");
                }
            })
        }
    }

    /*
        eneleve la classe error sur les input de quantity
    */
    $(document).on("change", 'input.error', function(){
        $(this).removeClass('error');
    })
})