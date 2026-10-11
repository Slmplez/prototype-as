/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.observable.masterdetail;

import java.util.AbstractSet;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.DisposeEvent;
import org.eclipse.core.databinding.observable.IDisposeListener;
import org.eclipse.core.databinding.observable.IObserving;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.StaleEvent;
import org.eclipse.core.databinding.observable.map.AbstractObservableMap;
import org.eclipse.core.databinding.observable.map.IMapChangeListener;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.map.MapChangeEvent;
import org.eclipse.core.databinding.observable.map.MapDiff;
import org.eclipse.core.databinding.observable.masterdetail.IObservableFactory;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.observable.value.IValueChangeListener;
import org.eclipse.core.databinding.observable.value.ValueChangeEvent;
import org.eclipse.core.internal.databinding.identity.IdentityMap;
import org.eclipse.core.internal.databinding.identity.IdentitySet;
import org.eclipse.core.internal.databinding.observable.Util;

public class MapDetailValueObservableMap
extends AbstractObservableMap
implements IObserving {
    private IObservableMap masterMap;
    private IObservableFactory observableValueFactory;
    private Object detailValueType;
    private Set entrySet;
    private IdentityHashMap keyDetailMap = new IdentityHashMap();
    private IdentitySet staleDetailObservables = new IdentitySet();
    private IMapChangeListener masterMapListener = new IMapChangeListener(){

        public void handleMapChange(MapChangeEvent event) {
            MapDetailValueObservableMap.this.handleMasterMapChange(event.diff);
        }
    };
    private IStaleListener masterStaleListener = new IStaleListener(){

        public void handleStale(StaleEvent staleEvent) {
            MapDetailValueObservableMap.this.fireStale();
        }
    };
    private IStaleListener detailStaleListener = new IStaleListener(){

        public void handleStale(StaleEvent staleEvent) {
            MapDetailValueObservableMap.this.addStaleDetailObservable((IObservableValue)staleEvent.getObservable());
        }
    };

    public MapDetailValueObservableMap(IObservableMap masterMap, IObservableFactory observableValueFactory, Object detailValueType) {
        super(masterMap.getRealm());
        this.masterMap = masterMap;
        this.observableValueFactory = observableValueFactory;
        this.detailValueType = detailValueType;
        masterMap.addMapChangeListener(this.masterMapListener);
        masterMap.addStaleListener(this.masterStaleListener);
        masterMap.addDisposeListener(new IDisposeListener(){

            public void handleDispose(DisposeEvent event) {
                MapDetailValueObservableMap.this.dispose();
            }
        });
        MapDiff initMasterDiff = Diffs.computeMapDiff(Collections.EMPTY_MAP, masterMap);
        this.handleMasterMapChange(initMasterDiff);
    }

    private void handleMasterMapChange(MapDiff diff) {
        IdentityMap oldValues = new IdentityMap();
        IdentityMap newValues = new IdentityMap();
        Set addedKeys = diff.getAddedKeys();
        Iterator iter = addedKeys.iterator();
        while (iter.hasNext()) {
            Object addedKey = iter.next();
            this.addDetailObservable(addedKey);
            IObservableValue detailValue = this.getDetailObservableValue(addedKey);
            newValues.put(addedKey, detailValue.getValue());
        }
        Set removedKeys = diff.getRemovedKeys();
        Iterator iter2 = removedKeys.iterator();
        while (iter2.hasNext()) {
            Object removedKey = iter2.next();
            IObservableValue detailValue = this.getDetailObservableValue(removedKey);
            oldValues.put(removedKey, detailValue.getValue());
            this.removeDetailObservable(removedKey);
        }
        Set changedKeys = diff.getChangedKeys();
        Iterator iter3 = changedKeys.iterator();
        while (iter3.hasNext()) {
            Object changedKey = iter3.next();
            IObservableValue oldDetailValue = this.getDetailObservableValue(changedKey);
            oldValues.put(changedKey, oldDetailValue.getValue());
            this.removeDetailObservable(changedKey);
            this.addDetailObservable(changedKey);
            IObservableValue newDetailValue = this.getDetailObservableValue(changedKey);
            newValues.put(changedKey, newDetailValue.getValue());
        }
        this.fireMapChange(Diffs.createMapDiff(addedKeys, removedKeys, changedKeys, oldValues, newValues));
    }

    private void addDetailObservable(final Object addedKey) {
        Object masterElement = this.masterMap.get(addedKey);
        IObservableValue detailValue = (IObservableValue)this.keyDetailMap.get(addedKey);
        if (detailValue == null) {
            detailValue = this.createDetailObservable(masterElement);
            this.keyDetailMap.put(addedKey, detailValue);
            detailValue.addValueChangeListener(new IValueChangeListener(){

                public void handleValueChange(ValueChangeEvent event) {
                    if (!event.getObservableValue().isStale()) {
                        MapDetailValueObservableMap.this.staleDetailObservables.remove(event.getSource());
                    }
                    MapDetailValueObservableMap.this.fireMapChange(Diffs.createMapDiffSingleChange(addedKey, event.diff.getOldValue(), event.diff.getNewValue()));
                }
            });
            if (detailValue.isStale()) {
                this.addStaleDetailObservable(detailValue);
            }
        }
        detailValue.addStaleListener(this.detailStaleListener);
    }

    private IObservableValue createDetailObservable(Object masterElement) {
        ObservableTracker.setIgnore(true);
        try {
            IObservableValue iObservableValue = (IObservableValue)this.observableValueFactory.createObservable(masterElement);
            return iObservableValue;
        }
        finally {
            ObservableTracker.setIgnore(false);
        }
    }

    private void removeDetailObservable(Object removedKey) {
        if (this.isDisposed()) {
            return;
        }
        IObservableValue detailValue = (IObservableValue)this.keyDetailMap.remove(removedKey);
        this.staleDetailObservables.remove(detailValue);
        detailValue.dispose();
    }

    private IObservableValue getDetailObservableValue(Object masterKey) {
        return (IObservableValue)this.keyDetailMap.get(masterKey);
    }

    private void addStaleDetailObservable(IObservableValue detailObservable) {
        boolean wasStale = this.isStale();
        this.staleDetailObservables.add(detailObservable);
        if (!wasStale) {
            this.fireStale();
        }
    }

    public Set keySet() {
        this.getterCalled();
        return this.masterMap.keySet();
    }

    public Object get(Object key) {
        this.getterCalled();
        if (!this.containsKey(key)) {
            return null;
        }
        IObservableValue detailValue = this.getDetailObservableValue(key);
        return detailValue.getValue();
    }

    public Object put(Object key, Object value) {
        if (!this.containsKey(key)) {
            return null;
        }
        IObservableValue detailValue = this.getDetailObservableValue(key);
        Object oldValue = detailValue.getValue();
        detailValue.setValue(value);
        return oldValue;
    }

    public boolean containsKey(Object key) {
        this.getterCalled();
        return this.masterMap.containsKey(key);
    }

    public Object remove(Object key) {
        this.checkRealm();
        if (!this.containsKey(key)) {
            return null;
        }
        IObservableValue detailValue = this.getDetailObservableValue(key);
        Object oldValue = detailValue.getValue();
        this.masterMap.remove(key);
        return oldValue;
    }

    public int size() {
        this.getterCalled();
        return this.masterMap.size();
    }

    public boolean isStale() {
        return super.isStale() || this.masterMap != null && this.masterMap.isStale() || this.staleDetailObservables != null && !this.staleDetailObservables.isEmpty();
    }

    public Object getKeyType() {
        return this.masterMap.getKeyType();
    }

    public Object getValueType() {
        return this.detailValueType;
    }

    public Object getObserved() {
        return this.masterMap;
    }

    public synchronized void dispose() {
        if (this.masterMap != null) {
            this.masterMap.removeMapChangeListener(this.masterMapListener);
            this.masterMap.removeStaleListener(this.masterStaleListener);
        }
        if (this.keyDetailMap != null) {
            Iterator iter = this.keyDetailMap.values().iterator();
            while (iter.hasNext()) {
                IObservableValue detailValue = (IObservableValue)iter.next();
                detailValue.dispose();
            }
            this.keyDetailMap.clear();
        }
        this.masterMap = null;
        this.observableValueFactory = null;
        this.detailValueType = null;
        this.keyDetailMap = null;
        this.masterStaleListener = null;
        this.detailStaleListener = null;
        this.staleDetailObservables = null;
        super.dispose();
    }

    public Set entrySet() {
        this.getterCalled();
        if (this.entrySet == null) {
            this.entrySet = new EntrySet();
        }
        return this.entrySet;
    }

    private void getterCalled() {
        ObservableTracker.getterCalled(this);
    }

    private class EntrySet
    extends AbstractSet {
        private EntrySet() {
        }

        public Iterator iterator() {
            Iterator keyIterator = MapDetailValueObservableMap.this.keySet().iterator();
            return new Iterator(this, keyIterator){
                final /* synthetic */ EntrySet this$1;
                private final /* synthetic */ Iterator val$keyIterator;
                {
                    this.this$1 = entrySet;
                    this.val$keyIterator = iterator;
                }

                public boolean hasNext() {
                    return this.val$keyIterator.hasNext();
                }

                public Object next() {
                    E key = this.val$keyIterator.next();
                    return EntrySet.access$1(this.this$1).new MapEntry(key);
                }

                public void remove() {
                    this.val$keyIterator.remove();
                }
            };
        }

        public int size() {
            return MapDetailValueObservableMap.this.size();
        }

        static /* synthetic */ MapDetailValueObservableMap access$1(EntrySet entrySet) {
            return entrySet.MapDetailValueObservableMap.this;
        }
    }

    private final class MapEntry
    implements Map.Entry {
        private final Object key;

        private MapEntry(Object key) {
            this.key = key;
        }

        public Object getKey() {
            MapDetailValueObservableMap.this.getterCalled();
            return this.key;
        }

        public Object getValue() {
            return MapDetailValueObservableMap.this.get(this.getKey());
        }

        public Object setValue(Object value) {
            return MapDetailValueObservableMap.this.put(this.getKey(), value);
        }

        public boolean equals(Object o) {
            MapDetailValueObservableMap.this.getterCalled();
            if (o == this) {
                return true;
            }
            if (o == null) {
                return false;
            }
            if (!(o instanceof Map.Entry)) {
                return false;
            }
            Map.Entry that = (Map.Entry)o;
            return Util.equals(this.getKey(), that.getKey()) && Util.equals(this.getValue(), that.getValue());
        }

        public int hashCode() {
            MapDetailValueObservableMap.this.getterCalled();
            Object value = this.getValue();
            return (this.getKey() == null ? 0 : this.getKey().hashCode()) ^ (value == null ? 0 : value.hashCode());
        }
    }
}

