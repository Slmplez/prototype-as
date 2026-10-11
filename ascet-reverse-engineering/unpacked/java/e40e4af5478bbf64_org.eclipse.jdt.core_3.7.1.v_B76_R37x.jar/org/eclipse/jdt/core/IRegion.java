/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core;

import org.eclipse.jdt.core.IJavaElement;

public interface IRegion {
    public void add(IJavaElement var1);

    public boolean contains(IJavaElement var1);

    public IJavaElement[] getElements();

    public boolean remove(IJavaElement var1);
}

