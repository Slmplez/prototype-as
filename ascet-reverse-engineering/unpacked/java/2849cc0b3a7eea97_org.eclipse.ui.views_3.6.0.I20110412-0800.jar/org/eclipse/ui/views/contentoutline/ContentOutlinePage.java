/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.jface.util.SafeRunnable
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.jface.viewers.TreeViewer
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.ui.part.IPageSite
 *  org.eclipse.ui.part.Page
 */
package org.eclipse.ui.views.contentoutline;

import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.part.IPageSite;
import org.eclipse.ui.part.Page;
import org.eclipse.ui.views.contentoutline.IContentOutlinePage;

public abstract class ContentOutlinePage
extends Page
implements IContentOutlinePage,
ISelectionChangedListener {
    private ListenerList selectionChangedListeners = new ListenerList();
    private TreeViewer treeViewer;

    protected ContentOutlinePage() {
    }

    public void addSelectionChangedListener(ISelectionChangedListener listener) {
        this.selectionChangedListeners.add((Object)listener);
    }

    public void createControl(Composite parent) {
        this.treeViewer = new TreeViewer(parent, this.getTreeStyle());
        this.treeViewer.addSelectionChangedListener((ISelectionChangedListener)this);
    }

    protected int getTreeStyle() {
        return 770;
    }

    protected void fireSelectionChanged(ISelection selection) {
        final SelectionChangedEvent event = new SelectionChangedEvent((ISelectionProvider)this, selection);
        Object[] listeners = this.selectionChangedListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            final ISelectionChangedListener l = (ISelectionChangedListener)listeners[i];
            SafeRunner.run((ISafeRunnable)new SafeRunnable(){

                public void run() {
                    l.selectionChanged(event);
                }
            });
            ++i;
        }
    }

    public Control getControl() {
        if (this.treeViewer == null) {
            return null;
        }
        return this.treeViewer.getControl();
    }

    public ISelection getSelection() {
        if (this.treeViewer == null) {
            return StructuredSelection.EMPTY;
        }
        return this.treeViewer.getSelection();
    }

    protected TreeViewer getTreeViewer() {
        return this.treeViewer;
    }

    public void init(IPageSite pageSite) {
        super.init(pageSite);
        pageSite.setSelectionProvider((ISelectionProvider)this);
    }

    public void removeSelectionChangedListener(ISelectionChangedListener listener) {
        this.selectionChangedListeners.remove((Object)listener);
    }

    public void selectionChanged(SelectionChangedEvent event) {
        this.fireSelectionChanged(event.getSelection());
    }

    public void setFocus() {
        this.treeViewer.getControl().setFocus();
    }

    public void setSelection(ISelection selection) {
        if (this.treeViewer != null) {
            this.treeViewer.setSelection(selection);
        }
    }
}

