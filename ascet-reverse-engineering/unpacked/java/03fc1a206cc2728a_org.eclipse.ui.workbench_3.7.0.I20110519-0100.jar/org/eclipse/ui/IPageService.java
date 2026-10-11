/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IPageListener;
import org.eclipse.ui.IPerspectiveListener;
import org.eclipse.ui.IWorkbenchPage;

public interface IPageService {
    public void addPageListener(IPageListener var1);

    public void addPerspectiveListener(IPerspectiveListener var1);

    public IWorkbenchPage getActivePage();

    public void removePageListener(IPageListener var1);

    public void removePerspectiveListener(IPerspectiveListener var1);
}

