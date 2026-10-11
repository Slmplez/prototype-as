/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.ShortType
 *  com.sun.jdi.Value
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.ShortType;
import com.sun.jdi.Value;
import org.eclipse.jdi.internal.PrimitiveTypeImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;

public class ShortTypeImpl
extends PrimitiveTypeImpl
implements ShortType {
    public ShortTypeImpl(VirtualMachineImpl vmImpl) {
        super("ShortType", vmImpl, "short", "S");
    }

    public byte tag() {
        return 83;
    }

    public Value createNullValue() {
        return this.virtualMachineImpl().mirrorOf((short)0);
    }
}

