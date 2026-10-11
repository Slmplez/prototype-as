/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.internal.core.SourceMethodElementInfo;

public class SourceMethodInfo
extends SourceMethodElementInfo {
    protected char[] returnType;

    public boolean isAnnotationMethod() {
        return false;
    }

    public boolean isConstructor() {
        return false;
    }

    public char[] getReturnTypeName() {
        return this.returnType;
    }

    protected void setReturnType(char[] type) {
        this.returnType = type;
    }
}

