/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.set;

import org.eclipse.core.databinding.observable.IObservablesListener;
import org.eclipse.core.databinding.observable.ObservableEvent;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.set.ISetChangeListener;
import org.eclipse.core.databinding.observable.set.SetDiff;

public class SetChangeEvent
extends ObservableEvent {
    private static final long serialVersionUID = 7436547103857482256L;
    static final Object TYPE = new Object();
    public SetDiff diff;

    public SetChangeEvent(IObservableSet source, SetDiff diff) {
        super(source);
        this.diff = diff;
    }

    public IObservableSet getObservableSet() {
        return (IObservableSet)this.getSource();
    }

    protected void dispatch(IObservablesListener listener) {
        ((ISetChangeListener)listener).handleSetChange(this);
    }

    protected Object getListenerType() {
        return TYPE;
    }
}

