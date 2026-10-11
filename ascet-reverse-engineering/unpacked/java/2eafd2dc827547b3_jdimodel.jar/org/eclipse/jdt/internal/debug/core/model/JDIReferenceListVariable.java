/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.debug.core.model;

import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.internal.debug.core.logicalstructures.JDIPlaceholderVariable;
import org.eclipse.jdt.internal.debug.core.model.JDIPlaceholderValue;
import org.eclipse.jdt.internal.debug.core.model.JDIReferenceListValue;

public class JDIReferenceListVariable
extends JDIPlaceholderVariable {
    public JDIReferenceListVariable(String name, IJavaObject root) {
        super(name, new JDIReferenceListValue(root));
    }

    public boolean equals(Object obj) {
        if (obj instanceof JDIReferenceListVariable) {
            JDIReferenceListVariable var = (JDIReferenceListVariable)obj;
            if (this.getValue() instanceof JDIPlaceholderValue || var.getValue() instanceof JDIPlaceholderValue) {
                return this == obj;
            }
            return this.getValue().equals(var.getValue());
        }
        return false;
    }

    public int hashCode() {
        return this.getValue().hashCode();
    }
}

