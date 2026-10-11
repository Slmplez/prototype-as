/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.text.bundle;

import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.text.bundle.SingleManifestHeader;

public class BundleNameHeader
extends SingleManifestHeader {
    private static final long serialVersionUID = 1L;

    public BundleNameHeader(String name, String value, IBundle bundle, String lineDelimiter) {
        super(name, value, bundle, lineDelimiter);
    }

    public String getBundleName() {
        return this.getMainComponent();
    }

    public void setBundleName(String name) {
        this.setMainComponent(name);
    }
}

