/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.map;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.databinding.observable.DecoratingObservable;
import org.eclipse.core.databinding.observable.map.IMapChangeListener;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.map.MapChangeEvent;
import org.eclipse.core.databinding.observable.map.MapDiff;

public class DecoratingObservableMap
extends DecoratingObservable
implements IObservableMap {
    private IObservableMap decorated;
    private IMapChangeListener mapChangeListener;
    Set entrySet = null;
    Set keySet = null;
    Collection values;

    public DecoratingObservableMap(IObservableMap decorated, boolean disposeDecoratedOnDispose) {
        super(decorated, disposeDecoratedOnDispose);
        this.decorated = decorated;
    }

    public synchronized void addMapChangeListener(IMapChangeListener listener) {
        this.addListener(MapChangeEvent.TYPE, listener);
    }

    public synchronized void removeMapChangeListener(IMapChangeListener listener) {
        this.removeListener(MapChangeEvent.TYPE, listener);
    }

    public Object getKeyType() {
        return this.decorated.getKeyType();
    }

    public Object getValueType() {
        return this.decorated.getValueType();
    }

    protected void fireMapChange(MapDiff diff) {
        super.fireChange();
        this.fireEvent(new MapChangeEvent(this, diff));
    }

    protected void fireChange() {
        throw new RuntimeException("fireChange should not be called, use fireListChange() instead");
    }

    protected void firstListenerAdded() {
        if (this.mapChangeListener == null) {
            this.mapChangeListener = new IMapChangeListener(){

                public void handleMapChange(MapChangeEvent event) {
                    DecoratingObservableMap.this.handleMapChange(event);
                }
            };
        }
        this.decorated.addMapChangeListener(this.mapChangeListener);
        super.firstListenerAdded();
    }

    protected void lastListenerRemoved() {
        super.lastListenerRemoved();
        if (this.mapChangeListener != null) {
            this.decorated.removeMapChangeListener(this.mapChangeListener);
            this.mapChangeListener = null;
        }
    }

    protected void handleMapChange(MapChangeEvent event) {
        this.fireMapChange(event.diff);
    }

    public void clear() {
        this.checkRealm();
        this.decorated.clear();
    }

    public boolean containsKey(Object key) {
        this.getterCalled();
        return this.decorated.containsKey(key);
    }

    public boolean containsValue(Object value) {
        this.getterCalled();
        return this.decorated.containsValue(value);
    }

    public Set entrySet() {
        this.getterCalled();
        if (this.entrySet == null) {
            this.entrySet = new BackedSet(this.decorated.entrySet());
        }
        return this.entrySet;
    }

    public Object get(Object key) {
        this.getterCalled();
        return this.decorated.get(key);
    }

    public boolean isEmpty() {
        this.getterCalled();
        return this.decorated.isEmpty();
    }

    public Set keySet() {
        this.getterCalled();
        if (this.keySet == null) {
            this.keySet = new BackedSet(this.decorated.keySet());
        }
        return this.keySet;
    }

    public Object put(Object key, Object value) {
        this.checkRealm();
        return this.decorated.put(key, value);
    }

    public void putAll(Map m) {
        this.checkRealm();
        this.decorated.putAll(m);
    }

    public Object remove(Object key) {
        this.checkRealm();
        return this.decorated.remove(key);
    }

    public int size() {
        this.getterCalled();
        return this.decorated.size();
    }

    public Collection values() {
        this.getterCalled();
        if (this.values == null) {
            this.values = new BackedCollection(this.decorated.values());
        }
        return this.values;
    }

    public boolean equals(Object obj) {
        this.getterCalled();
        if (this == obj) {
            return true;
        }
        return this.decorated.equals(obj);
    }

    public int hashCode() {
        this.getterCalled();
        return this.decorated.hashCode();
    }

    public String toString() {
        this.getterCalled();
        return this.decorated.toString();
    }

    public synchronized void dispose() {
        if (this.decorated != null && this.mapChangeListener != null) {
            this.decorated.removeMapChangeListener(this.mapChangeListener);
        }
        this.decorated = null;
        this.mapChangeListener = null;
        super.dispose();
    }

    private class BackedCollection
    implements Collection {
        private Collection collection;

        BackedCollection(Collection set) {
            this.collection = set;
        }

        public boolean add(Object o) {
            throw new UnsupportedOperationException();
        }

        public boolean addAll(Collection arg0) {
            throw new UnsupportedOperationException();
        }

        public void clear() {
            DecoratingObservableMap.this.checkRealm();
            this.collection.clear();
        }

        public boolean contains(Object o) {
            DecoratingObservableMap.this.getterCalled();
            return this.collection.contains(o);
        }

        public boolean containsAll(Collection c) {
            DecoratingObservableMap.this.getterCalled();
            return this.collection.containsAll(c);
        }

        public boolean isEmpty() {
            DecoratingObservableMap.this.getterCalled();
            return this.collection.isEmpty();
        }

        public Iterator iterator() {
            Iterator iterator = this.collection.iterator();
            return new Iterator(this, iterator){
                final /* synthetic */ BackedCollection this$1;
                private final /* synthetic */ Iterator val$iterator;
                {
                    this.this$1 = backedCollection;
                    this.val$iterator = iterator;
                }

                public boolean hasNext() {
                    DecoratingObservableMap.access$1(BackedCollection.access$0(this.this$1));
                    return this.val$iterator.hasNext();
                }

                public Object next() {
                    DecoratingObservableMap.access$1(BackedCollection.access$0(this.this$1));
                    return this.val$iterator.next();
                }

                public void remove() {
                    DecoratingObservableMap.access$0(BackedCollection.access$0(this.this$1));
                    this.val$iterator.remove();
                }
            };
        }

        public boolean remove(Object o) {
            DecoratingObservableMap.this.getterCalled();
            return this.collection.remove(o);
        }

        public boolean removeAll(Collection c) {
            DecoratingObservableMap.this.getterCalled();
            return this.collection.removeAll(c);
        }

        public boolean retainAll(Collection c) {
            DecoratingObservableMap.this.getterCalled();
            return this.collection.retainAll(c);
        }

        public int size() {
            DecoratingObservableMap.this.getterCalled();
            return this.collection.size();
        }

        public Object[] toArray() {
            DecoratingObservableMap.this.getterCalled();
            return this.collection.toArray();
        }

        public Object[] toArray(Object[] array) {
            DecoratingObservableMap.this.getterCalled();
            return this.collection.toArray(array);
        }

        public boolean equals(Object obj) {
            DecoratingObservableMap.this.getterCalled();
            return this.collection.equals(obj);
        }

        public int hashCode() {
            DecoratingObservableMap.this.getterCalled();
            return this.collection.hashCode();
        }

        public String toString() {
            DecoratingObservableMap.this.getterCalled();
            return this.collection.toString();
        }

        static /* synthetic */ DecoratingObservableMap access$0(BackedCollection backedCollection) {
            return backedCollection.DecoratingObservableMap.this;
        }
    }

    private class BackedSet
    extends BackedCollection
    implements Set {
        BackedSet(Set set) {
            super(set);
        }
    }
}

