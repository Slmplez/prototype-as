/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.dom.StructuralPropertyDescriptor;

public final class ChildListPropertyDescriptor
extends StructuralPropertyDescriptor {
    final Class elementType;
    final boolean cycleRisk;

    ChildListPropertyDescriptor(Class nodeClass, String propertyId, Class elementType, boolean cycleRisk) {
        super(nodeClass, propertyId);
        if (elementType == null) {
            throw new IllegalArgumentException();
        }
        this.elementType = elementType;
        this.cycleRisk = cycleRisk;
    }

    public final Class getElementType() {
        return this.elementType;
    }

    public final boolean cycleRisk() {
        return this.cycleRisk;
    }
}

