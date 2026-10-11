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
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.databinding.observable.set.ISetChangeListener
 *  org.eclipse.core.databinding.observable.set.SetChangeEvent
 *  org.eclipse.core.internal.databinding.identity.IdentityMap
 *  org.eclipse.core.internal.databinding.identity.IdentityObservableSet
 *  org.eclipse.core.internal.databinding.identity.IdentitySet
 */
package org.eclipse.core.internal.databinding.property.value;

import java.util.AbstractSet;
import java.util.Collection;
import java.util.Collections;
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
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.set.ISetChangeListener;
import org.eclipse.core.databinding.observable.set.SetChangeEvent;
import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.IProperty;
import org.eclipse.core.databinding.property.IPropertyObservable;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.core.databinding.property.SimplePropertyEvent;
import org.eclipse.core.databinding.property.value.SimpleValueProperty;
import org.eclipse.core.internal.databinding.identity.IdentityMap;
import org.eclipse.core.internal.databinding.identity.IdentityObservableSet;
import org.eclipse.core.internal.databinding.identity.IdentitySet;
import org.eclipse.core.internal.databinding.property.Util;

public class MapSimpleValueObservableMap
extends AbstractObservableMap
implements IPropertyObservable {
    private IObservableMap masterMap;
    private SimpleValueProperty detailProperty;
    private IObservableSet knownMasterValues;
    private Map cachedValues;
    private Set staleMasterValues;
    private boolean updating = false;
    private IMapChangeListener masterListener = new IMapChangeListener(){

        public void handleMapChange(MapChangeEvent event) {
            if (!MapSimpleValueObservableMap.this.isDisposed()) {
                this.updateKnownValues();
                if (!MapSimpleValueObservableMap.this.updating) {
                    MapSimpleValueObservableMap.this.fireMapChange(this.convertDiff(event.diff));
                }
            }
        }

        private void updateKnownValues() {
            IdentitySet knownValues = new IdentitySet(MapSimpleValueObservableMap.this.masterMap.values());
            MapSimpleValueObservableMap.this.knownMasterValues.retainAll((Collection)knownValues);
            MapSimpleValueObservableMap.this.knownMasterValues.addAll((Collection)knownValues);
        }

        private MapDiff convertDiff(MapDiff diff) {
            IdentityMap oldValues = new IdentityMap();
            IdentityMap newValues = new IdentityMap();
            Set addedKeys = diff.getAddedKeys();
            Iterator it = addedKeys.iterator();
            while (it.hasNext()) {
                Object key = it.next();
                Object newSource = diff.getNewValue(key);
                Object newValue = MapSimpleValueObservableMap.this.detailProperty.getValue(newSource);
                newValues.put(key, newValue);
            }
            Set removedKeys = diff.getRemovedKeys();
            Iterator it2 = removedKeys.iterator();
            while (it2.hasNext()) {
                Object key = it2.next();
                Object oldSource = diff.getOldValue(key);
                Object oldValue = MapSimpleValueObservableMap.this.detailProperty.getValue(oldSource);
                oldValues.put(key, oldValue);
            }
            IdentitySet changedKeys = new IdentitySet((Collection)diff.getChangedKeys());
            Iterator it3 = changedKeys.iterator();
            while (it3.hasNext()) {
                Object newValue;
                Object key = it3.next();
                Object oldSource = diff.getOldValue(key);
                Object newSource = diff.getNewValue(key);
                Object oldValue = MapSimpleValueObservableMap.this.detailProperty.getValue(oldSource);
                if (Util.equals(oldValue, newValue = MapSimpleValueObservableMap.this.detailProperty.getValue(newSource))) {
                    it3.remove();
                    continue;
                }
                oldValues.put(key, oldValue);
                newValues.put(key, newValue);
            }
            return Diffs.createMapDiff((Set)addedKeys, (Set)removedKeys, (Set)changedKeys, (Map)oldValues, (Map)newValues);
        }
    };
    private IStaleListener staleListener = new IStaleListener(){

        public void handleStale(StaleEvent staleEvent) {
            MapSimpleValueObservableMap.this.fireStale();
        }
    };
    private INativePropertyListener detailListener;
    private Set entrySet;

    public MapSimpleValueObservableMap(IObservableMap map, SimpleValueProperty valueProperty) {
        super(map.getRealm());
        this.masterMap = map;
        this.detailProperty = valueProperty;
        ISimplePropertyListener listener = new ISimplePropertyListener(){

            public void handleEvent(SimplePropertyEvent event) {
                if (!MapSimpleValueObservableMap.this.isDisposed() && !MapSimpleValueObservableMap.this.updating) {
                    MapSimpleValueObservableMap.this.getRealm().exec(new Runnable(this, event){
                        final /* synthetic */ 4 this$1;
                        private final /* synthetic */ SimplePropertyEvent val$event;
                        {
                            this.this$1 = var1_1;
                            this.val$event = simplePropertyEvent;
                        }

                        public void run() {
                            if (this.val$event.type == SimplePropertyEvent.CHANGE) {
                                MapSimpleValueObservableMap.access$8(4.access$0(this.this$1), this.val$event.getSource());
                            } else if (this.val$event.type == SimplePropertyEvent.STALE) {
                                boolean wasStale = !MapSimpleValueObservableMap.access$9(4.access$0(this.this$1)).isEmpty();
                                MapSimpleValueObservableMap.access$9(4.access$0(this.this$1)).add(this.val$event.getSource());
                                if (!wasStale) {
                                    MapSimpleValueObservableMap.access$5(4.access$0(this.this$1));
                                }
                            }
                        }
                    });
                }
            }

            static /* synthetic */ MapSimpleValueObservableMap access$0(4 var0) {
                return var0.MapSimpleValueObservableMap.this;
            }
        };
        this.detailListener = this.detailProperty.adaptListener(listener);
    }

    public Object getKeyType() {
        return this.masterMap.getKeyType();
    }

    public Object getValueType() {
        return this.detailProperty.getValueType();
    }

    protected void firstListenerAdded() {
        ObservableTracker.setIgnore((boolean)true);
        try {
            this.knownMasterValues = new IdentityObservableSet(this.getRealm(), null);
        }
        finally {
            ObservableTracker.setIgnore((boolean)false);
        }
        this.cachedValues = new IdentityMap();
        this.staleMasterValues = new IdentitySet();
        this.knownMasterValues.addSetChangeListener(new ISetChangeListener(){

            public void handleSetChange(SetChangeEvent event) {
                Object key;
                Iterator it = event.diff.getRemovals().iterator();
                while (it.hasNext()) {
                    key = it.next();
                    if (MapSimpleValueObservableMap.this.detailListener != null) {
                        MapSimpleValueObservableMap.this.detailListener.removeFrom(key);
                    }
                    MapSimpleValueObservableMap.this.cachedValues.remove(key);
                    MapSimpleValueObservableMap.this.staleMasterValues.remove(key);
                }
                it = event.diff.getAdditions().iterator();
                while (it.hasNext()) {
                    key = it.next();
                    MapSimpleValueObservableMap.this.cachedValues.put(key, MapSimpleValueObservableMap.this.detailProperty.getValue(key));
                    if (MapSimpleValueObservableMap.this.detailListener == null) continue;
                    MapSimpleValueObservableMap.this.detailListener.addTo(key);
                }
            }
        });
        this.getRealm().exec(new Runnable(){

            public void run() {
                MapSimpleValueObservableMap.this.knownMasterValues.addAll(MapSimpleValueObservableMap.this.masterMap.values());
                MapSimpleValueObservableMap.this.masterMap.addMapChangeListener(MapSimpleValueObservableMap.this.masterListener);
                MapSimpleValueObservableMap.this.masterMap.addStaleListener(MapSimpleValueObservableMap.this.staleListener);
            }
        });
    }

    protected void lastListenerRemoved() {
        this.masterMap.removeMapChangeListener(this.masterListener);
        this.masterMap.removeStaleListener(this.staleListener);
        if (this.knownMasterValues != null) {
            this.knownMasterValues.dispose();
            this.knownMasterValues = null;
        }
        this.cachedValues.clear();
        this.cachedValues = null;
        this.staleMasterValues.clear();
        this.staleMasterValues = null;
    }

    public Set entrySet() {
        this.getterCalled();
        if (this.entrySet == null) {
            this.entrySet = new EntrySet();
        }
        return this.entrySet;
    }

    public boolean containsKey(Object key) {
        this.getterCalled();
        return this.masterMap.containsKey(key);
    }

    public Object get(Object key) {
        this.getterCalled();
        return this.detailProperty.getValue(this.masterMap.get(key));
    }

    public Object put(Object key, Object value) {
        if (!this.masterMap.containsKey(key)) {
            return null;
        }
        Object masterValue = this.masterMap.get(key);
        Object oldValue = this.detailProperty.getValue(masterValue);
        this.detailProperty.setValue(masterValue, value);
        this.notifyIfChanged(masterValue);
        return oldValue;
    }

    public Object remove(Object key) {
        this.checkRealm();
        Object masterValue = this.masterMap.get(key);
        Object oldValue = this.detailProperty.getValue(masterValue);
        this.masterMap.remove(key);
        return oldValue;
    }

    private void notifyIfChanged(Object masterValue) {
        if (this.cachedValues != null) {
            Object newValue;
            final Set keys = this.keysFor(masterValue);
            final Object oldValue = this.cachedValues.get(masterValue);
            if (!Util.equals(oldValue, newValue = this.detailProperty.getValue(masterValue)) || this.staleMasterValues.contains(masterValue)) {
                this.cachedValues.put(masterValue, newValue);
                this.staleMasterValues.remove(masterValue);
                this.fireMapChange(new MapDiff(){

                    public Set getAddedKeys() {
                        return Collections.EMPTY_SET;
                    }

                    public Set getChangedKeys() {
                        return keys;
                    }

                    public Set getRemovedKeys() {
                        return Collections.EMPTY_SET;
                    }

                    public Object getNewValue(Object key) {
                        return newValue;
                    }

                    public Object getOldValue(Object key) {
                        return oldValue;
                    }
                });
            }
        }
    }

    private Set keysFor(Object value) {
        IdentitySet keys = new IdentitySet();
        Iterator it = this.masterMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry)it.next();
            if (entry.getValue() != value) continue;
            keys.add(entry.getKey());
        }
        return keys;
    }

    public boolean isStale() {
        this.getterCalled();
        return this.masterMap.isStale() || this.staleMasterValues != null && !this.staleMasterValues.isEmpty();
    }

    private void getterCalled() {
        ObservableTracker.getterCalled((IObservable)this);
    }

    public Object getObserved() {
        return this.masterMap;
    }

    public IProperty getProperty() {
        return this.detailProperty;
    }

    public synchronized void dispose() {
        if (this.masterMap != null) {
            this.masterMap.removeMapChangeListener(this.masterListener);
            this.masterMap = null;
        }
        if (this.knownMasterValues != null) {
            this.knownMasterValues.clear();
            this.knownMasterValues.dispose();
            this.knownMasterValues = null;
        }
        this.masterListener = null;
        this.detailListener = null;
        this.detailProperty = null;
        this.cachedValues = null;
        this.staleMasterValues = null;
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
                    this.it = MapSimpleValueObservableMap.access$2(EntrySet.access$0(entrySet)).entrySet().iterator();
                }

                public boolean hasNext() {
                    MapSimpleValueObservableMap.access$6(EntrySet.access$0(this.this$1));
                    return this.it.hasNext();
                }

                public Object next() {
                    MapSimpleValueObservableMap.access$6(EntrySet.access$0(this.this$1));
                    Map.Entry next = (Map.Entry)this.it.next();
                    return EntrySet.access$0(this.this$1).new MapEntry(next.getKey());
                }

                public void remove() {
                    this.it.remove();
                }
            };
        }

        public int size() {
            return MapSimpleValueObservableMap.this.masterMap.size();
        }

        static /* synthetic */ MapSimpleValueObservableMap access$0(EntrySet entrySet) {
            return entrySet.MapSimpleValueObservableMap.this;
        }
    }

    class MapEntry
    implements Map.Entry {
        private Object key;

        MapEntry(Object key) {
            this.key = key;
        }

        public Object getKey() {
            MapSimpleValueObservableMap.this.getterCalled();
            return this.key;
        }

        public Object getValue() {
            MapSimpleValueObservableMap.this.getterCalled();
            if (!MapSimpleValueObservableMap.this.masterMap.containsKey(this.key)) {
                return null;
            }
            return MapSimpleValueObservableMap.this.detailProperty.getValue(MapSimpleValueObservableMap.this.masterMap.get(this.key));
        }

        public Object setValue(Object value) {
            if (!MapSimpleValueObservableMap.this.masterMap.containsKey(this.key)) {
                return null;
            }
            Object source = MapSimpleValueObservableMap.this.masterMap.get(this.key);
            Object oldValue = MapSimpleValueObservableMap.this.detailProperty.getValue(source);
            MapSimpleValueObservableMap.this.updating = true;
            try {
                MapSimpleValueObservableMap.this.detailProperty.setValue(source, value);
            }
            finally {
                MapSimpleValueObservableMap.this.updating = false;
            }
            MapSimpleValueObservableMap.this.notifyIfChanged(source);
            return oldValue;
        }

        public boolean equals(Object o) {
            MapSimpleValueObservableMap.this.getterCalled();
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
            MapSimpleValueObservableMap.this.getterCalled();
            Object value = this.getValue();
            return (this.key == null ? 0 : this.key.hashCode()) ^ (value == null ? 0 : value.hashCode());
        }
    }
}

