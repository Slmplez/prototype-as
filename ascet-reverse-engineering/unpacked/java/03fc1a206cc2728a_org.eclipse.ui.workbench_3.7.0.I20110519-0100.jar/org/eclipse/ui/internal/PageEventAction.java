/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal;

import org.eclipse.ui.IPageListener;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.actions.ActionFactory;
import org.eclipse.ui.actions.PartEventAction;

public abstract class PageEventAction
extends PartEventAction
implements IPageListener,
ActionFactory.IWorkbenchAction {
    private IWorkbenchPage activePage;
    private IWorkbenchWindow workbenchWindow;

    protected PageEventAction(String text, IWorkbenchWindow window) {
        super(text);
        if (window == null) {
            throw new IllegalArgumentException();
        }
        this.workbenchWindow = window;
        this.activePage = window.getActivePage();
        this.workbenchWindow.addPageListener(this);
        this.workbenchWindow.getPartService().addPartListener(this);
    }

    public final IWorkbenchPage getActivePage() {
        return this.activePage;
    }

    public final IWorkbenchWindow getWorkbenchWindow() {
        return this.workbenchWindow;
    }

    public void pageActivated(IWorkbenchPage page) {
        this.activePage = page;
    }

    public void pageClosed(IWorkbenchPage page) {
        if (page == this.activePage) {
            this.activePage = null;
        }
    }

    public void pageOpened(IWorkbenchPage page) {
    }

    public void dispose() {
        if (this.workbenchWindow == null) {
            return;
        }
        this.workbenchWindow.removePageListener(this);
        this.workbenchWindow.getPartService().removePartListener(this);
        this.workbenchWindow = null;
    }
}

