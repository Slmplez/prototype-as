/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.ListenerList
 */
package org.eclipse.core.databinding.observable;

import org.eclipse.core.databinding.observable.DisposeEvent;
import org.eclipse.core.databinding.observable.IObservablesListener;
import org.eclipse.core.databinding.observable.ObservableEvent;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.ListenerList;

class ChangeManager {
    ListenerList[] listenerLists = null;
    Object[] listenerTypes = null;
    private final Realm realm;

    ChangeManager(Realm realm) {
        Assert.isNotNull((Object)realm, (String)"Realm cannot be null");
        this.realm = realm;
    }

    protected void addListener(Object listenerType, IObservablesListener listener) {
        int listenerTypeIndex = this.findListenerTypeIndex(listenerType);
        if (listenerTypeIndex == -1) {
            int length;
            if (this.listenerTypes == null) {
                length = 0;
                this.listenerTypes = new Object[1];
                this.listenerLists = new ListenerList[1];
            } else {
                length = this.listenerTypes.length;
                this.listenerTypes = new Object[length + 1];
                System.arraycopy(this.listenerTypes, 0, this.listenerTypes, 0, length);
                this.listenerLists = new ListenerList[length + 1];
                System.arraycopy(this.listenerLists, 0, this.listenerLists, 0, length);
            }
            this.listenerTypes[length] = listenerType;
            this.listenerLists[length] = new ListenerList();
            listenerTypeIndex = length;
        }
        boolean hadListeners = this.hasListeners();
        this.listenerLists[listenerTypeIndex].add((Object)listener);
        if (!hadListeners && this.hasListeners()) {
            this.firstListenerAdded();
        }
    }

    protected void removeListener(Object listenerType, IObservablesListener listener) {
        int listenerTypeIndex = this.findListenerTypeIndex(listenerType);
        if (listenerTypeIndex != -1) {
            boolean hadListeners = this.hasListeners();
            this.listenerLists[listenerTypeIndex].remove((Object)listener);
            if (this.listenerLists[listenerTypeIndex].size() == 0 && hadListeners && !this.hasListeners()) {
                this.lastListenerRemoved();
            }
        }
    }

    protected boolean hasListeners() {
        if (this.listenerTypes != null) {
            int i = 0;
            while (i < this.listenerTypes.length) {
                if (this.listenerTypes[i] != DisposeEvent.TYPE && this.listenerLists[i].size() > 0) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    private int findListenerTypeIndex(Object listenerType) {
        if (this.listenerTypes != null) {
            int i = 0;
            while (i < this.listenerTypes.length) {
                if (this.listenerTypes[i] == listenerType) {
                    return i;
                }
                ++i;
            }
        }
        return -1;
    }

    protected void fireEvent(ObservableEvent event) {
        Object listenerType = event.getListenerType();
        int listenerTypeIndex = this.findListenerTypeIndex(listenerType);
        if (listenerTypeIndex != -1) {
            Object[] listeners = this.listenerLists[listenerTypeIndex].getListeners();
            int i = 0;
            while (i < listeners.length) {
                event.dispatch((IObservablesListener)listeners[i]);
                ++i;
            }
        }
    }

    protected void firstListenerAdded() {
    }

    protected void lastListenerRemoved() {
    }

    public void dispose() {
        this.listenerLists = null;
        this.listenerTypes = null;
    }

    public Realm getRealm() {
        return this.realm;
    }

    protected Object clone() throws CloneNotSupportedException {
        ChangeManager duplicate = (ChangeManager)super.clone();
        duplicate.listenerLists = null;
        duplicate.listenerTypes = null;
        return duplicate;
    }
}

