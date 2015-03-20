/**
 * Created by Olivier on 13/03/2015.
 */
$(function () {
    $(document).on("click", ".add-to-wishlist", function () {
        var quantity = $(this).parents('.product-image-wrapper').first().find('input[type="number"]').val();
        var id = $(this).parents('.product-image-wrapper').first().find('a[href*="product/detail"]').first().attr('href').replace('/product/detail/', '');
        //TODO : user

        var string = "id_user=1&id_product=" + id + "&quantity=" + quantity;
        $.ajax({
            type: "POST",
            url: "http://localhost:8080/product/addtowishlist",
            data: string,
            success: function (dataReturn) {
                alert("success");
            },
            error: function () {
                alert("Error on wishlist !");
            }
        })
    })
})

$(function () {
    $(document).on("click", ".add-to-cart", function () {
        var quantity = $(this).parents('.product-image-wrapper').first().find('input[type="number"]').val();
        var id = $(this).parents('.product-image-wrapper').first().find('a[href*="product/detail"]').first().attr('href').replace('/product/detail/', '');
        //TODO : user

        var string = "id_user=1&id_product=" + id + "&quantity=" + quantity;
        $.ajax({
            type: "POST",
            url: "http://localhost:8080/product/addtocart",
            data: string,
            success: function (dataReturn) {
                alert("success");
            },
            error: function () {
                alert("Error on cart !");
            }
        })
    })
})