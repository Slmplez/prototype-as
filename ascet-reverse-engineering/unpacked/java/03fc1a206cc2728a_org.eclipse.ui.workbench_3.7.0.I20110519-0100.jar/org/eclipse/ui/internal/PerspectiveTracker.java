/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.action.IAction
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.action.IAction;
import org.eclipse.ui.IPageListener;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PerspectiveAdapter;

public class PerspectiveTracker
extends PerspectiveAdapter
implements IPageListener {
    private IWorkbenchWindow window;
    private IAction action;

    protected PerspectiveTracker(IWorkbenchWindow window) {
        Assert.isNotNull((Object)window);
        this.window = window;
        window.addPageListener(this);
        window.addPerspectiveListener(this);
    }

    public PerspectiveTracker(IWorkbenchWindow window, IAction action) {
        this(window);
        this.action = action;
        this.update();
    }

    public void dispose() {
        if (this.window != null) {
            this.window.removePageListener(this);
            this.window.removePerspectiveListener(this);
        }
    }

    public void pageActivated(IWorkbenchPage page) {
        this.update();
    }

    public void pageClosed(IWorkbenchPage page) {
        this.update();
    }

    public void pageOpened(IWorkbenchPage page) {
    }

    public void perspectiveActivated(IWorkbenchPage page, IPerspectiveDescriptor perspective) {
        this.update();
    }

    private void update() {
        if (this.window != null) {
            IPerspectiveDescriptor persp = null;
            IWorkbenchPage page = this.window.getActivePage();
            if (page != null) {
                persp = page.getPerspective();
            }
            this.update(persp);
        }
    }

    protected void update(IPerspectiveDescriptor persp) {
        if (this.action != null) {
            this.action.setEnabled(persp != null);
        }
    }
}

