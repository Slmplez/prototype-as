/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.dom.StructuralPropertyDescriptor;

public final class ChildPropertyDescriptor
extends StructuralPropertyDescriptor {
    private final Class childClass;
    private final boolean mandatory;
    final boolean cycleRisk;
    static /* synthetic */ Class class$0;

    ChildPropertyDescriptor(Class nodeClass, String propertyId, Class childType, boolean mandatory, boolean cycleRisk) {
        block8: {
            block7: {
                super(nodeClass, propertyId);
                if (childType == null) break block7;
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.jdt.core.dom.ASTNode");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if (clazz.isAssignableFrom(childType)) break block8;
            }
            throw new IllegalArgumentException();
        }
        this.childClass = childType;
        this.mandatory = mandatory;
        this.cycleRisk = cycleRisk;
    }

    public final Class getChildType() {
        return this.childClass;
    }

    public final boolean isMandatory() {
        return this.mandatory;
    }

    public final boolean cycleRisk() {
        return this.cycleRisk;
    }
}

