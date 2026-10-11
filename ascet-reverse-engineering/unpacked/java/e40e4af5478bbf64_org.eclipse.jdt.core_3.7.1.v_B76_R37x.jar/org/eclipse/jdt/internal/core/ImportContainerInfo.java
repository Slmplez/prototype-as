/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaElementInfo;

public class ImportContainerInfo
extends JavaElementInfo {
    protected IJavaElement[] children = JavaElement.NO_ELEMENTS;

    public IJavaElement[] getChildren() {
        return this.children;
    }
}

