/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.Value
 */
package org.eclipse.jdt.internal.debug.core.model;

import com.sun.jdi.Value;
import java.util.Collections;
import java.util.List;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIValue;
import org.eclipse.jdt.internal.debug.core.model.JDIVoidType;

public class JDIVoidValue
extends JDIValue {
    public JDIVoidValue(JDIDebugTarget target) {
        super(target, (Value)(target.getVM() != null ? target.getVM().mirrorOfVoid() : null));
    }

    protected List getVariablesList() {
        return Collections.EMPTY_LIST;
    }

    public String getReferenceTypeName() {
        return "void";
    }

    public String getValueString() {
        return "null";
    }

    public String getSignature() {
        return "V";
    }

    public int getArrayLength() {
        return -1;
    }

    public IJavaType getJavaType() {
        return new JDIVoidType((JDIDebugTarget)this.getDebugTarget());
    }

    public String toString() {
        return "void";
    }
}

