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

public class FragmentHostHeader
extends SingleManifestHeader {
    private static final long serialVersionUID = 1L;

    public FragmentHostHeader(String name, String value, IBundle bundle, String lineDelimiter) {
        super(name, value, bundle, lineDelimiter);
    }

    public void setHostId(String id) {
        this.setMainComponent(id);
    }

    public String getHostId() {
        return this.getMainComponent();
    }

    public void setHostRange(String range) {
        this.setAttribute("bundle-version", range);
    }

    public VersionRange getHostRange() {
        return new VersionRange(this.getAttribute("bundle-version"));
    }
}

