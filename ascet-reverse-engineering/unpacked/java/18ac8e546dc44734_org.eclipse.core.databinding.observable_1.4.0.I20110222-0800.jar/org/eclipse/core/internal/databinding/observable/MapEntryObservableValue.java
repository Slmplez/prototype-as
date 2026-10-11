/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.observable;

import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.StaleEvent;
import org.eclipse.core.databinding.observable.map.IMapChangeListener;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.map.MapChangeEvent;
import org.eclipse.core.databinding.observable.value.AbstractObservableValue;

public class MapEntryObservableValue
extends AbstractObservableValue {
    private IObservableMap map;
    private Object key;
    private Object valueType;
    private IMapChangeListener changeListener = new IMapChangeListener(){

        public void handleMapChange(MapChangeEvent event) {
            Object oldValue;
            if (event.diff.getAddedKeys().contains(MapEntryObservableValue.this.key)) {
                Object newValue = event.diff.getNewValue(MapEntryObservableValue.this.key);
                if (newValue != null) {
                    MapEntryObservableValue.this.fireValueChange(Diffs.createValueDiff(null, newValue));
                }
            } else if (event.diff.getChangedKeys().contains(MapEntryObservableValue.this.key)) {
                MapEntryObservableValue.this.fireValueChange(Diffs.createValueDiff(event.diff.getOldValue(MapEntryObservableValue.this.key), event.diff.getNewValue(MapEntryObservableValue.this.key)));
            } else if (event.diff.getRemovedKeys().contains(MapEntryObservableValue.this.key) && (oldValue = event.diff.getOldValue(MapEntryObservableValue.this.key)) != null) {
                MapEntryObservableValue.this.fireValueChange(Diffs.createValueDiff(oldValue, null));
            }
        }
    };
    private IStaleListener staleListener = new IStaleListener(){

        public void handleStale(StaleEvent staleEvent) {
            MapEntryObservableValue.this.fireStale();
        }
    };

    public MapEntryObservableValue(IObservableMap map, Object key, Object valueType) {
        super(map.getRealm());
        this.map = map;
        this.key = key;
        this.valueType = valueType;
        map.addMapChangeListener(this.changeListener);
        map.addStaleListener(this.staleListener);
    }

    public Object getValueType() {
        return this.valueType;
    }

    public boolean isStale() {
        ObservableTracker.getterCalled(this);
        return this.map.isStale();
    }

    public synchronized void dispose() {
        if (this.map != null) {
            this.map.removeMapChangeListener(this.changeListener);
            this.map.removeStaleListener(this.staleListener);
            this.map = null;
            this.changeListener = null;
            this.staleListener = null;
        }
        super.dispose();
    }

    protected Object doGetValue() {
        return this.map.get(this.key);
    }

    protected void doSetValue(Object value) {
        this.map.put(this.key, value);
    }
}

