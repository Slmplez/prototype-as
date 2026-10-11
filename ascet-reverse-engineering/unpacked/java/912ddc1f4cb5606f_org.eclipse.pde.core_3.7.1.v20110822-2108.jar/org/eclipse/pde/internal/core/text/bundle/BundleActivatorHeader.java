/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.text.bundle;

import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.text.bundle.SingleManifestHeader;

public class BundleActivatorHeader
extends SingleManifestHeader {
    private static final long serialVersionUID = 1L;

    public BundleActivatorHeader(String name, String value, IBundle bundle, String lineDelimiter) {
        super(name, value, bundle, lineDelimiter);
    }

    public void setClassName(String className) {
        this.setMainComponent(className);
    }

    public String getClassName() {
        return this.getMainComponent();
    }
}

