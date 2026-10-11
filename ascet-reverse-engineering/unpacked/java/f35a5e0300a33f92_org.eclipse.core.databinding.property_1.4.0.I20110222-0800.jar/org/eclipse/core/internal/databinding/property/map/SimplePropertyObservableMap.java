/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Diffs
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.ObservableTracker
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.map.AbstractObservableMap
 *  org.eclipse.core.databinding.observable.map.MapDiff
 */
package org.eclipse.core.internal.databinding.property.map;

import java.util.AbstractSet;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.map.AbstractObservableMap;
import org.eclipse.core.databinding.observable.map.MapDiff;
import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.IProperty;
import org.eclipse.core.databinding.property.IPropertyObservable;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.core.databinding.property.SimplePropertyEvent;
import org.eclipse.core.databinding.property.map.SimpleMapProperty;

public class SimplePropertyObservableMap
extends AbstractObservableMap
implements IPropertyObservable {
    private Object source;
    private SimpleMapProperty property;
    private volatile boolean updating = false;
    private volatile int modCount = 0;
    private INativePropertyListener listener;
    private Map cachedMap;
    private boolean stale;
    private EntrySet es = new EntrySet();

    public SimplePropertyObservableMap(Realm realm, Object source, SimpleMapProperty property) {
        super(realm);
        this.source = source;
        this.property = property;
    }

    public Object getKeyType() {
        return this.property.getKeyType();
    }

    public Object getValueType() {
        return this.property.getValueType();
    }

    private void getterCalled() {
        ObservableTracker.getterCalled((IObservable)this);
    }

    protected void firstListenerAdded() {
        if (!this.isDisposed()) {
            if (this.listener == null) {
                this.listener = this.property.adaptListener(new ISimplePropertyListener(){

                    public void handleEvent(SimplePropertyEvent event) {
                        if (!SimplePropertyObservableMap.this.isDisposed() && !SimplePropertyObservableMap.this.updating) {
                            SimplePropertyObservableMap.this.getRealm().exec(new Runnable(this, event){
                                final /* synthetic */ 1 this$1;
                                private final /* synthetic */ SimplePropertyEvent val$event;
                                {
                                    this.this$1 = var1_1;
                                    this.val$event = simplePropertyEvent;
                                }

                                public void run() {
                                    if (this.val$event.type == SimplePropertyEvent.CHANGE) {
                                        SimplePropertyObservableMap simplePropertyObservableMap = 1.access$0(this.this$1);
                                        SimplePropertyObservableMap.access$5(simplePropertyObservableMap, SimplePropertyObservableMap.access$1(simplePropertyObservableMap) + 1);
                                        SimplePropertyObservableMap.access$6(1.access$0(this.this$1), (MapDiff)this.val$event.diff);
                                    } else if (this.val$event.type == SimplePropertyEvent.STALE && !SimplePropertyObservableMap.access$7(1.access$0(this.this$1))) {
                                        SimplePropertyObservableMap.access$8(1.access$0(this.this$1), true);
                                        SimplePropertyObservableMap.access$9(1.access$0(this.this$1));
                                    }
                                }
                            });
                        }
                    }

                    static /* synthetic */ SimplePropertyObservableMap access$0(1 var0) {
                        return var0.SimplePropertyObservableMap.this;
                    }
                });
            }
            this.getRealm().exec(new Runnable(){

                public void run() {
                    SimplePropertyObservableMap.this.cachedMap = new HashMap(SimplePropertyObservableMap.this.getMap());
                    SimplePropertyObservableMap.this.stale = false;
                    if (SimplePropertyObservableMap.this.listener != null) {
                        SimplePropertyObservableMap.this.listener.addTo(SimplePropertyObservableMap.this.source);
                    }
                }
            });
        }
    }

    protected void lastListenerRemoved() {
        if (this.listener != null) {
            this.listener.removeFrom(this.source);
        }
        this.cachedMap.clear();
        this.cachedMap = null;
        this.stale = false;
    }

    private Map getMap() {
        return this.property.getMap(this.source);
    }

    private void updateMap(Map map, MapDiff diff) {
        if (!diff.isEmpty()) {
            boolean wasUpdating = this.updating;
            this.updating = true;
            try {
                this.property.updateMap(this.source, diff);
                ++this.modCount;
            }
            finally {
                this.updating = wasUpdating;
            }
            this.notifyIfChanged(null);
        }
    }

    public Set entrySet() {
        this.getterCalled();
        return this.es;
    }

    public Set keySet() {
        this.getterCalled();
        return super.keySet();
    }

    public boolean containsKey(Object key) {
        this.getterCalled();
        return this.getMap().containsKey(key);
    }

    public Object get(Object key) {
        this.getterCalled();
        return this.getMap().get(key);
    }

    public Object put(Object key, Object value) {
        this.checkRealm();
        Map map = this.getMap();
        boolean add = !map.containsKey(key);
        Object oldValue = map.get(key);
        MapDiff diff = add ? Diffs.createMapDiffSingleAdd((Object)key, (Object)value) : Diffs.createMapDiffSingleChange((Object)key, oldValue, (Object)value);
        this.updateMap(map, diff);
        return oldValue;
    }

    public void putAll(Map m) {
        this.checkRealm();
        Map map = this.getMap();
        HashMap oldValues = new HashMap();
        HashMap newValues = new HashMap();
        HashSet changedKeys = new HashSet();
        HashSet addedKeys = new HashSet();
        Iterator it = m.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = it.next();
            Object key = entry.getKey();
            Object newValue = entry.getValue();
            if (map.containsKey(key)) {
                changedKeys.add(key);
                oldValues.put(key, map.get(key));
            } else {
                addedKeys.add(key);
            }
            newValues.put(key, newValue);
        }
        MapDiff diff = Diffs.createMapDiff(addedKeys, (Set)Collections.EMPTY_SET, changedKeys, oldValues, newValues);
        this.updateMap(map, diff);
    }

    public Object remove(Object key) {
        this.checkRealm();
        Map map = this.getMap();
        if (!map.containsKey(key)) {
            return null;
        }
        Object oldValue = map.get(key);
        MapDiff diff = Diffs.createMapDiffSingleRemove((Object)key, oldValue);
        this.updateMap(map, diff);
        return oldValue;
    }

    public void clear() {
        this.getterCalled();
        Map map = this.getMap();
        if (map.isEmpty()) {
            return;
        }
        MapDiff diff = Diffs.createMapDiffRemoveAll(new HashMap(map));
        this.updateMap(map, diff);
    }

    public Collection values() {
        this.getterCalled();
        return super.values();
    }

    private void notifyIfChanged(MapDiff diff) {
        if (this.hasListeners()) {
            Map oldMap = this.cachedMap;
            HashMap newMap = this.cachedMap = new HashMap(this.getMap());
            if (diff == null) {
                diff = Diffs.computeMapDiff((Map)oldMap, newMap);
            }
            if (!diff.isEmpty() || this.stale) {
                this.stale = false;
                this.fireMapChange(diff);
            }
        }
    }

    public boolean isStale() {
        this.getterCalled();
        return this.stale;
    }

    public Object getObserved() {
        return this.source;
    }

    public IProperty getProperty() {
        return this.property;
    }

    public synchronized void dispose() {
        if (!this.isDisposed()) {
            if (this.listener != null) {
                this.listener.removeFrom(this.source);
            }
            this.property = null;
            this.source = null;
            this.listener = null;
            this.stale = false;
        }
        super.dispose();
    }

    static /* synthetic */ void access$5(SimplePropertyObservableMap simplePropertyObservableMap, int n) {
        simplePropertyObservableMap.modCount = n;
    }

    static /* synthetic */ void access$6(SimplePropertyObservableMap simplePropertyObservableMap, MapDiff mapDiff) {
        simplePropertyObservableMap.notifyIfChanged(mapDiff);
    }

    static /* synthetic */ boolean access$7(SimplePropertyObservableMap simplePropertyObservableMap) {
        return simplePropertyObservableMap.stale;
    }

    static /* synthetic */ void access$9(SimplePropertyObservableMap simplePropertyObservableMap) {
        simplePropertyObservableMap.fireStale();
    }

    private class EntrySet
    extends AbstractSet {
        private EntrySet() {
        }

        public Iterator iterator() {
            return new EntrySetIterator();
        }

        public int size() {
            return SimplePropertyObservableMap.this.getMap().size();
        }
    }

    private class EntrySetIterator
    implements Iterator {
        private volatile int expectedModCount;
        Map map;
        Iterator iterator;
        Map.Entry last;

        private EntrySetIterator() {
            this.expectedModCount = SimplePropertyObservableMap.this.modCount;
            this.map = new HashMap(SimplePropertyObservableMap.this.getMap());
            this.iterator = this.map.entrySet().iterator();
            this.last = null;
        }

        public boolean hasNext() {
            SimplePropertyObservableMap.this.getterCalled();
            this.checkForComodification();
            return this.iterator.hasNext();
        }

        public Object next() {
            SimplePropertyObservableMap.this.getterCalled();
            this.checkForComodification();
            this.last = (Map.Entry)this.iterator.next();
            return this.last;
        }

        public void remove() {
            SimplePropertyObservableMap.this.getterCalled();
            this.checkForComodification();
            MapDiff diff = Diffs.createMapDiffSingleRemove(this.last.getKey(), this.last.getValue());
            SimplePropertyObservableMap.this.updateMap(this.map, diff);
            this.iterator.remove();
            this.last = null;
            this.expectedModCount = SimplePropertyObservableMap.this.modCount;
        }

        private void checkForComodification() {
            if (this.expectedModCount != SimplePropertyObservableMap.this.modCount) {
                throw new ConcurrentModificationException();
            }
        }
    }
}

