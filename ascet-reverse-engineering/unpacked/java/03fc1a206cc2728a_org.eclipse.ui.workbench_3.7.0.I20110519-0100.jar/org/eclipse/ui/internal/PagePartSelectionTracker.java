/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.IPostSelectionProvider
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.viewers.IPostSelectionProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.ui.IPartListener;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IPerspectiveListener2;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.internal.AbstractPartSelectionTracker;

public class PagePartSelectionTracker
extends AbstractPartSelectionTracker
implements IPartListener,
IPerspectiveListener2,
ISelectionChangedListener {
    private IWorkbenchPage fPage;
    private IWorkbenchPart fPart;
    private ISelectionChangedListener selectionListener = new ISelectionChangedListener(){

        public void selectionChanged(SelectionChangedEvent event) {
            PagePartSelectionTracker.this.fireSelection(PagePartSelectionTracker.this.getPart(), event.getSelection());
        }
    };
    private ISelectionChangedListener postSelectionListener = new ISelectionChangedListener(){

        public void selectionChanged(SelectionChangedEvent event) {
            PagePartSelectionTracker.this.firePostSelection(PagePartSelectionTracker.this.getPart(), event.getSelection());
        }
    };

    public PagePartSelectionTracker(IWorkbenchPage page, String partId) {
        super(partId);
        IViewReference part;
        this.setPage(page);
        page.addPartListener(this);
        page.getWorkbenchWindow().addPerspectiveListener(this);
        String secondaryId = null;
        int indexOfColon = partId.indexOf(58);
        if (indexOfColon != -1) {
            secondaryId = partId.substring(indexOfColon + 1);
            partId = partId.substring(0, indexOfColon);
        }
        if ((part = page.findViewReference(partId, secondaryId)) != null && part.getView(false) != null) {
            this.setPart(part.getView(false), false);
        }
    }

    public void dispose() {
        IWorkbenchPage page = this.getPage();
        page.getWorkbenchWindow().removePerspectiveListener(this);
        page.removePartListener(this);
        this.setPart(null, false);
        this.setPage(null);
        super.dispose();
    }

    public void partActivated(IWorkbenchPart part) {
    }

    public void partBroughtToTop(IWorkbenchPart part) {
    }

    public void partClosed(IWorkbenchPart part) {
        if (this.getPartId(part).equals(this.getPartId())) {
            this.setPart(null, true);
        }
    }

    public void partDeactivated(IWorkbenchPart part) {
    }

    public void partOpened(IWorkbenchPart part) {
        if (this.getPartId(part).equals(this.getPartId())) {
            this.setPart(part, true);
        }
    }

    private Object getPartId(IWorkbenchPart part) {
        String secondaryId;
        String id = part.getSite().getId();
        if (part instanceof IViewPart && (secondaryId = ((IViewPart)part).getViewSite().getSecondaryId()) != null) {
            id = String.valueOf(id) + ':' + secondaryId;
        }
        return id;
    }

    public void selectionChanged(SelectionChangedEvent event) {
        this.fireSelection(this.getPart(), event.getSelection());
    }

    private void setPage(IWorkbenchPage page) {
        this.fPage = page;
    }

    protected IWorkbenchPage getPage() {
        return this.fPage;
    }

    protected IWorkbenchPart getPart() {
        return this.fPart;
    }

    public ISelection getSelection() {
        ISelectionProvider sp;
        IWorkbenchPart part = this.getPart();
        if (part != null && (sp = part.getSite().getSelectionProvider()) != null) {
            return sp.getSelection();
        }
        return null;
    }

    protected ISelectionProvider getSelectionProvider() {
        IWorkbenchPart part = this.getPart();
        if (part != null) {
            return part.getSite().getSelectionProvider();
        }
        return null;
    }

    private void setPart(IWorkbenchPart part, boolean notify) {
        ISelectionProvider sp;
        ISelectionProvider sp2;
        if (this.fPart != null && (sp2 = this.fPart.getSite().getSelectionProvider()) != null) {
            sp2.removeSelectionChangedListener(this.selectionListener);
            if (sp2 instanceof IPostSelectionProvider) {
                ((IPostSelectionProvider)sp2).removePostSelectionChangedListener(this.postSelectionListener);
            } else {
                sp2.removeSelectionChangedListener(this.postSelectionListener);
            }
        }
        this.fPart = part;
        ISelection sel = null;
        if (part != null && (sp = part.getSite().getSelectionProvider()) != null) {
            sp.addSelectionChangedListener(this.selectionListener);
            if (sp instanceof IPostSelectionProvider) {
                ((IPostSelectionProvider)sp).addPostSelectionChangedListener(this.postSelectionListener);
            } else {
                sp.addSelectionChangedListener(this.postSelectionListener);
            }
            if (notify) {
                sel = sp.getSelection();
            }
        }
        if (notify) {
            this.fireSelection(part, sel);
            this.firePostSelection(part, sel);
        }
    }

    public void perspectiveActivated(IWorkbenchPage page, IPerspectiveDescriptor perspective) {
    }

    public void perspectiveChanged(IWorkbenchPage page, IPerspectiveDescriptor perspective, String changeId) {
    }

    public void perspectiveChanged(IWorkbenchPage page, IPerspectiveDescriptor perspective, IWorkbenchPartReference partRef, String changeId) {
        if (partRef == null) {
            return;
        }
        IWorkbenchPart part = partRef.getPart(false);
        if (part == null) {
            return;
        }
        if ("viewShow".equals(changeId)) {
            if (this.getPart() != null) {
                return;
            }
            if (this.getPartId(part).equals(this.getPartId())) {
                this.setPart(part, true);
            }
        }
    }
}

