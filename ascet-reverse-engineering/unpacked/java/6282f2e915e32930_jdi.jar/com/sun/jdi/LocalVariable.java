/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi;

import com.sun.jdi.ClassNotLoadedException;
import com.sun.jdi.Mirror;
import com.sun.jdi.StackFrame;
import com.sun.jdi.Type;

public interface LocalVariable
extends Mirror,
Comparable {
    public boolean equals(Object var1);

    public String genericSignature();

    public int hashCode();

    public boolean isArgument();

    public boolean isVisible(StackFrame var1);

    public String name();

    public String signature();

    public Type type() throws ClassNotLoadedException;

    public String typeName();
}

