/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.internal.core.InitializerElementInfo;

public class InitializerWithChildrenInfo
extends InitializerElementInfo {
    protected IJavaElement[] children;

    public InitializerWithChildrenInfo(IJavaElement[] children) {
        this.children = children;
    }

    public IJavaElement[] getChildren() {
        return this.children;
    }
}

