$(function () {
    // masquage/afficahe au click sur une marque
    var prixMin = 0;
    var prixMax = 999999;
    var brandAVal = $('.left-sidebar .brands-name a').first().attr('data-id-brand');
    var timeout;

    // initialisisation du "price range" dans le mene de gauche
    $('#priceRange').slider({
        tooltip: 'always'
    });

    function showOrHide() {
        $('.product-result').each(function () {
            var prix = $(this).find('input[id*="productPrice"]').val();
            var brand = $(this).find('input[id*="productBrandId"]').val();
            if (brandAVal == '') {
                if (prix < prixMin || prix > prixMax) {
                    $(this).attr('data-show', false).hide();
                } else {
                    $(this).attr('data-show', true).show();
                }
            } else {
                if (prix < prixMin || prix > prixMax || brand != brandAVal) {
                    $(this).attr('data-show', false).hide();
                } else {
                    $(this).attr('data-show', true).show();
                }
            }
        });
        //window.clearTimeout(timeout);
        //if (!$('.product-result[data-show="true"]').length) {
        //    timeout = window.setTimeout(function () {
        //        $('#noResult').show();
        //    }, 800);
        //} else {
        //    $('#noResult').hide();
        //}
    }

    $(document).on('click', '.left-sidebar .brands-name a', function () {
        brandAVal = $(this).attr('data-id-brand');
        showOrHide();
    });

    //masquage/affichage en fonction du prix
    $("#priceRange").on("slide", function (slideEvt) {
        prixMin = slideEvt.value[0];
        prixMax = slideEvt.value[1];
        showOrHide();
    });

    showOrHide();
});