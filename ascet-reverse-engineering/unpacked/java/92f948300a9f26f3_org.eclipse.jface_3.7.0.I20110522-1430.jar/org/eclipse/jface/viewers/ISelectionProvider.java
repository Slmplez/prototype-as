/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;

public interface ISelectionProvider {
    public void addSelectionChangedListener(ISelectionChangedListener var1);

    public ISelection getSelection();

    public void removeSelectionChangedListener(ISelectionChangedListener var1);

    public void setSelection(ISelection var1);
}

