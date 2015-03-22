$(function () {
    // masquage/afficahe au click sur une marque
    var prixMin = 0;
    var prixMax = 999999;
    var brandAVal = $('.left-sidebar .brands-name a').first().attr('data-id-brand');

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
                    $(this).hide('slow');
                } else {
                    $(this).show('slow');
                }
            } else {
                if (prix < prixMin || prix > prixMax || brand != brandAVal) {
                    $(this).hide('slow');
                } else {
                    $(this).show('slow');
                }
            }
        })
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
});