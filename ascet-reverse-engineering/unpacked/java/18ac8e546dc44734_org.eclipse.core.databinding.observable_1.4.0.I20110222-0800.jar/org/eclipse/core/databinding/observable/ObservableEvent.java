/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable;

import java.util.EventObject;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.IObservablesListener;

public abstract class ObservableEvent
extends EventObject {
    private static final long serialVersionUID = 7693906965267871813L;

    public ObservableEvent(IObservable source) {
        super(source);
    }

    public IObservable getObservable() {
        return (IObservable)this.getSource();
    }

    protected abstract void dispatch(IObservablesListener var1);

    protected abstract Object getListenerType();
}

