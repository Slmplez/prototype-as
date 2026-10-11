/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.action.Action
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.action.Action;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.actions.ActionFactory;
import org.eclipse.ui.internal.PerspectiveTracker;

public abstract class PerspectiveAction
extends Action
implements ActionFactory.IWorkbenchAction {
    private IWorkbenchWindow workbenchWindow;
    private PerspectiveTracker tracker;

    protected PerspectiveAction(IWorkbenchWindow window) {
        Assert.isNotNull((Object)window);
        this.workbenchWindow = window;
        this.tracker = new PerspectiveTracker(window, this);
    }

    protected IWorkbenchWindow getWindow() {
        return this.workbenchWindow;
    }

    public void run() {
        if (this.workbenchWindow == null) {
            return;
        }
        IWorkbenchPage page = this.workbenchWindow.getActivePage();
        if (page != null && page.getPerspective() != null) {
            this.run(page, page.getPerspective());
        }
    }

    protected abstract void run(IWorkbenchPage var1, IPerspectiveDescriptor var2);

    public void dispose() {
        if (this.workbenchWindow == null) {
            return;
        }
        this.tracker.dispose();
        this.workbenchWindow = null;
    }
}

