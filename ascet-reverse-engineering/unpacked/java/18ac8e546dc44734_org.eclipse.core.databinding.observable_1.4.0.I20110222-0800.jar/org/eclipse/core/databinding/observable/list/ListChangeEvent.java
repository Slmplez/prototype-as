/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.list;

import org.eclipse.core.databinding.observable.IObservablesListener;
import org.eclipse.core.databinding.observable.ObservableEvent;
import org.eclipse.core.databinding.observable.list.IListChangeListener;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.list.ListDiff;

public class ListChangeEvent
extends ObservableEvent {
    private static final long serialVersionUID = -9154315534258776672L;
    static final Object TYPE = new Object();
    public ListDiff diff;

    public ListChangeEvent(IObservableList source, ListDiff diff) {
        super(source);
        this.diff = diff;
    }

    public IObservableList getObservableList() {
        return (IObservableList)this.getSource();
    }

    protected void dispatch(IObservablesListener listener) {
        ((IListChangeListener)listener).handleListChange(this);
    }

    protected Object getListenerType() {
        return TYPE;
    }
}

