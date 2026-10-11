/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.impl;

import org.eclipse.jdt.internal.compiler.impl.Constant;

public class DoubleConstant
extends Constant {
    private double value;

    public static Constant fromValue(double value) {
        return new DoubleConstant(value);
    }

    private DoubleConstant(double value) {
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
        return (float)this.value;
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
        if (this == NotAConstant) {
            return "(Constant) NotAConstant";
        }
        return "(double)" + this.value;
    }

    public int typeID() {
        return 8;
    }

    public int hashCode() {
        long temp = Double.doubleToLongBits(this.value);
        return (int)(temp ^ temp >>> 32);
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
        DoubleConstant other = (DoubleConstant)obj;
        return Double.doubleToLongBits(this.value) == Double.doubleToLongBits(other.value);
    }
}

