/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi;

import com.sun.jdi.ObjectReference;
import com.sun.jdi.ReferenceType;

public interface ClassObjectReference
extends ObjectReference {
    public ReferenceType reflectedType();
}

