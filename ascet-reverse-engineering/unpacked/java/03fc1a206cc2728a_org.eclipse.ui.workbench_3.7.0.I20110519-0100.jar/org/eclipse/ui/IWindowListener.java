/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IWorkbenchWindow;

public interface IWindowListener {
    public void windowActivated(IWorkbenchWindow var1);

    public void windowDeactivated(IWorkbenchWindow var1);

    public void windowClosed(IWorkbenchWindow var1);

    public void windowOpened(IWorkbenchWindow var1);
}

