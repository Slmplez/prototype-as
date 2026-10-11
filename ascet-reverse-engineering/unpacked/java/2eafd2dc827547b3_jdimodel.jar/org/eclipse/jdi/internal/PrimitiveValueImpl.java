/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.InternalException
 *  com.sun.jdi.PrimitiveType
 *  com.sun.jdi.PrimitiveValue
 */
package org.eclipse.jdi.internal;

import com.sun.jdi.InternalException;
import com.sun.jdi.PrimitiveType;
import com.sun.jdi.PrimitiveValue;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import org.eclipse.jdi.internal.BooleanValueImpl;
import org.eclipse.jdi.internal.ByteValueImpl;
import org.eclipse.jdi.internal.CharValueImpl;
import org.eclipse.jdi.internal.DoubleValueImpl;
import org.eclipse.jdi.internal.FloatValueImpl;
import org.eclipse.jdi.internal.IntegerValueImpl;
import org.eclipse.jdi.internal.JDIMessages;
import org.eclipse.jdi.internal.LongValueImpl;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.PrimitiveTypeImpl;
import org.eclipse.jdi.internal.ShortValueImpl;
import org.eclipse.jdi.internal.ValueImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;

public abstract class PrimitiveValueImpl
extends ValueImpl
implements PrimitiveValue,
Comparable {
    Object fValue;

    public PrimitiveValueImpl(String description, VirtualMachineImpl vmImpl, Object value) {
        super(description, vmImpl);
        this.fValue = value;
    }

    public boolean booleanValue() {
        if (this.fValue instanceof Boolean) {
            return (Boolean)this.fValue;
        }
        if (this.fValue instanceof Character) {
            return ((Character)this.fValue).charValue() != '\u0000';
        }
        return ((Number)this.fValue).doubleValue() != 0.0;
    }

    public char charValue() {
        if (this.fValue instanceof Boolean) {
            return (Boolean)this.fValue != false ? (char)'\u0001' : '\u0000';
        }
        if (this.fValue instanceof Character) {
            return ((Character)this.fValue).charValue();
        }
        return (char)((Number)this.fValue).intValue();
    }

    public byte byteValue() {
        if (this.fValue instanceof Boolean) {
            return (Boolean)this.fValue != false ? (byte)1 : 0;
        }
        if (this.fValue instanceof Character) {
            return (byte)((Character)this.fValue).charValue();
        }
        return ((Number)this.fValue).byteValue();
    }

    public double doubleValue() {
        if (this.fValue instanceof Boolean) {
            return (Boolean)this.fValue != false ? 1.0 : 0.0;
        }
        if (this.fValue instanceof Character) {
            return ((Character)this.fValue).charValue();
        }
        return ((Number)this.fValue).doubleValue();
    }

    public float floatValue() {
        if (this.fValue instanceof Boolean) {
            return (Boolean)this.fValue != false ? 1.0f : 0.0f;
        }
        if (this.fValue instanceof Character) {
            return ((Character)this.fValue).charValue();
        }
        return ((Number)this.fValue).floatValue();
    }

    public int intValue() {
        if (this.fValue instanceof Boolean) {
            return (Boolean)this.fValue != false ? 1 : 0;
        }
        if (this.fValue instanceof Character) {
            return ((Character)this.fValue).charValue();
        }
        return ((Number)this.fValue).intValue();
    }

    public long longValue() {
        if (this.fValue instanceof Boolean) {
            return (Boolean)this.fValue != false ? 1L : 0L;
        }
        if (this.fValue instanceof Character) {
            return ((Character)this.fValue).charValue();
        }
        return ((Number)this.fValue).longValue();
    }

    public short shortValue() {
        if (this.fValue instanceof Boolean) {
            return (Boolean)this.fValue != false ? (short)1 : 0;
        }
        if (this.fValue instanceof Character) {
            return (short)((Character)this.fValue).charValue();
        }
        return ((Number)this.fValue).shortValue();
    }

    public boolean equals(Object object) {
        return object != null && object.getClass().equals(this.getClass()) && this.fValue.equals(((PrimitiveValueImpl)object).fValue);
    }

    public int hashCode() {
        return this.fValue.hashCode();
    }

    public int compareTo(Object obj) {
        if (this.fValue instanceof Character) {
            return ((Character)this.fValue).compareTo((Character)obj);
        }
        if (this.fValue instanceof Byte) {
            return ((Byte)this.fValue).compareTo((Byte)obj);
        }
        if (this.fValue instanceof Double) {
            return ((Double)this.fValue).compareTo((Double)obj);
        }
        if (this.fValue instanceof Float) {
            return ((Float)this.fValue).compareTo((Float)obj);
        }
        if (this.fValue instanceof Integer) {
            return ((Integer)this.fValue).compareTo((Integer)obj);
        }
        if (this.fValue instanceof Long) {
            return ((Long)this.fValue).compareTo((Long)obj);
        }
        if (this.fValue instanceof Short) {
            return ((Short)this.fValue).compareTo((Short)obj);
        }
        throw new InternalException(JDIMessages.PrimitiveValueImpl_Invalid_Primitive_Value_encountered_1);
    }

    public String toString() {
        return this.fValue.toString();
    }

    public abstract void write(MirrorImpl var1, DataOutputStream var2) throws IOException;

    public static PrimitiveValueImpl readWithoutTag(MirrorImpl target, PrimitiveType type, DataInputStream in) throws IOException {
        switch (((PrimitiveTypeImpl)type).tag()) {
            case 0: {
                return null;
            }
            case 90: {
                return BooleanValueImpl.read(target, in);
            }
            case 66: {
                return ByteValueImpl.read(target, in);
            }
            case 67: {
                return CharValueImpl.read(target, in);
            }
            case 68: {
                return DoubleValueImpl.read(target, in);
            }
            case 70: {
                return FloatValueImpl.read(target, in);
            }
            case 73: {
                return IntegerValueImpl.read(target, in);
            }
            case 74: {
                return LongValueImpl.read(target, in);
            }
            case 83: {
                return ShortValueImpl.read(target, in);
            }
        }
        throw new InternalException(String.valueOf(JDIMessages.PrimitiveValueImpl_Invalid_Primitive_Value_tag_encountered___2) + type);
    }
}

