/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.dom.StructuralPropertyDescriptor;

public final class SimplePropertyDescriptor
extends StructuralPropertyDescriptor {
    private final Class valueType;
    private final boolean mandatory;
    static /* synthetic */ Class class$0;

    SimplePropertyDescriptor(Class nodeClass, String propertyId, Class valueType, boolean mandatory) {
        block8: {
            block7: {
                super(nodeClass, propertyId);
                if (valueType == null) break block7;
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.jdt.core.dom.ASTNode");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if (!clazz.isAssignableFrom(valueType)) break block8;
            }
            throw new IllegalArgumentException();
        }
        this.valueType = valueType;
        this.mandatory = mandatory;
    }

    public Class getValueType() {
        return this.valueType;
    }

    public boolean isMandatory() {
        return this.mandatory;
    }
}

