/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ClassObjectReference
 *  com.sun.jdi.ObjectReference
 *  com.sun.jdi.Type
 */
package org.eclipse.jdt.internal.debug.core.model;

import com.sun.jdi.ClassObjectReference;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.Type;
import org.eclipse.jdt.debug.core.IJavaClassObject;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIObjectValue;
import org.eclipse.jdt.internal.debug.core.model.JDIType;

public class JDIClassObjectValue
extends JDIObjectValue
implements IJavaClassObject {
    public JDIClassObjectValue(JDIDebugTarget target, ClassObjectReference object) {
        super(target, (ObjectReference)object);
    }

    public IJavaType getInstanceType() {
        return JDIType.createType((JDIDebugTarget)this.getDebugTarget(), (Type)this.getUnderlyingClassObject().reflectedType());
    }

    protected ClassObjectReference getUnderlyingClassObject() {
        return (ClassObjectReference)this.getUnderlyingValue();
    }
}

