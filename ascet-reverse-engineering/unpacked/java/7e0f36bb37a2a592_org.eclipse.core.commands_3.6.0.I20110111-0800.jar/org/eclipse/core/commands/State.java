/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands;

import org.eclipse.core.commands.IStateListener;
import org.eclipse.core.commands.common.EventManager;
import org.eclipse.core.internal.commands.util.Util;

public class State
extends EventManager {
    private String id;
    private Object value;

    public void addListener(IStateListener listener) {
        this.addListenerObject(listener);
    }

    public void dispose() {
    }

    protected final void fireStateChanged(Object oldValue) {
        Object[] listeners = this.getListeners();
        int i = 0;
        while (i < listeners.length) {
            IStateListener listener = (IStateListener)listeners[i];
            listener.handleStateChange(this, oldValue);
            ++i;
        }
    }

    public final String getId() {
        return this.id;
    }

    public Object getValue() {
        return this.value;
    }

    public void removeListener(IStateListener listener) {
        this.removeListenerObject(listener);
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setValue(Object value) {
        if (!Util.equals(this.value, value)) {
            Object oldValue = this.value;
            this.value = value;
            this.fireStateChanged(oldValue);
        }
    }
}

