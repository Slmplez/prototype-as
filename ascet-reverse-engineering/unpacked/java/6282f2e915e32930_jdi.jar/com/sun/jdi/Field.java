/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi;

import com.sun.jdi.ClassNotLoadedException;
import com.sun.jdi.Type;
import com.sun.jdi.TypeComponent;

public interface Field
extends TypeComponent,
Comparable {
    public boolean equals(Object var1);

    public int hashCode();

    public boolean isEnumConstant();

    public boolean isTransient();

    public boolean isVolatile();

    public Type type() throws ClassNotLoadedException;

    public String typeName();
}

