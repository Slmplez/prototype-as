/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.text.bundle;

import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.text.bundle.SingleManifestHeader;

public class LazyStartHeader
extends SingleManifestHeader {
    private static final long serialVersionUID = 1L;

    public LazyStartHeader(String name, String value, IBundle bundle, String lineDelimiter) {
        super(name, value, bundle, lineDelimiter);
    }

    public boolean isLazyStart() {
        return "true".equals(this.getMainComponent());
    }

    public void setLazyStart(boolean lazy) {
        this.setMainComponent(Boolean.toString(lazy));
    }
}

