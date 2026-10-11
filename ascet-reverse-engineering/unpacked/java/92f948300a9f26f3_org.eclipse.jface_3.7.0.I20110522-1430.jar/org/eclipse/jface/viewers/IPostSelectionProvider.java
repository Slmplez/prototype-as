/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.ISelectionProvider;

public interface IPostSelectionProvider
extends ISelectionProvider {
    public void addPostSelectionChangedListener(ISelectionChangedListener var1);

    public void removePostSelectionChangedListener(ISelectionChangedListener var1);
}

