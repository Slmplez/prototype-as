/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.resolver.VersionRange
 */
package org.eclipse.pde.internal.core.text.bundle;

import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.text.bundle.SingleManifestHeader;

public class BundleVersionHeader
extends SingleManifestHeader {
    private static final long serialVersionUID = 1L;

    public BundleVersionHeader(String name, String value, IBundle bundle, String lineDelimiter) {
        super(name, value, bundle, lineDelimiter);
    }

    public void setVersionRange(String range) {
        this.setMainComponent(range);
    }

    public VersionRange getVersionRange() {
        return new VersionRange(this.getMainComponent());
    }
}

