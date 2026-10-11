/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.iproduct;

import org.eclipse.pde.core.IModel;
import org.eclipse.pde.core.IModelChangeProvider;
import org.eclipse.pde.internal.core.iproduct.IProduct;
import org.eclipse.pde.internal.core.iproduct.IProductModelFactory;

public interface IProductModel
extends IModel,
IModelChangeProvider {
    public IProduct getProduct();

    public IProductModelFactory getFactory();

    public String getInstallLocation();
}

