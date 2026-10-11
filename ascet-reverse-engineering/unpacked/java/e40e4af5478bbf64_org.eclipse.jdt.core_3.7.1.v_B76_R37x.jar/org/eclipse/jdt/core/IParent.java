/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.JavaModelException;

public interface IParent {
    public IJavaElement[] getChildren() throws JavaModelException;

    public boolean hasChildren() throws JavaModelException;
}

