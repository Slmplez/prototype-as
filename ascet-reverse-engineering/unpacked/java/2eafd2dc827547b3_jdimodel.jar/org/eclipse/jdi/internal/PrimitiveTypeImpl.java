/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.PrimitiveType
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.PrimitiveType;
import org.eclipse.jdi.internal.BooleanTypeImpl;
import org.eclipse.jdi.internal.ByteTypeImpl;
import org.eclipse.jdi.internal.CharTypeImpl;
import org.eclipse.jdi.internal.DoubleTypeImpl;
import org.eclipse.jdi.internal.FloatTypeImpl;
import org.eclipse.jdi.internal.IntegerTypeImpl;
import org.eclipse.jdi.internal.JDIMessages;
import org.eclipse.jdi.internal.LongTypeImpl;
import org.eclipse.jdi.internal.ShortTypeImpl;
import org.eclipse.jdi.internal.TypeImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;

public abstract class PrimitiveTypeImpl
extends TypeImpl
implements PrimitiveType {
    public PrimitiveTypeImpl(String description, VirtualMachineImpl vmImpl, String name, String signature) {
        super(description, vmImpl, name, signature);
    }

    public static PrimitiveTypeImpl create(VirtualMachineImpl vmImpl, String signature) {
        switch (signature.charAt(0)) {
            case 'Z': {
                return new BooleanTypeImpl(vmImpl);
            }
            case 'B': {
                return new ByteTypeImpl(vmImpl);
            }
            case 'C': {
                return new CharTypeImpl(vmImpl);
            }
            case 'S': {
                return new ShortTypeImpl(vmImpl);
            }
            case 'I': {
                return new IntegerTypeImpl(vmImpl);
            }
            case 'J': {
                return new LongTypeImpl(vmImpl);
            }
            case 'F': {
                return new FloatTypeImpl(vmImpl);
            }
            case 'D': {
                return new DoubleTypeImpl(vmImpl);
            }
        }
        throw new InternalError(String.valueOf(JDIMessages.PrimitiveTypeImpl_Invalid_primitive_signature____1) + signature + JDIMessages.PrimitiveTypeImpl___2);
    }

    public abstract byte tag();

    public int modifiers() {
        throw new InternalError(JDIMessages.PrimitiveTypeImpl_A_PrimitiveType_does_not_have_modifiers_3);
    }

    public boolean equals(Object obj) {
        return obj instanceof PrimitiveTypeImpl && this.tag() == ((PrimitiveTypeImpl)obj).tag() && this.virtualMachine().equals(((PrimitiveTypeImpl)obj).virtualMachine());
    }
}

