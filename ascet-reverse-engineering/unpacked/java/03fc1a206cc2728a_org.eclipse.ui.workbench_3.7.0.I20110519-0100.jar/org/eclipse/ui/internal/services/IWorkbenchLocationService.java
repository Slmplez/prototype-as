/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.services;

import org.eclipse.ui.IEditorSite;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.part.IPageSite;

public interface IWorkbenchLocationService {
    public String getServiceScope();

    public int getServiceLevel();

    public IWorkbench getWorkbench();

    public IWorkbenchWindow getWorkbenchWindow();

    public IWorkbenchPartSite getPartSite();

    public IEditorSite getMultiPageEditorSite();

    public IPageSite getPageSite();
}

