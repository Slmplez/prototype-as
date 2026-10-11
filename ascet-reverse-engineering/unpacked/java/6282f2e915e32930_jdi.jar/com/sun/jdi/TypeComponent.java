/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi;

import com.sun.jdi.Accessible;
import com.sun.jdi.Mirror;
import com.sun.jdi.ReferenceType;

public interface TypeComponent
extends Mirror,
Accessible {
    public ReferenceType declaringType();

    public String genericSignature();

    public boolean isFinal();

    public boolean isStatic();

    public boolean isSynthetic();

    public String name();

    public String signature();
}

