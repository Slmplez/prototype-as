/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.swt.widgets.Event
 */
package org.eclipse.ui.actions;

import org.eclipse.jface.action.Action;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.swt.widgets.Event;

public abstract class BaseSelectionListenerAction
extends Action
implements ISelectionChangedListener {
    private IStructuredSelection selection = new StructuredSelection();
    private boolean running = false;
    private IStructuredSelection deferredSelection = null;

    protected BaseSelectionListenerAction(String text) {
        super(text);
    }

    protected void clearCache() {
    }

    public IStructuredSelection getStructuredSelection() {
        return this.selection;
    }

    public final void selectionChanged(IStructuredSelection selection) {
        if (this.running) {
            this.deferredSelection = selection;
            return;
        }
        this.selection = selection;
        this.clearCache();
        this.setEnabled(this.updateSelection(selection));
    }

    public final void selectionChanged(SelectionChangedEvent event) {
        ISelection selection = event.getSelection();
        if (selection instanceof IStructuredSelection) {
            this.selectionChanged((IStructuredSelection)selection);
        } else {
            this.selectionChanged((IStructuredSelection)StructuredSelection.EMPTY);
        }
    }

    protected boolean updateSelection(IStructuredSelection selection) {
        return true;
    }

    public void runWithEvent(Event event) {
        this.running = true;
        try {
            this.run();
        }
        finally {
            this.running = false;
            IStructuredSelection s = this.deferredSelection;
            this.deferredSelection = null;
            if (s != null) {
                this.selectionChanged(s);
            }
        }
    }
}

