package com.rizomm.misys.model.order.form;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

/**
 * Created by anthonycallaert on 12/04/15.
 */
public class CartProductForm {
    @NotNull
    @Min(value = 1)
    private int productId;

    @NotNull
    @Min(value = 1)
    private int quantity;

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
