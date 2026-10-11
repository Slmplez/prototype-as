/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.EventManager
 */
package org.eclipse.jface.resource;

import java.util.Set;
import org.eclipse.core.commands.common.EventManager;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;

public abstract class ResourceRegistry
extends EventManager {
    public void addListener(IPropertyChangeListener listener) {
        this.addListenerObject(listener);
    }

    protected abstract void clearCaches();

    public abstract Set getKeySet();

    public abstract boolean hasValueFor(String var1);

    protected void fireMappingChanged(String name, Object oldValue, Object newValue) {
        Object[] myListeners = this.getListeners();
        if (myListeners.length > 0) {
            PropertyChangeEvent event = new PropertyChangeEvent((Object)this, name, oldValue, newValue);
            int i = 0;
            while (i < myListeners.length) {
                try {
                    ((IPropertyChangeListener)myListeners[i]).propertyChange(event);
                }
                catch (Exception exception) {}
                ++i;
            }
        }
    }

    public void removeListener(IPropertyChangeListener listener) {
        this.removeListenerObject(listener);
    }
}

