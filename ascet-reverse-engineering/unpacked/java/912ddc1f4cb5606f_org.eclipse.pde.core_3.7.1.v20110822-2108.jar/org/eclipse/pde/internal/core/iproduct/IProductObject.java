/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.iproduct;

import java.io.Serializable;
import org.eclipse.pde.core.IWritable;
import org.eclipse.pde.internal.core.iproduct.IProduct;
import org.eclipse.pde.internal.core.iproduct.IProductModel;
import org.w3c.dom.Node;

public interface IProductObject
extends IWritable,
Serializable {
    public IProductModel getModel();

    public void setModel(IProductModel var1);

    public IProduct getProduct();

    public void parse(Node var1);
}

