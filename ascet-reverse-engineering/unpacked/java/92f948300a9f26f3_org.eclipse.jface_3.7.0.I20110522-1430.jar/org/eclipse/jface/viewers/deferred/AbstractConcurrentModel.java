/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ListenerList
 */
package org.eclipse.jface.viewers.deferred;

import org.eclipse.core.runtime.ListenerList;
import org.eclipse.jface.viewers.deferred.IConcurrentModel;
import org.eclipse.jface.viewers.deferred.IConcurrentModelListener;

public abstract class AbstractConcurrentModel
implements IConcurrentModel {
    private ListenerList listeners = new ListenerList();

    public void addListener(IConcurrentModelListener listener) {
        this.listeners.add((Object)listener);
    }

    protected final void fireAdd(Object[] added) {
        Object[] listenerArray = this.listeners.getListeners();
        int i = 0;
        while (i < listenerArray.length) {
            IConcurrentModelListener next = (IConcurrentModelListener)listenerArray[i];
            next.add(added);
            ++i;
        }
    }

    protected final void fireRemove(Object[] removed) {
        Object[] listenerArray = this.listeners.getListeners();
        int i = 0;
        while (i < listenerArray.length) {
            IConcurrentModelListener next = (IConcurrentModelListener)listenerArray[i];
            next.remove(removed);
            ++i;
        }
    }

    protected final void fireUpdate(Object[] updated) {
        Object[] listenerArray = this.listeners.getListeners();
        int i = 0;
        while (i < listenerArray.length) {
            IConcurrentModelListener next = (IConcurrentModelListener)listenerArray[i];
            next.update(updated);
            ++i;
        }
    }

    protected final IConcurrentModelListener[] getListeners() {
        Object[] l = this.listeners.getListeners();
        IConcurrentModelListener[] result = new IConcurrentModelListener[l.length];
        int i = 0;
        while (i < l.length) {
            result[i] = (IConcurrentModelListener)l[i];
            ++i;
        }
        return result;
    }

    public void removeListener(IConcurrentModelListener listener) {
        this.listeners.remove((Object)listener);
    }
}

