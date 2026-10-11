/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.map;

import org.eclipse.core.databinding.observable.IObservablesListener;
import org.eclipse.core.databinding.observable.ObservableEvent;
import org.eclipse.core.databinding.observable.map.IMapChangeListener;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.map.MapDiff;

public class MapChangeEvent
extends ObservableEvent {
    private static final long serialVersionUID = -8092347212410548463L;
    static final Object TYPE = new Object();
    public MapDiff diff;

    public MapChangeEvent(IObservableMap source, MapDiff diff) {
        super(source);
        this.diff = diff;
    }

    public IObservableMap getObservableMap() {
        return (IObservableMap)this.getSource();
    }

    protected void dispatch(IObservablesListener listener) {
        ((IMapChangeListener)listener).handleMapChange(this);
    }

    protected Object getListenerType() {
        return TYPE;
    }
}

