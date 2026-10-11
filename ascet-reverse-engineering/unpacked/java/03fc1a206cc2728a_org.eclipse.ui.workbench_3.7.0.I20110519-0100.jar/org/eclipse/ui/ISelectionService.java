/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.ISelection
 */
package org.eclipse.ui;

import org.eclipse.jface.viewers.ISelection;
import org.eclipse.ui.ISelectionListener;

public interface ISelectionService {
    public void addSelectionListener(ISelectionListener var1);

    public void addSelectionListener(String var1, ISelectionListener var2);

    public void addPostSelectionListener(ISelectionListener var1);

    public void addPostSelectionListener(String var1, ISelectionListener var2);

    public ISelection getSelection();

    public ISelection getSelection(String var1);

    public void removeSelectionListener(ISelectionListener var1);

    public void removeSelectionListener(String var1, ISelectionListener var2);

    public void removePostSelectionListener(ISelectionListener var1);

    public void removePostSelectionListener(String var1, ISelectionListener var2);
}

