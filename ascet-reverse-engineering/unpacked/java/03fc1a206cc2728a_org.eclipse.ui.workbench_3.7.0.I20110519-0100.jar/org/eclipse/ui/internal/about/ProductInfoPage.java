/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProduct
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.window.IShellProvider
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.internal.about;

import org.eclipse.core.runtime.IProduct;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.window.IShellProvider;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.ui.about.InstallationPage;
import org.eclipse.ui.internal.WorkbenchMessages;

public abstract class ProductInfoPage
extends InstallationPage
implements IShellProvider {
    private IProduct product;
    private String productName;

    protected IProduct getProduct() {
        if (this.product == null) {
            this.product = Platform.getProduct();
        }
        return this.product;
    }

    public String getProductName() {
        if (this.productName == null) {
            if (this.getProduct() != null) {
                this.productName = this.getProduct().getName();
            }
            if (this.productName == null) {
                this.productName = WorkbenchMessages.AboutDialog_defaultProductName;
            }
        }
        return this.productName;
    }

    public void setProductName(String name) {
        this.productName = name;
    }

    abstract String getId();

    protected Composite createOuterComposite(Composite parent) {
        Composite composite = new Composite(parent, 0);
        GridData gd = new GridData(4, 4, true, true);
        composite.setLayoutData((Object)gd);
        GridLayout layout = new GridLayout();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        composite.setLayout((Layout)layout);
        return composite;
    }
}

