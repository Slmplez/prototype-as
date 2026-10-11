/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.CharType
 *  com.sun.jdi.Value
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.CharType;
import com.sun.jdi.Value;
import org.eclipse.jdi.internal.PrimitiveTypeImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;

public class CharTypeImpl
extends PrimitiveTypeImpl
implements CharType {
    public CharTypeImpl(VirtualMachineImpl vmImpl) {
        super("CharType", vmImpl, "char", "C");
    }

    public byte tag() {
        return 67;
    }

    public Value createNullValue() {
        return this.virtualMachineImpl().mirrorOf('\u0000');
    }
}

