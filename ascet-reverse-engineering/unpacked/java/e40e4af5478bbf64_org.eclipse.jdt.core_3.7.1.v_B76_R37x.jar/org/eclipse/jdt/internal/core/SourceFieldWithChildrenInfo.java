/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.internal.core.SourceFieldElementInfo;

public class SourceFieldWithChildrenInfo
extends SourceFieldElementInfo {
    protected IJavaElement[] children;

    public SourceFieldWithChildrenInfo(IJavaElement[] children) {
        this.children = children;
    }

    public IJavaElement[] getChildren() {
        return this.children;
    }
}

