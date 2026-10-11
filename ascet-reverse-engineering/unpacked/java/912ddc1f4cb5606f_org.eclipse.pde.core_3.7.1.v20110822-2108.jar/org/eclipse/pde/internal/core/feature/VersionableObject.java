/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.feature;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.feature.IdentifiableObject;
import org.eclipse.pde.internal.core.ifeature.IVersionable;
import org.w3c.dom.Node;

public class VersionableObject
extends IdentifiableObject
implements IVersionable {
    private static final long serialVersionUID = 1L;
    protected String version;

    public String getVersion() {
        return this.version;
    }

    protected void parse(Node node) {
        super.parse(node);
        this.version = this.getNodeAttribute(node, "version");
    }

    public void setVersion(String version) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.version;
        this.version = version;
        this.firePropertyChanged(this, "version", oldValue, version);
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
        if (name.equals("version")) {
            this.setVersion(newValue != null ? newValue.toString() : null);
        } else {
            super.restoreProperty(name, oldValue, newValue);
        }
    }

    protected void reset() {
        super.reset();
        this.version = null;
    }
}

