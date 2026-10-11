/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.ISelection
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.viewers.ISelection;
import org.eclipse.ui.INullSelectionListener;
import org.eclipse.ui.IPageListener;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.AbstractPartSelectionTracker;

public class WindowPartSelectionTracker
extends AbstractPartSelectionTracker
implements IPageListener {
    private IWorkbenchWindow fWindow;
    private final INullSelectionListener selListener = new INullSelectionListener(){

        public void selectionChanged(IWorkbenchPart part, ISelection selection) {
            WindowPartSelectionTracker.this.fireSelection(part, selection);
        }
    };
    private final INullSelectionListener postSelListener = new INullSelectionListener(){

        public void selectionChanged(IWorkbenchPart part, ISelection selection) {
            WindowPartSelectionTracker.this.firePostSelection(part, selection);
        }
    };

    public WindowPartSelectionTracker(IWorkbenchWindow window, String partId) {
        super(partId);
        this.setWindow(window);
        window.addPageListener(this);
        IWorkbenchPage[] pages = window.getPages();
        int i = 0;
        while (i < pages.length) {
            this.pageOpened(pages[i]);
            ++i;
        }
    }

    public void pageActivated(IWorkbenchPage page) {
    }

    public void pageClosed(IWorkbenchPage page) {
        page.removeSelectionListener(this.getPartId(), this.selListener);
        page.removePostSelectionListener(this.getPartId(), this.postSelListener);
    }

    public void pageOpened(IWorkbenchPage page) {
        page.addSelectionListener(this.getPartId(), this.selListener);
        page.addPostSelectionListener(this.getPartId(), this.postSelListener);
    }

    private void setWindow(IWorkbenchWindow window) {
        this.fWindow = window;
    }

    protected IWorkbenchWindow getWindow() {
        return this.fWindow;
    }

    public void dispose() {
        super.dispose();
        this.fWindow = null;
    }

    public ISelection getSelection() {
        IWorkbenchPage page = this.getWindow().getActivePage();
        if (page != null) {
            return page.getSelection(this.getPartId());
        }
        return null;
    }
}

