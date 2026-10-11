/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.PlatformObject
 */
package org.eclipse.pde.internal.core.product;

import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.pde.core.ModelChangedEvent;
import org.eclipse.pde.internal.core.iproduct.IProduct;
import org.eclipse.pde.internal.core.iproduct.IProductModel;
import org.eclipse.pde.internal.core.iproduct.IProductObject;
import org.eclipse.pde.internal.core.util.PDEXMLHelper;

public abstract class ProductObject
extends PlatformObject
implements IProductObject {
    private static final long serialVersionUID = 1L;
    private transient IProductModel fModel;

    public ProductObject(IProductModel model) {
        this.fModel = model;
    }

    public IProductModel getModel() {
        return this.fModel;
    }

    public void setModel(IProductModel model) {
        this.fModel = model;
    }

    public IProduct getProduct() {
        return this.getModel().getProduct();
    }

    protected void firePropertyChanged(String property, Object oldValue, Object newValue) {
        this.firePropertyChanged(this, property, oldValue, newValue);
    }

    protected void firePropertyChanged(IProductObject object, String property, Object oldValue, Object newValue) {
        if (this.fModel.isEditable()) {
            IProductModel provider = this.fModel;
            provider.fireModelObjectChanged(object, property, oldValue, newValue);
        }
    }

    protected void fireStructureChanged(IProductObject child, int changeType) {
        this.fireStructureChanged(new IProductObject[]{child}, changeType);
    }

    protected void fireStructureChanged(IProductObject[] children, int changeType) {
        if (this.fModel.isEditable()) {
            IProductModel provider = this.fModel;
            provider.fireModelChanged(new ModelChangedEvent(provider, changeType, children, null));
        }
    }

    protected boolean isEditable() {
        return this.getModel().isEditable();
    }

    public String getWritableString(String source) {
        return PDEXMLHelper.getWritableString(source);
    }
}

