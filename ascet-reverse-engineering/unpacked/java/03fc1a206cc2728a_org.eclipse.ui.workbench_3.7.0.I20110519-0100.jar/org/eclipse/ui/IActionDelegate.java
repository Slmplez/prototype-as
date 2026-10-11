/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.viewers.ISelection
 */
package org.eclipse.ui;

import org.eclipse.jface.action.IAction;
import org.eclipse.jface.viewers.ISelection;

public interface IActionDelegate {
    public void run(IAction var1);

    public void selectionChanged(IAction var1, ISelection var2);
}

