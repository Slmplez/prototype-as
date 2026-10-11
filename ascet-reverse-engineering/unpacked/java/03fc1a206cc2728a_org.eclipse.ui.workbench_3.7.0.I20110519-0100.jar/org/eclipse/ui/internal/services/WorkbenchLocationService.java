/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.services;

import org.eclipse.ui.IEditorSite;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.services.IWorkbenchLocationService;
import org.eclipse.ui.part.IPageSite;
import org.eclipse.ui.services.IDisposable;

public class WorkbenchLocationService
implements IWorkbenchLocationService,
IDisposable {
    private IEditorSite mpepSite;
    private IPageSite pageSite;
    private IWorkbenchPartSite partSite;
    private String serviceScope;
    private IWorkbench workbench;
    private IWorkbenchWindow window;
    private int level;

    public WorkbenchLocationService(String serviceScope, IWorkbench workbench, IWorkbenchWindow window, IWorkbenchPartSite partSite, IEditorSite mpepSite, IPageSite pageSite, int level) {
        this.mpepSite = mpepSite;
        this.pageSite = pageSite;
        this.partSite = partSite;
        this.serviceScope = serviceScope;
        this.window = window;
        this.workbench = workbench;
        this.level = level;
    }

    public IEditorSite getMultiPageEditorSite() {
        return this.mpepSite;
    }

    public IPageSite getPageSite() {
        return this.pageSite;
    }

    public IWorkbenchPartSite getPartSite() {
        return this.partSite;
    }

    public String getServiceScope() {
        return this.serviceScope;
    }

    public IWorkbench getWorkbench() {
        return this.workbench;
    }

    public IWorkbenchWindow getWorkbenchWindow() {
        return this.window;
    }

    public void dispose() {
        this.mpepSite = null;
        this.pageSite = null;
        this.partSite = null;
        this.serviceScope = null;
        this.workbench = null;
        this.window = null;
    }

    public int getServiceLevel() {
        return this.level;
    }
}

