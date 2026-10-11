/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.FloatType
 *  com.sun.jdi.Value
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.FloatType;
import com.sun.jdi.Value;
import org.eclipse.jdi.internal.PrimitiveTypeImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;

public class FloatTypeImpl
extends PrimitiveTypeImpl
implements FloatType {
    public FloatTypeImpl(VirtualMachineImpl vmImpl) {
        super("FloatType", vmImpl, "float", "F");
    }

    public byte tag() {
        return 70;
    }

    public Value createNullValue() {
        return this.virtualMachineImpl().mirrorOf(0.0f);
    }
}

