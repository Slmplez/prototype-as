/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.feature;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.IIdentifiable;
import org.eclipse.pde.internal.core.feature.FeatureObject;
import org.w3c.dom.Node;

public class IdentifiableObject
extends FeatureObject
implements IIdentifiable {
    private static final long serialVersionUID = 1L;
    protected String id;

    public String getId() {
        return this.id;
    }

    protected void parse(Node node) {
        super.parse(node);
        this.id = this.getNodeAttribute(node, "id");
    }

    public void setId(String id) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.id;
        this.id = id;
        this.firePropertyChanged(this, "id", oldValue, id);
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
        if (name.equals("id")) {
            this.setId(newValue != null ? newValue.toString() : null);
        } else {
            super.restoreProperty(name, oldValue, newValue);
        }
    }

    protected void reset() {
        super.reset();
        this.id = null;
    }
}

