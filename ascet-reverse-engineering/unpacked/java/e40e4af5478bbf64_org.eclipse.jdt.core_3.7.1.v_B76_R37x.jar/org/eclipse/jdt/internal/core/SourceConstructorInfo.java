/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.internal.core.SourceMethodElementInfo;

public class SourceConstructorInfo
extends SourceMethodElementInfo {
    private static final char[] RETURN_TYPE_NAME = new char[]{'v', 'o', 'i', 'd'};

    public boolean isAnnotationMethod() {
        return false;
    }

    public boolean isConstructor() {
        return true;
    }

    public char[] getReturnTypeName() {
        return RETURN_TYPE_NAME;
    }

    protected void setReturnType(char[] type) {
    }
}

