/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.BooleanType
 *  com.sun.jdi.Value
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.BooleanType;
import com.sun.jdi.Value;
import org.eclipse.jdi.internal.PrimitiveTypeImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;

public class BooleanTypeImpl
extends PrimitiveTypeImpl
implements BooleanType {
    public BooleanTypeImpl(VirtualMachineImpl vmImpl) {
        super("BooleanType", vmImpl, "boolean", "Z");
    }

    public byte tag() {
        return 90;
    }

    public Value createNullValue() {
        return this.virtualMachineImpl().mirrorOf(false);
    }
}

