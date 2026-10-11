/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.text.bundle;

import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.text.bundle.SingleManifestHeader;

public class BundleVendorHeader
extends SingleManifestHeader {
    private static final long serialVersionUID = 1L;

    public BundleVendorHeader(String name, String value, IBundle bundle, String lineDelimiter) {
        super(name, value, bundle, lineDelimiter);
    }

    public void setVendor(String vendor) {
        this.setMainComponent(vendor);
    }

    public String getVendor() {
        return this.getMainComponent();
    }
}

