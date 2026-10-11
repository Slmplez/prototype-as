/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.debug.core;

import org.eclipse.jdt.debug.core.IJavaValue;

public interface IJavaPrimitiveValue
extends IJavaValue {
    public boolean getBooleanValue();

    public byte getByteValue();

    public char getCharValue();

    public double getDoubleValue();

    public float getFloatValue();

    public int getIntValue();

    public long getLongValue();

    public short getShortValue();
}

