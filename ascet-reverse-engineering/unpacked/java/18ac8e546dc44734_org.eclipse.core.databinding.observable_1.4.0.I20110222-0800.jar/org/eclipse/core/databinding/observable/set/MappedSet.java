/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.set;

import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.map.IMapChangeListener;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.map.MapChangeEvent;
import org.eclipse.core.databinding.observable.map.MapDiff;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.set.ISetChangeListener;
import org.eclipse.core.databinding.observable.set.ObservableSet;
import org.eclipse.core.databinding.observable.set.SetChangeEvent;

public class MappedSet
extends ObservableSet {
    private final IObservableMap wrappedMap;
    private Map valueCounts;
    private ISetChangeListener domainListener;
    private IMapChangeListener mapChangeListener;
    private IObservableSet input;
    static /* synthetic */ Class class$0;

    public MappedSet(IObservableSet input, IObservableMap map) {
        Realm realm = input.getRealm();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.Object");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        super(realm, Collections.EMPTY_SET, clazz);
        this.valueCounts = new HashMap();
        this.domainListener = new ISetChangeListener(){

            public void handleSetChange(SetChangeEvent event) {
                HashSet<Object> additions = new HashSet<Object>();
                Iterator it = event.diff.getAdditions().iterator();
                while (it.hasNext()) {
                    Object added = it.next();
                    Object mapValue = MappedSet.this.wrappedMap.get(added);
                    if (!MappedSet.this.handleAddition(mapValue)) continue;
                    additions.add(mapValue);
                }
                HashSet<Object> removals = new HashSet<Object>();
                Iterator it2 = event.diff.getRemovals().iterator();
                while (it2.hasNext()) {
                    Object removed = it2.next();
                    Object mapValue = MappedSet.this.wrappedMap.get(removed);
                    if (!MappedSet.this.handleRemoval(mapValue)) continue;
                    removals.add(mapValue);
                }
                MappedSet.this.fireSetChange(Diffs.createSetDiff(additions, removals));
            }
        };
        this.mapChangeListener = new IMapChangeListener(){

            public void handleMapChange(MapChangeEvent event) {
                Object oldValue;
                Object key;
                MapDiff diff = event.diff;
                HashSet<Object> additions = new HashSet<Object>();
                HashSet<Object> removals = new HashSet<Object>();
                Iterator it = diff.getRemovedKeys().iterator();
                while (it.hasNext()) {
                    key = it.next();
                    oldValue = diff.getOldValue(key);
                    if (!MappedSet.this.handleRemoval(oldValue)) continue;
                    removals.add(oldValue);
                }
                it = diff.getChangedKeys().iterator();
                while (it.hasNext()) {
                    key = it.next();
                    oldValue = diff.getOldValue(key);
                    Object newValue = diff.getNewValue(key);
                    if (MappedSet.this.handleRemoval(oldValue)) {
                        removals.add(oldValue);
                    }
                    if (!MappedSet.this.handleAddition(newValue)) continue;
                    additions.add(newValue);
                }
                it = diff.getAddedKeys().iterator();
                while (it.hasNext()) {
                    key = it.next();
                    Object newValue = diff.getNewValue(key);
                    if (!MappedSet.this.handleAddition(newValue)) continue;
                    additions.add(newValue);
                }
                MappedSet.this.fireSetChange(Diffs.createSetDiff(additions, removals));
            }
        };
        this.setWrappedSet(this.valueCounts.keySet());
        this.wrappedMap = map;
        this.input = input;
        Iterator it = input.iterator();
        while (it.hasNext()) {
            Object element = it.next();
            Object functionValue = this.wrappedMap.get(element);
            this.handleAddition(functionValue);
        }
        input.addSetChangeListener(this.domainListener);
        map.addMapChangeListener(this.mapChangeListener);
    }

    protected boolean handleAddition(Object mapValue) {
        Integer count = (Integer)this.valueCounts.get(mapValue);
        if (count == null) {
            this.valueCounts.put(mapValue, new Integer(1));
            return true;
        }
        this.valueCounts.put(mapValue, new Integer(count + 1));
        return false;
    }

    protected boolean handleRemoval(Object mapValue) {
        Integer count = (Integer)this.valueCounts.get(mapValue);
        if (count <= 1) {
            this.valueCounts.remove(mapValue);
            return true;
        }
        this.valueCounts.put(mapValue, new Integer(count - 1));
        return false;
    }

    public synchronized void dispose() {
        this.wrappedMap.removeMapChangeListener(this.mapChangeListener);
        this.input.removeSetChangeListener(this.domainListener);
    }
}

