/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IWorkbenchPart;

public interface IPartListener {
    public void partActivated(IWorkbenchPart var1);

    public void partBroughtToTop(IWorkbenchPart var1);

    public void partClosed(IWorkbenchPart var1);

    public void partDeactivated(IWorkbenchPart var1);

    public void partOpened(IWorkbenchPart var1);
}

