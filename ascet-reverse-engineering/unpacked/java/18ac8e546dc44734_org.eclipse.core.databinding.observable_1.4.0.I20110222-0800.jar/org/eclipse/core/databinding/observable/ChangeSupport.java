/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable;

import org.eclipse.core.databinding.observable.ChangeEvent;
import org.eclipse.core.databinding.observable.ChangeManager;
import org.eclipse.core.databinding.observable.DisposeEvent;
import org.eclipse.core.databinding.observable.IChangeListener;
import org.eclipse.core.databinding.observable.IDisposeListener;
import org.eclipse.core.databinding.observable.IObservablesListener;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.ObservableEvent;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.StaleEvent;

public abstract class ChangeSupport
extends ChangeManager {
    public ChangeSupport(Realm realm) {
        super(realm);
    }

    public void addListener(Object listenerType, IObservablesListener listener) {
        super.addListener(listenerType, listener);
    }

    public void removeListener(Object listenerType, IObservablesListener listener) {
        super.removeListener(listenerType, listener);
    }

    public void fireEvent(ObservableEvent event) {
        super.fireEvent(event);
    }

    protected abstract void firstListenerAdded();

    protected abstract void lastListenerRemoved();

    public void addChangeListener(IChangeListener listener) {
        this.addListener(ChangeEvent.TYPE, listener);
    }

    public void removeChangeListener(IChangeListener listener) {
        this.removeListener(ChangeEvent.TYPE, listener);
    }

    public void addStaleListener(IStaleListener listener) {
        this.addListener(StaleEvent.TYPE, listener);
    }

    public void removeStaleListener(IStaleListener listener) {
        this.removeListener(StaleEvent.TYPE, listener);
    }

    public void addDisposeListener(IDisposeListener listener) {
        this.addListener(DisposeEvent.TYPE, listener);
    }

    public void removeDisposeListener(IDisposeListener listener) {
        this.removeListener(DisposeEvent.TYPE, listener);
    }
}

