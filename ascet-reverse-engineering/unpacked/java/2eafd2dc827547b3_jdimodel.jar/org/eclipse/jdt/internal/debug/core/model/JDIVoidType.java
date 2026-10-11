/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.debug.core.model;

import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIType;

public class JDIVoidType
extends JDIType {
    protected JDIVoidType(JDIDebugTarget target) {
        super(target, null);
    }

    public String getName() {
        return "void";
    }

    public String getSignature() {
        return "V";
    }

    public boolean equals(Object object) {
        return object instanceof JDIVoidType && this.getDebugTarget().equals(((JDIVoidType)object).getDebugTarget());
    }

    public int hashCode() {
        return super.hashCode();
    }
}

