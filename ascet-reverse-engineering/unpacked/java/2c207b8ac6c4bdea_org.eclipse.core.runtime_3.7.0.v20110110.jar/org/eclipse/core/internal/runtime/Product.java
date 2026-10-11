/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.app.IBranding
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.internal.runtime;

import org.eclipse.core.runtime.IProduct;
import org.eclipse.equinox.internal.app.IBranding;
import org.osgi.framework.Bundle;

public class Product
implements IProduct {
    IBranding branding;

    public Product(IBranding branding) {
        this.branding = branding;
    }

    public String getApplication() {
        return this.branding.getApplication();
    }

    public Bundle getDefiningBundle() {
        return this.branding.getDefiningBundle();
    }

    public String getDescription() {
        return this.branding.getDescription();
    }

    public String getId() {
        return this.branding.getId();
    }

    public String getName() {
        return this.branding.getName();
    }

    public String getProperty(String key) {
        return this.branding.getProperty(key);
    }
}

