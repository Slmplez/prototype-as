/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ListenerList
 */
package org.eclipse.pde.internal.core;

import org.eclipse.core.runtime.ListenerList;
import org.eclipse.pde.core.IModelProviderEvent;
import org.eclipse.pde.core.IModelProviderListener;

public abstract class AbstractModelManager {
    private ListenerList fListeners = new ListenerList();

    public synchronized void removeModelProviderListener(IModelProviderListener listener) {
        if (listener != null) {
            this.fListeners.remove((Object)listener);
        }
    }

    public synchronized void addModelProviderListener(IModelProviderListener listener) {
        this.fListeners.add((Object)listener);
    }

    public void fireModelProviderEvent(IModelProviderEvent event) {
        Object[] listeners = this.fListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            ((IModelProviderListener)listeners[i]).modelsChanged(event);
            ++i;
        }
    }

    public void shutdown() {
        this.removeListeners();
    }

    protected void removeListeners() {
        this.fListeners.clear();
    }
}

