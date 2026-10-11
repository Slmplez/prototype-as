/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.impl;

import org.eclipse.jdt.internal.compiler.impl.Constant;

public class ByteConstant
extends Constant {
    private byte value;

    public static Constant fromValue(byte value) {
        return new ByteConstant(value);
    }

    private ByteConstant(byte value) {
        this.value = value;
    }

    public byte byteValue() {
        return this.value;
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
        return this.value;
    }

    public long longValue() {
        return this.value;
    }

    public short shortValue() {
        return this.value;
    }

    public String stringValue() {
        return String.valueOf(this.value);
    }

    public String toString() {
        return "(byte)" + this.value;
    }

    public int typeID() {
        return 3;
    }

    public int hashCode() {
        return this.value;
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
        ByteConstant other = (ByteConstant)obj;
        return this.value == other.value;
    }
}

