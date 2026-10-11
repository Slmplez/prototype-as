/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.text.bundle;

import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.text.bundle.SingleManifestHeader;

public class BundleSymbolicNameHeader
extends SingleManifestHeader {
    private static final long serialVersionUID = 1L;

    public BundleSymbolicNameHeader(String name, String value, IBundle bundle, String lineDelimiter) {
        super(name, value, bundle, lineDelimiter);
    }

    public void setId(String id) {
        this.setMainComponent(id);
    }

    public String getId() {
        return this.getMainComponent();
    }

    public void setSingleton(boolean singleton) {
        if (this.getManifestVersion() > 1) {
            this.setDirective("singleton", singleton ? Boolean.toString(true) : null);
            if (this.getAttribute("singleton") != null) {
                this.setAttribute("singleton", null);
            }
        } else {
            this.setAttribute("singleton", singleton ? Boolean.toString(true) : null);
            if (this.getDirective("singleton") != null) {
                this.setDirective("singleton", null);
            }
        }
    }

    public boolean isSingleton() {
        String value = this.getManifestVersion() > 1 ? this.getDirective("singleton") : this.getAttribute("singleton");
        return "true".equals(value);
    }

    public void fixUnsupportedDirective() {
        String value = this.getDirective("singleton");
        if (value != null) {
            this.setAttribute("singleton", value);
            this.setDirective("singleton", null);
        }
    }
}

