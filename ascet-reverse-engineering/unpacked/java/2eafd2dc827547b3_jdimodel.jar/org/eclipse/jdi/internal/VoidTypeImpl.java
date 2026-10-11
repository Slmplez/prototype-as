/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.Value
 *  com.sun.jdi.VoidType
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.Value;
import com.sun.jdi.VoidType;
import org.eclipse.jdi.internal.JDIMessages;
import org.eclipse.jdi.internal.TypeImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.VoidValueImpl;

public class VoidTypeImpl
extends TypeImpl
implements VoidType {
    public VoidTypeImpl(VirtualMachineImpl vmImpl) {
        super("VoidType", vmImpl, "void", "V");
    }

    public int modifiers() {
        throw new InternalError(JDIMessages.VoidTypeImpl_A_VoidType_does_not_have_modifiers_1);
    }

    public Value createNullValue() {
        return new VoidValueImpl(this.virtualMachineImpl());
    }
}

