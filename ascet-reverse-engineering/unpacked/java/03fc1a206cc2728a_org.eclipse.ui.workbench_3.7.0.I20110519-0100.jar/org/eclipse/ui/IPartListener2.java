/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IWorkbenchPartReference;

public interface IPartListener2 {
    public void partActivated(IWorkbenchPartReference var1);

    public void partBroughtToTop(IWorkbenchPartReference var1);

    public void partClosed(IWorkbenchPartReference var1);

    public void partDeactivated(IWorkbenchPartReference var1);

    public void partOpened(IWorkbenchPartReference var1);

    public void partHidden(IWorkbenchPartReference var1);

    public void partVisible(IWorkbenchPartReference var1);

    public void partInputChanged(IWorkbenchPartReference var1);
}

