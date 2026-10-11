/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi;

import com.sun.jdi.ReferenceType;
import java.util.List;

public interface InterfaceType
extends ReferenceType {
    public List implementors();

    public List subinterfaces();

    public List superinterfaces();
}

