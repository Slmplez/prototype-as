/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime;

import org.eclipse.core.runtime.IProduct;

public interface IProductProvider {
    public String getName();

    public IProduct[] getProducts();
}

