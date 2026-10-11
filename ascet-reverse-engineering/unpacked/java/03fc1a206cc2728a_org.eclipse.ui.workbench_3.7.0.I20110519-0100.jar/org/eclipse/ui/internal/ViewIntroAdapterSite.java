/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.IKeyBindingService;
import org.eclipse.ui.IViewSite;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.intro.IntroDescriptor;
import org.eclipse.ui.intro.IIntroSite;

final class ViewIntroAdapterSite
implements IIntroSite {
    private IntroDescriptor descriptor;
    private IViewSite viewSite;

    public ViewIntroAdapterSite(IViewSite viewSite, IntroDescriptor descriptor) {
        this.viewSite = viewSite;
        this.descriptor = descriptor;
    }

    public IActionBars getActionBars() {
        return this.viewSite.getActionBars();
    }

    public Object getAdapter(Class adapter) {
        return this.viewSite.getAdapter(adapter);
    }

    public String getId() {
        return this.descriptor.getId();
    }

    public IKeyBindingService getKeyBindingService() {
        return this.viewSite.getKeyBindingService();
    }

    public IWorkbenchPage getPage() {
        return this.viewSite.getPage();
    }

    public String getPluginId() {
        return this.descriptor.getPluginId();
    }

    public ISelectionProvider getSelectionProvider() {
        return this.viewSite.getSelectionProvider();
    }

    public final Object getService(Class key) {
        return this.viewSite.getService(key);
    }

    public Shell getShell() {
        return this.viewSite.getShell();
    }

    public IWorkbenchWindow getWorkbenchWindow() {
        return this.viewSite.getWorkbenchWindow();
    }

    public final boolean hasService(Class key) {
        return this.viewSite.hasService(key);
    }

    public void setSelectionProvider(ISelectionProvider provider) {
        this.viewSite.setSelectionProvider(provider);
    }

    public String toString() {
        return this.viewSite.toString();
    }
}

