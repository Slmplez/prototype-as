/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;

public abstract class StructuralPropertyDescriptor {
    private final String propertyId;
    private final Class nodeClass;

    StructuralPropertyDescriptor(Class nodeClass, String propertyId) {
        if (nodeClass == null || propertyId == null) {
            throw new IllegalArgumentException();
        }
        this.propertyId = propertyId;
        this.nodeClass = nodeClass;
    }

    public final String getId() {
        return this.propertyId;
    }

    public final Class getNodeClass() {
        return this.nodeClass;
    }

    public final boolean isSimpleProperty() {
        return this instanceof SimplePropertyDescriptor;
    }

    public final boolean isChildProperty() {
        return this instanceof ChildPropertyDescriptor;
    }

    public final boolean isChildListProperty() {
        return this instanceof ChildListPropertyDescriptor;
    }

    public String toString() {
        StringBuffer b = new StringBuffer();
        if (this.isChildListProperty()) {
            b.append("ChildList");
        }
        if (this.isChildProperty()) {
            b.append("Child");
        }
        if (this.isSimpleProperty()) {
            b.append("Simple");
        }
        b.append("Property[");
        if (this.nodeClass != null) {
            b.append(this.nodeClass.getName());
        }
        b.append(",");
        if (this.propertyId != null) {
            b.append(this.propertyId);
        }
        b.append("]");
        return b.toString();
    }
}

