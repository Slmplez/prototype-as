/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.LongType
 *  com.sun.jdi.Value
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.LongType;
import com.sun.jdi.Value;
import org.eclipse.jdi.internal.PrimitiveTypeImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;

public class LongTypeImpl
extends PrimitiveTypeImpl
implements LongType {
    public LongTypeImpl(VirtualMachineImpl vmImpl) {
        super("LongType", vmImpl, "long", "J");
    }

    public byte tag() {
        return 74;
    }

    public Value createNullValue() {
        return this.virtualMachineImpl().mirrorOf(0L);
    }
}

