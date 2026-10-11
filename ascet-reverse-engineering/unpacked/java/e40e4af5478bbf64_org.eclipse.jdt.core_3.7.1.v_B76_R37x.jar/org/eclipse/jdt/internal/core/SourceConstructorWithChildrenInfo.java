/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.internal.core.SourceConstructorInfo;

public class SourceConstructorWithChildrenInfo
extends SourceConstructorInfo {
    protected IJavaElement[] children;

    public SourceConstructorWithChildrenInfo(IJavaElement[] children) {
        this.children = children;
    }

    public IJavaElement[] getChildren() {
        return this.children;
    }
}

