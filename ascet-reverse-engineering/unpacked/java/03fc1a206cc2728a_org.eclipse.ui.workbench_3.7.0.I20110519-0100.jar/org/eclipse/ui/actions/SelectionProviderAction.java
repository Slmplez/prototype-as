/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredSelection
 */
package org.eclipse.ui.actions;

import org.eclipse.jface.action.Action;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;

public abstract class SelectionProviderAction
extends Action
implements ISelectionChangedListener {
    private ISelectionProvider provider;

    protected SelectionProviderAction(ISelectionProvider provider, String text) {
        super(text);
        this.provider = provider;
        provider.addSelectionChangedListener((ISelectionChangedListener)this);
    }

    public void dispose() {
        this.provider.removeSelectionChangedListener((ISelectionChangedListener)this);
    }

    public ISelection getSelection() {
        return this.provider.getSelection();
    }

    public ISelectionProvider getSelectionProvider() {
        return this.provider;
    }

    public IStructuredSelection getStructuredSelection() {
        ISelection selection = this.provider.getSelection();
        if (selection instanceof IStructuredSelection) {
            return (IStructuredSelection)selection;
        }
        return new StructuredSelection();
    }

    public void selectionChanged(ISelection selection) {
    }

    public void selectionChanged(IStructuredSelection selection) {
    }

    public final void selectionChanged(SelectionChangedEvent event) {
        ISelection selection = event.getSelection();
        if (selection instanceof IStructuredSelection) {
            this.selectionChanged((IStructuredSelection)selection);
        } else {
            this.selectionChanged(selection);
        }
    }
}

