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
 *  org.eclipse.core.databinding.observable.map.MapDiff
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.databinding.observable.set.ISetChangeListener
 *  org.eclipse.core.databinding.observable.set.SetChangeEvent
 *  org.eclipse.core.databinding.observable.set.SetDiff
 */
package org.eclipse.core.internal.databinding.property.value;

import java.util.AbstractSet;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.StaleEvent;
import org.eclipse.core.databinding.observable.map.AbstractObservableMap;
import org.eclipse.core.databinding.observable.map.MapDiff;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.set.ISetChangeListener;
import org.eclipse.core.databinding.observable.set.SetChangeEvent;
import org.eclipse.core.databinding.observable.set.SetDiff;
import org.eclipse.core.databinding.property.IProperty;
import org.eclipse.core.databinding.property.IPropertyObservable;
import org.eclipse.core.databinding.property.value.DelegatingValueProperty;
import org.eclipse.core.internal.databinding.property.Util;
import org.eclipse.core.internal.databinding.property.value.DelegatingCache;

public class SetDelegatingValueObservableMap
extends AbstractObservableMap
implements IPropertyObservable {
    private IObservableSet masterSet;
    private DelegatingValueProperty detailProperty;
    private DelegatingCache cache;
    private Set entrySet;
    private ISetChangeListener masterListener = new ISetChangeListener(){

        public void handleSetChange(SetChangeEvent event) {
            if (SetDelegatingValueObservableMap.this.isDisposed()) {
                return;
            }
            SetDelegatingValueObservableMap.this.cache.addAll((Collection)SetDelegatingValueObservableMap.this.masterSet);
            MapDiff diff = this.convertDiff(event.diff);
            SetDelegatingValueObservableMap.this.cache.retainAll((Collection)SetDelegatingValueObservableMap.this.masterSet);
            SetDelegatingValueObservableMap.this.fireMapChange(diff);
        }

        private MapDiff convertDiff(SetDiff diff) {
            Object masterElement;
            HashMap oldValues = new HashMap();
            HashMap newValues = new HashMap();
            Iterator it = diff.getRemovals().iterator();
            while (it.hasNext()) {
                masterElement = it.next();
                oldValues.put(masterElement, SetDelegatingValueObservableMap.this.cache.get(masterElement));
            }
            it = diff.getAdditions().iterator();
            while (it.hasNext()) {
                masterElement = it.next();
                newValues.put(masterElement, SetDelegatingValueObservableMap.this.cache.get(masterElement));
            }
            return Diffs.createMapDiff((Set)diff.getAdditions(), (Set)diff.getRemovals(), (Set)Collections.EMPTY_SET, oldValues, newValues);
        }
    };
    private IStaleListener staleListener = new IStaleListener(){

        public void handleStale(StaleEvent staleEvent) {
            SetDelegatingValueObservableMap.this.fireStale();
        }
    };

    public SetDelegatingValueObservableMap(IObservableSet keySet, DelegatingValueProperty valueProperty) {
        super(keySet.getRealm());
        this.masterSet = keySet;
        this.detailProperty = valueProperty;
        this.cache = new DelegatingCache(this.getRealm(), valueProperty){

            void handleValueChange(Object masterElement, Object oldValue, Object newValue) {
                SetDelegatingValueObservableMap.this.fireMapChange(Diffs.createMapDiffSingleChange((Object)masterElement, (Object)oldValue, (Object)newValue));
            }
        };
        this.cache.addAll((Collection)this.masterSet);
        this.masterSet.addSetChangeListener(this.masterListener);
        this.masterSet.addStaleListener(this.staleListener);
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
        return this.cache.get(key);
    }

    public Object put(Object key, Object value) {
        this.checkRealm();
        return this.cache.put(key, value);
    }

    public boolean isStale() {
        return this.masterSet.isStale();
    }

    public Object getObserved() {
        return this.masterSet;
    }

    public IProperty getProperty() {
        return this.detailProperty;
    }

    public Object getKeyType() {
        return this.masterSet.getElementType();
    }

    public Object getValueType() {
        return this.detailProperty.getValueType();
    }

    public synchronized void dispose() {
        if (this.masterSet != null) {
            this.masterSet.removeSetChangeListener(this.masterListener);
            this.masterSet.removeStaleListener(this.staleListener);
            this.masterSet = null;
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
                final Iterator it;
                final /* synthetic */ EntrySet this$1;
                {
                    this.this$1 = entrySet;
                    this.it = SetDelegatingValueObservableMap.access$1(EntrySet.access$0(entrySet)).iterator();
                }

                public boolean hasNext() {
                    return this.it.hasNext();
                }

                public Object next() {
                    return EntrySet.access$0(this.this$1).new MapEntry(this.it.next());
                }

                public void remove() {
                    this.it.remove();
                }
            };
        }

        public int size() {
            return SetDelegatingValueObservableMap.this.masterSet.size();
        }

        static /* synthetic */ SetDelegatingValueObservableMap access$0(EntrySet entrySet) {
            return entrySet.SetDelegatingValueObservableMap.this;
        }
    }

    class MapEntry
    implements Map.Entry {
        private final Object key;

        MapEntry(Object key) {
            this.key = key;
        }

        public Object getKey() {
            SetDelegatingValueObservableMap.this.getterCalled();
            return this.key;
        }

        public Object getValue() {
            SetDelegatingValueObservableMap.this.getterCalled();
            if (!SetDelegatingValueObservableMap.this.masterSet.contains(this.key)) {
                return null;
            }
            return SetDelegatingValueObservableMap.this.cache.get(this.key);
        }

        public Object setValue(Object value) {
            SetDelegatingValueObservableMap.this.checkRealm();
            if (!SetDelegatingValueObservableMap.this.masterSet.contains(this.key)) {
                return null;
            }
            return SetDelegatingValueObservableMap.this.cache.put(this.key, value);
        }

        public boolean equals(Object o) {
            SetDelegatingValueObservableMap.this.getterCalled();
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
            SetDelegatingValueObservableMap.this.getterCalled();
            Object value = this.getValue();
            return (this.key == null ? 0 : this.key.hashCode()) ^ (value == null ? 0 : value.hashCode());
        }
    }
}

