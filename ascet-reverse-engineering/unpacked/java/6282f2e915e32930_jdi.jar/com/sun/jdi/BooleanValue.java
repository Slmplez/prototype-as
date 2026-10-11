/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi;

import com.sun.jdi.PrimitiveValue;

public interface BooleanValue
extends PrimitiveValue {
    public boolean equals(Object var1);

    public int hashCode();

    public boolean value();
}

