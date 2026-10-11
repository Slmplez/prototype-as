/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ListenerList
 */
package org.eclipse.core.commands.common;

import org.eclipse.core.runtime.ListenerList;

public abstract class EventManager {
    private static final Object[] EMPTY_ARRAY = new Object[0];
    private transient ListenerList listenerList = null;

    protected final synchronized void addListenerObject(Object listener) {
        if (this.listenerList == null) {
            this.listenerList = new ListenerList(1);
        }
        this.listenerList.add(listener);
    }

    protected final synchronized void clearListeners() {
        if (this.listenerList != null) {
            this.listenerList.clear();
        }
    }

    protected final Object[] getListeners() {
        ListenerList list = this.listenerList;
        if (list == null) {
            return EMPTY_ARRAY;
        }
        return list.getListeners();
    }

    protected final boolean isListenerAttached() {
        return this.listenerList != null;
    }

    protected final synchronized void removeListenerObject(Object listener) {
        if (this.listenerList != null) {
            this.listenerList.remove(listener);
            if (this.listenerList.isEmpty()) {
                this.listenerList = null;
            }
        }
    }
}

