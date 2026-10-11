/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.ISelection
 */
package org.eclipse.ui;

import java.util.EventListener;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.ui.IWorkbenchPart;

public interface ISelectionListener
extends EventListener {
    public void selectionChanged(IWorkbenchPart var1, ISelection var2);
}

