/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable;

import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.IObservablesListener;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.ObservableEvent;

public class StaleEvent
extends ObservableEvent {
    private static final long serialVersionUID = 3491012225431471077L;
    static final Object TYPE = new Object();

    public StaleEvent(IObservable source) {
        super(source);
    }

    protected void dispatch(IObservablesListener listener) {
        ((IStaleListener)listener).handleStale(this);
    }

    protected Object getListenerType() {
        return TYPE;
    }
}

