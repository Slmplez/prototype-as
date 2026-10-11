/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.jface.util.SafeRunnable
 *  org.eclipse.jface.viewers.IPostSelectionProvider
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredSelection
 */
package org.eclipse.ui.part;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.jface.viewers.IPostSelectionProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.part.MultiPageEditorPart;

public class MultiPageSelectionProvider
implements IPostSelectionProvider {
    private ListenerList listeners = new ListenerList();
    private ListenerList postListeners = new ListenerList();
    private MultiPageEditorPart multiPageEditor;

    public MultiPageSelectionProvider(MultiPageEditorPart multiPageEditor) {
        Assert.isNotNull((Object)multiPageEditor);
        this.multiPageEditor = multiPageEditor;
    }

    public void addSelectionChangedListener(ISelectionChangedListener listener) {
        this.listeners.add((Object)listener);
    }

    public void addPostSelectionChangedListener(ISelectionChangedListener listener) {
        this.postListeners.add((Object)listener);
    }

    public void fireSelectionChanged(SelectionChangedEvent event) {
        Object[] listeners = this.listeners.getListeners();
        this.fireEventChange(event, listeners);
    }

    public void firePostSelectionChanged(SelectionChangedEvent event) {
        Object[] listeners = this.postListeners.getListeners();
        this.fireEventChange(event, listeners);
    }

    private void fireEventChange(final SelectionChangedEvent event, Object[] listeners) {
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

    public MultiPageEditorPart getMultiPageEditor() {
        return this.multiPageEditor;
    }

    public ISelection getSelection() {
        ISelectionProvider selectionProvider;
        IEditorPart activeEditor = this.multiPageEditor.getActiveEditor();
        if (activeEditor != null && (selectionProvider = activeEditor.getSite().getSelectionProvider()) != null) {
            return selectionProvider.getSelection();
        }
        return StructuredSelection.EMPTY;
    }

    public void removeSelectionChangedListener(ISelectionChangedListener listener) {
        this.listeners.remove((Object)listener);
    }

    public void removePostSelectionChangedListener(ISelectionChangedListener listener) {
        this.postListeners.remove((Object)listener);
    }

    public void setSelection(ISelection selection) {
        ISelectionProvider selectionProvider;
        IEditorPart activeEditor = this.multiPageEditor.getActiveEditor();
        if (activeEditor != null && (selectionProvider = activeEditor.getSite().getSelectionProvider()) != null) {
            selectionProvider.setSelection(selection);
        }
    }
}

