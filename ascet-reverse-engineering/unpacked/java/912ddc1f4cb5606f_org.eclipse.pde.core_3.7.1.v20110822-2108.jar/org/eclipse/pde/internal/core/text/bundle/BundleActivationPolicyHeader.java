/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.text.bundle;

import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.text.bundle.LazyStartHeader;

public class BundleActivationPolicyHeader
extends LazyStartHeader {
    private static final long serialVersionUID = 1L;

    public BundleActivationPolicyHeader(String name, String value, IBundle bundle, String lineDelimiter) {
        super(name, value, bundle, lineDelimiter);
    }

    public boolean isLazyStart() {
        return "lazy".equals(this.getMainComponent());
    }

    public void setLazyStart(boolean lazy) {
        this.setMainComponent(lazy ? "lazy" : null);
    }

    public String write() {
        if (this.isLazyStart()) {
            return super.write();
        }
        return "";
    }
}

