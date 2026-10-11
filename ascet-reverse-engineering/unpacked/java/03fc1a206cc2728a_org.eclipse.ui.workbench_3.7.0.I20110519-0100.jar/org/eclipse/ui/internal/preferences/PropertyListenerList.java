/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.preferences;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.ui.internal.preferences.IPropertyMapListener;

public final class PropertyListenerList {
    private Map listeners;
    private List globalListeners;
    private static String[] singlePropertyDelta;
    private static Object mutex;

    static {
        mutex = new Object();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void firePropertyChange(String prefId) {
        String[] delta;
        Object object = mutex;
        synchronized (object) {
            if (singlePropertyDelta != null) {
                delta = singlePropertyDelta;
                singlePropertyDelta = null;
            } else {
                delta = new String[]{prefId};
            }
        }
        delta[0] = prefId;
        this.firePropertyChange(delta);
        if (singlePropertyDelta == null) {
            object = mutex;
            synchronized (object) {
                singlePropertyDelta = delta;
            }
        }
    }

    public void firePropertyChange(String[] propertyIds) {
        if (this.globalListeners != null) {
            Iterator iter = this.globalListeners.iterator();
            while (iter.hasNext()) {
                IPropertyMapListener next = (IPropertyMapListener)iter.next();
                next.propertyChanged(propertyIds);
            }
        }
        if (this.listeners != null) {
            HashSet result = Collections.EMPTY_SET;
            HashSet union = null;
            int i = 0;
            while (i < propertyIds.length) {
                String property = propertyIds[i];
                List existingListeners = (List)this.listeners.get(property);
                if (existingListeners != null) {
                    if (result == Collections.EMPTY_SET) {
                        result = existingListeners;
                    } else {
                        if (union == null) {
                            union = new HashSet();
                            union.addAll(result);
                            result = union;
                        }
                        union.addAll(existingListeners);
                    }
                }
                ++i;
            }
            Iterator iter = result.iterator();
            while (iter.hasNext()) {
                IPropertyMapListener next = (IPropertyMapListener)iter.next();
                next.propertyChanged(propertyIds);
            }
        }
    }

    public void add(IPropertyMapListener newListener) {
        if (this.globalListeners == null) {
            this.globalListeners = new ArrayList();
        }
        this.globalListeners.add(newListener);
        newListener.listenerAttached();
    }

    private void addInternal(String propertyId, IPropertyMapListener newListener) {
        ArrayList<IPropertyMapListener> listenerList;
        if (this.listeners == null) {
            this.listeners = new HashMap();
        }
        if ((listenerList = (ArrayList<IPropertyMapListener>)this.listeners.get(propertyId)) == null) {
            listenerList = new ArrayList<IPropertyMapListener>(1);
            this.listeners.put(propertyId, listenerList);
        }
        if (!listenerList.contains(newListener)) {
            listenerList.add(newListener);
        }
    }

    public void add(String[] propertyIds, IPropertyMapListener newListener) {
        int i = 0;
        while (i < propertyIds.length) {
            String id = propertyIds[i];
            this.addInternal(id, newListener);
            ++i;
        }
        newListener.listenerAttached();
    }

    public void remove(String propertyId, IPropertyMapListener toRemove) {
        if (this.listeners == null) {
            return;
        }
        List listenerList = (List)this.listeners.get(propertyId);
        if (listenerList != null) {
            listenerList.remove(toRemove);
            if (listenerList.isEmpty()) {
                this.listeners.remove(propertyId);
                if (this.listeners.isEmpty()) {
                    this.listeners = null;
                }
            }
        }
    }

    public void removeAll() {
        this.globalListeners = null;
        this.listeners = null;
    }

    public void remove(IPropertyMapListener toRemove) {
        if (this.globalListeners != null) {
            this.globalListeners.remove(toRemove);
            if (this.globalListeners.isEmpty()) {
                this.globalListeners = null;
            }
        }
        if (this.listeners != null) {
            Iterator iter = this.listeners.keySet().iterator();
            while (iter.hasNext()) {
                String key = (String)iter.next();
                this.remove(key, toRemove);
            }
        }
    }

    public boolean isEmpty() {
        return this.globalListeners == null && this.listeners == null;
    }
}

