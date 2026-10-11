/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ByteType
 *  com.sun.jdi.Value
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.ByteType;
import com.sun.jdi.Value;
import org.eclipse.jdi.internal.PrimitiveTypeImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;

public class ByteTypeImpl
extends PrimitiveTypeImpl
implements ByteType {
    public ByteTypeImpl(VirtualMachineImpl vmImpl) {
        super("ByteType", vmImpl, "byte", "B");
    }

    public byte tag() {
        return 66;
    }

    public Value createNullValue() {
        return this.virtualMachineImpl().mirrorOf((byte)0);
    }
}

