/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Diffs
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.IStaleListener
 *  org.eclipse.core.databinding.observable.ObservableTracker
 *  org.eclipse.core.databinding.observable.StaleEvent
 *  org.eclipse.core.databinding.observable.map.AbstractObservableMap
 *  org.eclipse.core.databinding.observable.map.IMapChangeListener
 *  org.eclipse.core.databinding.observable.map.IObservableMap
 *  org.eclipse.core.databinding.observable.map.MapChangeEvent
 *  org.eclipse.core.databinding.observable.map.MapDiff
 */
package org.eclipse.core.internal.databinding.property.value;

import java.util.AbstractSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.StaleEvent;
import org.eclipse.core.databinding.observable.map.AbstractObservableMap;
import org.eclipse.core.databinding.observable.map.IMapChangeListener;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.map.MapChangeEvent;
import org.eclipse.core.databinding.observable.map.MapDiff;
import org.eclipse.core.databinding.property.IProperty;
import org.eclipse.core.databinding.property.IPropertyObservable;
import org.eclipse.core.databinding.property.value.DelegatingValueProperty;
import org.eclipse.core.internal.databinding.property.Util;
import org.eclipse.core.internal.databinding.property.value.DelegatingCache;

public class MapDelegatingValueObservableMap
extends AbstractObservableMap
implements IPropertyObservable {
    private IObservableMap masterMap;
    private DelegatingValueProperty detailProperty;
    private DelegatingCache cache;
    private Set entrySet;
    private IMapChangeListener masterListener = new IMapChangeListener(){

        public void handleMapChange(MapChangeEvent event) {
            if (MapDelegatingValueObservableMap.this.isDisposed()) {
                return;
            }
            MapDelegatingValueObservableMap.this.cache.addAll(MapDelegatingValueObservableMap.this.masterMap.values());
            MapDiff diff = this.convertDiff(event.diff);
            MapDelegatingValueObservableMap.this.cache.retainAll(MapDelegatingValueObservableMap.this.masterMap.values());
            MapDelegatingValueObservableMap.this.fireMapChange(diff);
        }

        private MapDiff convertDiff(MapDiff diff) {
            HashMap oldValues = new HashMap();
            HashMap newValues = new HashMap();
            Set addedKeys = diff.getAddedKeys();
            Iterator it = addedKeys.iterator();
            while (it.hasNext()) {
                Object key = it.next();
                Object masterValue = diff.getNewValue(key);
                Object newValue = MapDelegatingValueObservableMap.this.cache.get(masterValue);
                newValues.put(key, newValue);
            }
            Set removedKeys = diff.getRemovedKeys();
            Iterator it2 = removedKeys.iterator();
            while (it2.hasNext()) {
                Object key = it2.next();
                Object masterValue = diff.getOldValue(key);
                Object oldValue = MapDelegatingValueObservableMap.this.cache.get(masterValue);
                oldValues.put(key, oldValue);
            }
            HashSet changedKeys = new HashSet(diff.getChangedKeys());
            Iterator it3 = changedKeys.iterator();
            while (it3.hasNext()) {
                Object newValue;
                Object key = it3.next();
                Object oldMasterValue = diff.getOldValue(key);
                Object newMasterValue = diff.getNewValue(key);
                Object oldValue = MapDelegatingValueObservableMap.this.cache.get(oldMasterValue);
                if (Util.equals(oldValue, newValue = MapDelegatingValueObservableMap.this.cache.get(newMasterValue))) {
                    it3.remove();
                    continue;
                }
                oldValues.put(key, oldValue);
                newValues.put(key, newValue);
            }
            return Diffs.createMapDiff((Set)addedKeys, (Set)removedKeys, changedKeys, oldValues, newValues);
        }
    };
    private IStaleListener staleListener = new IStaleListener(){

        public void handleStale(StaleEvent staleEvent) {
            MapDelegatingValueObservableMap.this.fireStale();
        }
    };

    public MapDelegatingValueObservableMap(IObservableMap map, DelegatingValueProperty valueProperty) {
        super(map.getRealm());
        this.masterMap = map;
        this.detailProperty = valueProperty;
        this.cache = new DelegatingCache(this.getRealm(), valueProperty){

            void handleValueChange(Object masterElement, Object oldValue, Object newValue) {
                MapDelegatingValueObservableMap.this.fireMapChange(MapDelegatingValueObservableMap.this.keysFor(masterElement), oldValue, newValue);
            }
        };
        this.cache.addAll(this.masterMap.values());
        this.masterMap.addMapChangeListener(this.masterListener);
        this.masterMap.addStaleListener(this.staleListener);
    }

    public Set entrySet() {
        this.getterCalled();
        if (this.entrySet == null) {
            this.entrySet = new EntrySet();
        }
        return this.entrySet;
    }

    private void getterCalled() {
        ObservableTracker.getterCalled((IObservable)this);
    }

    public Object get(Object key) {
        this.getterCalled();
        Object masterValue = this.masterMap.get(key);
        return this.cache.get(masterValue);
    }

    public Object put(Object key, Object value) {
        if (!this.masterMap.containsKey(key)) {
            return null;
        }
        Object masterValue = this.masterMap.get(key);
        return this.cache.put(masterValue, value);
    }

    public boolean isStale() {
        this.getterCalled();
        return this.masterMap.isStale();
    }

    public Object getObserved() {
        return this.masterMap;
    }

    public IProperty getProperty() {
        return this.detailProperty;
    }

    public Object getKeyType() {
        return this.masterMap.getKeyType();
    }

    public Object getValueType() {
        return this.detailProperty.getValueType();
    }

    private Set keysFor(Object masterValue) {
        HashSet keys = new HashSet();
        Iterator it = this.masterMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry)it.next();
            if (entry.getValue() != masterValue) continue;
            keys.add(entry.getKey());
        }
        return keys;
    }

    private void fireMapChange(final Set changedKeys, final Object oldValue, final Object newValue) {
        this.fireMapChange(new MapDiff(){

            public Set getAddedKeys() {
                return Collections.EMPTY_SET;
            }

            public Set getRemovedKeys() {
                return Collections.EMPTY_SET;
            }

            public Set getChangedKeys() {
                return Collections.unmodifiableSet(changedKeys);
            }

            public Object getOldValue(Object key) {
                if (changedKeys.contains(key)) {
                    return oldValue;
                }
                return null;
            }

            public Object getNewValue(Object key) {
                if (changedKeys.contains(key)) {
                    return newValue;
                }
                return null;
            }
        });
    }

    public synchronized void dispose() {
        if (this.masterMap != null) {
            this.masterMap.removeMapChangeListener(this.masterListener);
            this.masterMap.removeStaleListener(this.staleListener);
            this.masterMap = null;
        }
        if (this.cache != null) {
            this.cache.dispose();
            this.cache = null;
        }
        this.masterListener = null;
        this.detailProperty = null;
        super.dispose();
    }

    class EntrySet
    extends AbstractSet {
        EntrySet() {
        }

        public Iterator iterator() {
            return new Iterator(this){
                Iterator it;
                final /* synthetic */ EntrySet this$1;
                {
                    this.this$1 = entrySet;
                    this.it = MapDelegatingValueObservableMap.access$1(EntrySet.access$0(entrySet)).entrySet().iterator();
                }

                public boolean hasNext() {
                    MapDelegatingValueObservableMap.access$4(EntrySet.access$0(this.this$1));
                    return this.it.hasNext();
                }

                public Object next() {
                    MapDelegatingValueObservableMap.access$4(EntrySet.access$0(this.this$1));
                    Map.Entry next = (Map.Entry)this.it.next();
                    return EntrySet.access$0(this.this$1).new MapEntry(next.getKey());
                }

                public void remove() {
                    this.it.remove();
                }
            };
        }

        public int size() {
            return MapDelegatingValueObservableMap.this.masterMap.size();
        }

        static /* synthetic */ MapDelegatingValueObservableMap access$0(EntrySet entrySet) {
            return entrySet.MapDelegatingValueObservableMap.this;
        }
    }

    class MapEntry
    implements Map.Entry {
        private Object key;

        MapEntry(Object key) {
            this.key = key;
        }

        public Object getKey() {
            MapDelegatingValueObservableMap.this.getterCalled();
            return this.key;
        }

        public Object getValue() {
            MapDelegatingValueObservableMap.this.getterCalled();
            if (!MapDelegatingValueObservableMap.this.masterMap.containsKey(this.key)) {
                return null;
            }
            Object masterValue = MapDelegatingValueObservableMap.this.masterMap.get(this.key);
            return MapDelegatingValueObservableMap.this.cache.get(masterValue);
        }

        public Object setValue(Object value) {
            MapDelegatingValueObservableMap.this.checkRealm();
            if (!MapDelegatingValueObservableMap.this.masterMap.containsKey(this.key)) {
                return null;
            }
            Object masterValue = MapDelegatingValueObservableMap.this.masterMap.get(this.key);
            return MapDelegatingValueObservableMap.this.cache.put(masterValue, value);
        }

        public boolean equals(Object o) {
            MapDelegatingValueObservableMap.this.getterCalled();
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
            MapDelegatingValueObservableMap.this.getterCalled();
            Object value = this.getValue();
            return (this.key == null ? 0 : this.key.hashCode()) ^ (value == null ? 0 : value.hashCode());
        }
    }
}

