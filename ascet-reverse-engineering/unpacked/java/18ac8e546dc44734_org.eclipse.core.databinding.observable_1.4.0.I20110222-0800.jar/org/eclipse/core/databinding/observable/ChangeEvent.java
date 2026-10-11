/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable;

import org.eclipse.core.databinding.observable.IChangeListener;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.IObservablesListener;
import org.eclipse.core.databinding.observable.ObservableEvent;

public class ChangeEvent
extends ObservableEvent {
    private static final long serialVersionUID = -3241193109844979384L;
    static final Object TYPE = new Object();

    public ChangeEvent(IObservable source) {
        super(source);
    }

    protected void dispatch(IObservablesListener listener) {
        ((IChangeListener)listener).handleChange(this);
    }

    protected Object getListenerType() {
        return TYPE;
    }
}

