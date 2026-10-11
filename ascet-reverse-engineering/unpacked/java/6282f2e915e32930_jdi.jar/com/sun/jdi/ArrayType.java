/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi;

import com.sun.jdi.ArrayReference;
import com.sun.jdi.ClassNotLoadedException;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.Type;

public interface ArrayType
extends ReferenceType {
    public String componentSignature();

    public Type componentType() throws ClassNotLoadedException;

    public String componentTypeName();

    public ArrayReference newInstance(int var1);
}

