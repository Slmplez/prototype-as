/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.DoubleType
 *  com.sun.jdi.Value
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.DoubleType;
import com.sun.jdi.Value;
import org.eclipse.jdi.internal.PrimitiveTypeImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;

public class DoubleTypeImpl
extends PrimitiveTypeImpl
implements DoubleType {
    public DoubleTypeImpl(VirtualMachineImpl vmImpl) {
        super("DoubleType", vmImpl, "double", "D");
    }

    public byte tag() {
        return 68;
    }

    public Value createNullValue() {
        return this.virtualMachineImpl().mirrorOf(0.0);
    }
}

