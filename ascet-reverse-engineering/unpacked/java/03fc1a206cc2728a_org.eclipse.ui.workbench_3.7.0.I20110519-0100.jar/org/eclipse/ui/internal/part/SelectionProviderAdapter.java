/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.util.SafeRunnable
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredSelection
 */
package org.eclipse.ui.internal.part;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;

class SelectionProviderAdapter
implements ISelectionProvider {
    List listeners = new ArrayList();
    ISelection theSelection = StructuredSelection.EMPTY;

    SelectionProviderAdapter() {
    }

    public void addSelectionChangedListener(ISelectionChangedListener listener) {
        this.listeners.add(listener);
    }

    public ISelection getSelection() {
        return this.theSelection;
    }

    public void removeSelectionChangedListener(ISelectionChangedListener listener) {
        this.listeners.remove(listener);
    }

    public void setSelection(ISelection selection) {
        this.theSelection = selection;
        final SelectionChangedEvent e = new SelectionChangedEvent((ISelectionProvider)this, selection);
        Object[] listenersArray = this.listeners.toArray();
        int i = 0;
        while (i < listenersArray.length) {
            final ISelectionChangedListener l = (ISelectionChangedListener)listenersArray[i];
            Platform.run((ISafeRunnable)new SafeRunnable(){

                public void run() {
                    l.selectionChanged(e);
                }
            });
            ++i;
        }
    }
}

