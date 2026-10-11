/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.internal.core.SourceMethodInfo;

public class SourceMethodWithChildrenInfo
extends SourceMethodInfo {
    protected IJavaElement[] children;

    public SourceMethodWithChildrenInfo(IJavaElement[] children) {
        this.children = children;
    }

    public IJavaElement[] getChildren() {
        return this.children;
    }
}

