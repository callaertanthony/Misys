package com.rizomm.misys.model.order.form;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

/**
 * Created by anthonycallaert on 13/04/15.
 */
public class WishlistProductForm {
    @NotNull
    @Min(value = 1)
    private int productId;

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }
}
