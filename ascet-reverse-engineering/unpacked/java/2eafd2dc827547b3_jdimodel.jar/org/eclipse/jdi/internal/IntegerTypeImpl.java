/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.IntegerType
 *  com.sun.jdi.Value
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.IntegerType;
import com.sun.jdi.Value;
import org.eclipse.jdi.internal.PrimitiveTypeImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;

public class IntegerTypeImpl
extends PrimitiveTypeImpl
implements IntegerType {
    public IntegerTypeImpl(VirtualMachineImpl vmImpl) {
        super("IntegerType", vmImpl, "int", "I");
    }

    public byte tag() {
        return 73;
    }

    public Value createNullValue() {
        return this.virtualMachineImpl().mirrorOf(0);
    }
}

