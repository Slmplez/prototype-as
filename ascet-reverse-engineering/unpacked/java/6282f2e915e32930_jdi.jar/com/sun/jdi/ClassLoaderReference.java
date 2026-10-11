/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi;

import com.sun.jdi.ObjectReference;
import java.util.List;

public interface ClassLoaderReference
extends ObjectReference {
    public List definedClasses();

    public List visibleClasses();
}

