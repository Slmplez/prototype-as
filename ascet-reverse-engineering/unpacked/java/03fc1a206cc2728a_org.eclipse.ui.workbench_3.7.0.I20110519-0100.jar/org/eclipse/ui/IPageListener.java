/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IWorkbenchPage;

public interface IPageListener {
    public void pageActivated(IWorkbenchPage var1);

    public void pageClosed(IWorkbenchPage var1);

    public void pageOpened(IWorkbenchPage var1);
}

