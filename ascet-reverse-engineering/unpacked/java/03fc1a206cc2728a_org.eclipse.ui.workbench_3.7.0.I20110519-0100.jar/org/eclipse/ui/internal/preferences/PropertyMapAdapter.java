/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.preferences;

import java.util.ArrayList;
import org.eclipse.ui.internal.preferences.IDynamicPropertyMap;
import org.eclipse.ui.internal.preferences.IPropertyMap;
import org.eclipse.ui.internal.preferences.IPropertyMapListener;
import org.eclipse.ui.internal.preferences.PropertyListenerList;
import org.eclipse.ui.internal.preferences.PropertyUtil;

public abstract class PropertyMapAdapter
implements IDynamicPropertyMap {
    private PropertyListenerList listeners;
    private int ignoreCount = 0;
    private ArrayList queuedEvents = new ArrayList();

    public final void addListener(IPropertyMapListener listener) {
        if (this.listeners == null) {
            this.listeners = new PropertyListenerList();
            this.attachListener();
        }
        this.listeners.add(listener);
    }

    public final void removeListener(IPropertyMapListener listener) {
        if (this.listeners != null) {
            this.listeners.remove(listener);
            if (this.listeners.isEmpty()) {
                this.detachListener();
                this.listeners = null;
            }
        }
    }

    public final boolean isCommonProperty(String propertyId) {
        return true;
    }

    public void dispose() {
        if (this.listeners != null) {
            this.detachListener();
            this.listeners = null;
        }
    }

    protected final void firePropertyChange(String prefId) {
        if (this.ignoreCount > 0) {
            this.queuedEvents.add(prefId);
            return;
        }
        if (this.listeners != null) {
            this.listeners.firePropertyChange(prefId);
        }
    }

    public final void addListener(String[] eventsOfInterest, IPropertyMapListener listener) {
        if (this.listeners == null) {
            this.listeners = new PropertyListenerList();
            this.attachListener();
        }
        this.listeners.add(eventsOfInterest, listener);
    }

    protected final void firePropertyChange(String[] prefIds) {
        if (this.ignoreCount > 0) {
            int i = 0;
            while (i < prefIds.length) {
                this.queuedEvents.add(prefIds[i]);
                ++i;
            }
            return;
        }
        if (this.listeners != null) {
            this.listeners.firePropertyChange(prefIds);
        }
    }

    public final void startTransaction() {
        ++this.ignoreCount;
    }

    public final void endTransaction() {
        --this.ignoreCount;
        if (this.ignoreCount == 0 && !this.queuedEvents.isEmpty()) {
            if (this.listeners != null) {
                this.listeners.firePropertyChange(this.queuedEvents.toArray(new String[this.queuedEvents.size()]));
            }
            this.queuedEvents.clear();
        }
    }

    public boolean equals(Object toCompare) {
        return toCompare instanceof IPropertyMap && PropertyUtil.isEqual(this, (IPropertyMap)toCompare);
    }

    protected abstract void attachListener();

    protected abstract void detachListener();
}

