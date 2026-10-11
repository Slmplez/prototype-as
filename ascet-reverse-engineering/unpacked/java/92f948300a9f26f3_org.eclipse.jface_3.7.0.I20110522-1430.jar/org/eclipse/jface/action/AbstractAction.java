/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.EventManager
 */
package org.eclipse.jface.action;

import org.eclipse.core.commands.common.EventManager;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;

public abstract class AbstractAction
extends EventManager
implements IAction {
    public void addPropertyChangeListener(IPropertyChangeListener listener) {
        this.addListenerObject(listener);
    }

    protected final void firePropertyChange(PropertyChangeEvent event) {
        Object[] list = this.getListeners();
        int i = 0;
        while (i < list.length) {
            ((IPropertyChangeListener)list[i]).propertyChange(event);
            ++i;
        }
    }

    protected final void firePropertyChange(String propertyName, Object oldValue, Object newValue) {
        if (this.isListenerAttached()) {
            this.firePropertyChange(new PropertyChangeEvent(this, propertyName, oldValue, newValue));
        }
    }

    public void removePropertyChangeListener(IPropertyChangeListener listener) {
        this.removeListenerObject(listener);
    }
}

