/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi;

import com.sun.jdi.Value;

public interface PrimitiveValue
extends Value {
    public boolean booleanValue();

    public byte byteValue();

    public char charValue();

    public double doubleValue();

    public float floatValue();

    public int intValue();

    public long longValue();

    public short shortValue();
}

