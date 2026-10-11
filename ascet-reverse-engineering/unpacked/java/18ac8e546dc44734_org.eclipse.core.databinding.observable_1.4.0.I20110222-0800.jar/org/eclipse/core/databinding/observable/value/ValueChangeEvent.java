/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.value;

import org.eclipse.core.databinding.observable.IObservablesListener;
import org.eclipse.core.databinding.observable.ObservableEvent;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.observable.value.IValueChangeListener;
import org.eclipse.core.databinding.observable.value.ValueDiff;

public class ValueChangeEvent
extends ObservableEvent {
    private static final long serialVersionUID = 2305345286999701156L;
    static final Object TYPE = new Object();
    public ValueDiff diff;

    public ValueChangeEvent(IObservableValue source, ValueDiff diff) {
        super(source);
        this.diff = diff;
    }

    public IObservableValue getObservableValue() {
        return (IObservableValue)this.source;
    }

    protected void dispatch(IObservablesListener listener) {
        ((IValueChangeListener)listener).handleValueChange(this);
    }

    protected Object getListenerType() {
        return TYPE;
    }
}

