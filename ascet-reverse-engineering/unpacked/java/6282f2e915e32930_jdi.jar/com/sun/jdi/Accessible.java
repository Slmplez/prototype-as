/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi;

public interface Accessible {
    public boolean isPackagePrivate();

    public boolean isPrivate();

    public boolean isProtected();

    public boolean isPublic();

    public int modifiers();
}

