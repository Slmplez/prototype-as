/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable;

import org.eclipse.core.databinding.observable.IDisposeListener;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.IObservablesListener;
import org.eclipse.core.databinding.observable.ObservableEvent;

public class DisposeEvent
extends ObservableEvent {
    private static final long serialVersionUID = -3241193109844979384L;
    static final Object TYPE = new Object();

    public DisposeEvent(IObservable source) {
        super(source);
    }

    protected void dispatch(IObservablesListener listener) {
        ((IDisposeListener)listener).handleDispose(this);
    }

    protected Object getListenerType() {
        return TYPE;
    }
}

