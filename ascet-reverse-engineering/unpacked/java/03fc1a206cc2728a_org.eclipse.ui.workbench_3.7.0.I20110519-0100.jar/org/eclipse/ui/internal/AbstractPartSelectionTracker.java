/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.util.SafeRunnable
 *  org.eclipse.jface.viewers.ISelection
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.ui.INullSelectionListener;
import org.eclipse.ui.ISelectionListener;
import org.eclipse.ui.IWorkbenchPart;

public abstract class AbstractPartSelectionTracker {
    private ListenerList fListeners = new ListenerList();
    private ListenerList postListeners = new ListenerList();
    private String fPartId;

    public AbstractPartSelectionTracker(String partId) {
        this.setPartId(partId);
    }

    public void addSelectionListener(ISelectionListener listener) {
        this.fListeners.add((Object)listener);
    }

    public void addPostSelectionListener(ISelectionListener listener) {
        this.postListeners.add((Object)listener);
    }

    public abstract ISelection getSelection();

    public void removeSelectionListener(ISelectionListener listener) {
        this.fListeners.remove((Object)listener);
    }

    public void removePostSelectionListener(ISelectionListener listener) {
        this.postListeners.remove((Object)listener);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void dispose() {
        ListenerList listenerList = this.fListeners;
        synchronized (listenerList) {
            Object[] listeners = this.fListeners.getListeners();
            int i = 0;
            while (i < listeners.length) {
                this.fListeners.remove(listeners[i]);
                this.postListeners.remove(listeners[i]);
                ++i;
            }
        }
    }

    protected void fireSelection(final IWorkbenchPart part, final ISelection sel) {
        Object[] array = this.fListeners.getListeners();
        int i = 0;
        while (i < array.length) {
            final ISelectionListener l = (ISelectionListener)array[i];
            if (part != null && sel != null || l instanceof INullSelectionListener) {
                Platform.run((ISafeRunnable)new SafeRunnable(){

                    public void run() {
                        l.selectionChanged(part, sel);
                    }
                });
            }
            ++i;
        }
    }

    protected void firePostSelection(final IWorkbenchPart part, final ISelection sel) {
        Object[] array = this.postListeners.getListeners();
        int i = 0;
        while (i < array.length) {
            final ISelectionListener l = (ISelectionListener)array[i];
            if (part != null && sel != null || l instanceof INullSelectionListener) {
                Platform.run((ISafeRunnable)new SafeRunnable(){

                    public void run() {
                        l.selectionChanged(part, sel);
                    }
                });
            }
            ++i;
        }
    }

    private void setPartId(String partId) {
        this.fPartId = partId;
    }

    protected String getPartId() {
        return this.fPartId;
    }
}

