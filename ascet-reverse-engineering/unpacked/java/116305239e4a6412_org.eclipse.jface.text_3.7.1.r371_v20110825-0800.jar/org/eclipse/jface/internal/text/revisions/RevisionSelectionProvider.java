/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.jface.viewers.IPostSelectionProvider
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredSelection
 */
package org.eclipse.jface.internal.text.revisions;

import org.eclipse.core.runtime.ListenerList;
import org.eclipse.jface.internal.text.revisions.RevisionPainter;
import org.eclipse.jface.text.ITextSelection;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.revisions.Revision;
import org.eclipse.jface.viewers.IPostSelectionProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;

public final class RevisionSelectionProvider
implements ISelectionProvider {
    private final RevisionPainter fPainter;
    private final ListenerList fListeners = new ListenerList();
    private ITextViewer fViewer;
    private PostSelectionListener fSelectionListener;
    private Revision fSelection;
    private boolean fIgnoreEvents = false;

    RevisionSelectionProvider(RevisionPainter painter) {
        this.fPainter = painter;
    }

    public void addSelectionChangedListener(ISelectionChangedListener listener) {
        this.fListeners.add((Object)listener);
    }

    public void removeSelectionChangedListener(ISelectionChangedListener listener) {
        this.fListeners.remove((Object)listener);
    }

    public ISelection getSelection() {
        if (this.fSelection == null) {
            return StructuredSelection.EMPTY;
        }
        return new StructuredSelection((Object)this.fSelection);
    }

    public void setSelection(ISelection selection) {
        if (this.fIgnoreEvents) {
            return;
        }
        if (selection instanceof IStructuredSelection) {
            Object first = ((IStructuredSelection)selection).getFirstElement();
            if (first instanceof Revision) {
                this.fPainter.handleRevisionSelected((Revision)first);
            } else if (first instanceof String) {
                this.fPainter.handleRevisionSelected((String)first);
            } else if (selection.isEmpty()) {
                this.fPainter.handleRevisionSelected((Revision)null);
            }
        }
    }

    void install(ITextViewer viewer) {
        ISelectionProvider provider;
        this.uninstall();
        this.fViewer = viewer;
        if (this.fViewer != null && (provider = this.fViewer.getSelectionProvider()) instanceof IPostSelectionProvider) {
            IPostSelectionProvider postProvider = (IPostSelectionProvider)provider;
            this.fSelectionListener = new PostSelectionListener(postProvider);
        }
    }

    void uninstall() {
        this.fViewer = null;
        if (this.fSelectionListener != null) {
            this.fSelectionListener.dispose();
            this.fSelectionListener = null;
        }
    }

    void revisionSelected(Revision revision) {
        this.setSelectedRevision(revision);
    }

    private void setSelectedRevision(Revision revision) {
        if (revision != this.fSelection) {
            this.fSelection = revision;
            this.fireSelectionEvent();
        }
    }

    private void fireSelectionEvent() {
        this.fIgnoreEvents = true;
        try {
            ISelection selection = this.getSelection();
            SelectionChangedEvent event = new SelectionChangedEvent((ISelectionProvider)this, selection);
            Object[] listeners = this.fListeners.getListeners();
            int i = 0;
            while (i < listeners.length) {
                ((ISelectionChangedListener)listeners[i]).selectionChanged(event);
                ++i;
            }
        }
        finally {
            this.fIgnoreEvents = false;
        }
    }

    private final class PostSelectionListener
    implements ISelectionChangedListener {
        private final IPostSelectionProvider fPostProvider;

        public PostSelectionListener(IPostSelectionProvider postProvider) {
            postProvider.addPostSelectionChangedListener((ISelectionChangedListener)this);
            this.fPostProvider = postProvider;
        }

        public void selectionChanged(SelectionChangedEvent event) {
            ISelection selection = event.getSelection();
            if (selection instanceof ITextSelection) {
                ITextSelection ts = (ITextSelection)selection;
                int offset = ts.getOffset();
                RevisionSelectionProvider.this.setSelectedRevision(RevisionSelectionProvider.this.fPainter.getRevision(offset));
            }
        }

        public void dispose() {
            this.fPostProvider.removePostSelectionChangedListener((ISelectionChangedListener)this);
        }
    }
}

