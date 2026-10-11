/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.map;

import java.util.AbstractSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.DisposeEvent;
import org.eclipse.core.databinding.observable.IDisposeListener;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.StaleEvent;
import org.eclipse.core.databinding.observable.map.AbstractObservableMap;
import org.eclipse.core.databinding.observable.map.ComputedObservableMap;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.set.ISetChangeListener;
import org.eclipse.core.databinding.observable.set.SetChangeEvent;
import org.eclipse.core.internal.databinding.identity.IdentitySet;

public abstract class ComputedObservableMap
extends AbstractObservableMap {
    private IObservableSet keySet;
    private Set knownKeys;
    private Object valueType;
    private ISetChangeListener setChangeListener = new ISetChangeListener(){

        public void handleSetChange(SetChangeEvent event) {
            HashSet addedKeys = new HashSet(event.diff.getAdditions());
            HashSet removedKeys = new HashSet(event.diff.getRemovals());
            HashMap oldValues = new HashMap();
            HashMap newValues = new HashMap();
            Iterator it = removedKeys.iterator();
            while (it.hasNext()) {
                Object removedKey = it.next();
                Object oldValue = null;
                if (removedKey != null) {
                    oldValue = ComputedObservableMap.this.doGet(removedKey);
                    ComputedObservableMap.this.unhookListener(removedKey);
                    ComputedObservableMap.this.knownKeys.remove(removedKey);
                }
                oldValues.put(removedKey, oldValue);
            }
            it = addedKeys.iterator();
            while (it.hasNext()) {
                Object addedKey = it.next();
                Object newValue = null;
                if (addedKey != null) {
                    newValue = ComputedObservableMap.this.doGet(addedKey);
                    ComputedObservableMap.this.hookListener(addedKey);
                    ComputedObservableMap.this.knownKeys.add(addedKey);
                }
                newValues.put(addedKey, newValue);
            }
            ComputedObservableMap.this.fireMapChange(Diffs.createMapDiff(addedKeys, removedKeys, Collections.EMPTY_SET, oldValues, newValues));
        }
    };
    private IStaleListener staleListener = new IStaleListener(){

        public void handleStale(StaleEvent staleEvent) {
            ComputedObservableMap.this.fireStale();
        }
    };
    private Set entrySet = new EntrySet();

    public ComputedObservableMap(IObservableSet keySet) {
        this(keySet, null);
    }

    public ComputedObservableMap(IObservableSet keySet, Object valueType) {
        super(keySet.getRealm());
        this.keySet = keySet;
        this.valueType = valueType;
        keySet.addDisposeListener(new IDisposeListener(){

            public void handleDispose(DisposeEvent staleEvent) {
                ComputedObservableMap.this.dispose();
            }
        });
    }

    protected void init() {
    }

    protected void firstListenerAdded() {
        this.getRealm().exec(new Runnable(){

            public void run() {
                ComputedObservableMap.this.hookListeners();
            }
        });
    }

    protected void lastListenerRemoved() {
        this.unhookListeners();
    }

    private void hookListeners() {
        if (this.keySet != null) {
            this.knownKeys = new IdentitySet();
            this.keySet.addSetChangeListener(this.setChangeListener);
            this.keySet.addStaleListener(this.staleListener);
            Iterator it = this.keySet.iterator();
            while (it.hasNext()) {
                Object key = it.next();
                this.hookListener(key);
                this.knownKeys.add(key);
            }
        }
    }

    private void unhookListeners() {
        if (this.keySet != null) {
            this.keySet.removeSetChangeListener(this.setChangeListener);
            this.keySet.removeStaleListener(this.staleListener);
        }
        if (this.knownKeys != null) {
            Object[] keys = this.knownKeys.toArray();
            int i = 0;
            while (i < keys.length) {
                this.unhookListener(keys[i]);
                ++i;
            }
            this.knownKeys.clear();
            this.knownKeys = null;
        }
    }

    protected final void fireSingleChange(Object key, Object oldValue, Object newValue) {
        this.fireMapChange(Diffs.createMapDiffSingleChange(key, oldValue, newValue));
    }

    public Object getKeyType() {
        return this.keySet.getElementType();
    }

    public Object getValueType() {
        return this.valueType;
    }

    public Object remove(Object key) {
        this.checkRealm();
        Object oldValue = this.get(key);
        this.keySet().remove(key);
        return oldValue;
    }

    public boolean containsKey(Object key) {
        this.getterCalled();
        return this.keySet().contains(key);
    }

    public Set entrySet() {
        return this.entrySet;
    }

    public Set keySet() {
        return this.keySet;
    }

    public final Object get(Object key) {
        this.getterCalled();
        if (!this.keySet.contains(key)) {
            return null;
        }
        return this.doGet(key);
    }

    private void getterCalled() {
        ObservableTracker.getterCalled(this);
    }

    public final Object put(Object key, Object value) {
        this.checkRealm();
        if (!this.keySet.contains(key)) {
            return null;
        }
        return this.doPut(key, value);
    }

    protected abstract void unhookListener(Object var1);

    protected abstract void hookListener(Object var1);

    protected abstract Object doGet(Object var1);

    protected abstract Object doPut(Object var1, Object var2);

    public boolean isStale() {
        return super.isStale() || this.keySet.isStale();
    }

    public synchronized void dispose() {
        this.unhookListeners();
        this.entrySet = null;
        this.keySet = null;
        this.setChangeListener = null;
        super.dispose();
    }

    static /* synthetic */ void access$2(ComputedObservableMap computedObservableMap) {
        computedObservableMap.getterCalled();
    }

    private class EntrySet
    extends AbstractSet {
        private EntrySet() {
        }

        public Iterator iterator() {
            Iterator keyIterator = ComputedObservableMap.this.keySet.iterator();
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
                    return new Map.Entry(this, key){
                        final /* synthetic */ 3 this$2;
                        private final /* synthetic */ Object val$key;
                        {
                            this.this$2 = var1_1;
                            this.val$key = object;
                        }

                        public Object getKey() {
                            ComputedObservableMap.access$2(EntrySet.access$1(3.access$0(this.this$2)));
                            return this.val$key;
                        }

                        public Object getValue() {
                            return EntrySet.access$1(3.access$0(this.this$2)).get(this.getKey());
                        }

                        public Object setValue(Object value) {
                            return EntrySet.access$1(3.access$0(this.this$2)).put(this.getKey(), value);
                        }
                    };
                }

                public void remove() {
                    this.val$keyIterator.remove();
                }

                static /* synthetic */ EntrySet access$0(3 var0) {
                    return var0.this$1;
                }
            };
        }

        public int size() {
            return ComputedObservableMap.this.keySet.size();
        }

        static /* synthetic */ ComputedObservableMap access$1(EntrySet entrySet) {
            return entrySet.ComputedObservableMap.this;
        }
    }
}

