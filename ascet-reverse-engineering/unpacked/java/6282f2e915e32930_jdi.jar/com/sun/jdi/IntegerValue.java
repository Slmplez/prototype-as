/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi;

import com.sun.jdi.PrimitiveValue;

public interface IntegerValue
extends PrimitiveValue,
Comparable {
    public boolean equals(Object var1);

    public int hashCode();

    public int value();
}

