/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.impl;

import org.eclipse.jdt.internal.compiler.impl.Constant;

public class FloatConstant
extends Constant {
    float value;

    public static Constant fromValue(float value) {
        return new FloatConstant(value);
    }

    private FloatConstant(float value) {
        this.value = value;
    }

    public byte byteValue() {
        return (byte)this.value;
    }

    public char charValue() {
        return (char)this.value;
    }

    public double doubleValue() {
        return this.value;
    }

    public float floatValue() {
        return this.value;
    }

    public int intValue() {
        return (int)this.value;
    }

    public long longValue() {
        return (long)this.value;
    }

    public short shortValue() {
        return (short)this.value;
    }

    public String stringValue() {
        return String.valueOf(this.value);
    }

    public String toString() {
        return "(float)" + this.value;
    }

    public int typeID() {
        return 9;
    }

    public int hashCode() {
        return Float.floatToIntBits(this.value);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (this.getClass() != obj.getClass()) {
            return false;
        }
        FloatConstant other = (FloatConstant)obj;
        return Float.floatToIntBits(this.value) == Float.floatToIntBits(other.value);
    }
}

