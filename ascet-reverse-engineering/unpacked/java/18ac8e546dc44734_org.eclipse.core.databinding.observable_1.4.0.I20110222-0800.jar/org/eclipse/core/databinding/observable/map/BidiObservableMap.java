/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.map;

import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.databinding.observable.map.DecoratingObservableMap;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.map.MapChangeEvent;
import org.eclipse.core.databinding.observable.map.MapDiff;
import org.eclipse.core.internal.databinding.observable.Util;

public class BidiObservableMap
extends DecoratingObservableMap {
    private Map valuesToKeys;

    public BidiObservableMap(IObservableMap wrappedMap) {
        super(wrappedMap, false);
    }

    protected void firstListenerAdded() {
        this.valuesToKeys = new HashMap();
        Iterator it = this.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry)it.next();
            this.addMapping(entry.getKey(), entry.getValue());
        }
        super.firstListenerAdded();
    }

    protected void lastListenerRemoved() {
        super.lastListenerRemoved();
        this.valuesToKeys.clear();
        this.valuesToKeys = null;
    }

    protected void handleMapChange(MapChangeEvent event) {
        MapDiff diff = event.diff;
        Iterator it = diff.getAddedKeys().iterator();
        while (it.hasNext()) {
            Object addedKey = it.next();
            this.addMapping(addedKey, diff.getNewValue(addedKey));
        }
        it = diff.getChangedKeys().iterator();
        while (it.hasNext()) {
            Object changedKey = it.next();
            this.removeMapping(changedKey, diff.getOldValue(changedKey));
            this.addMapping(changedKey, diff.getNewValue(changedKey));
        }
        it = diff.getRemovedKeys().iterator();
        while (it.hasNext()) {
            Object removedKey = it.next();
            this.removeMapping(removedKey, diff.getOldValue(removedKey));
        }
        super.handleMapChange(event);
    }

    public boolean containsValue(Object value) {
        this.getterCalled();
        if (this.valuesToKeys != null) {
            return this.valuesToKeys.containsKey(value);
        }
        return super.containsValue(value);
    }

    private void addMapping(Object key, Object value) {
        if (!this.valuesToKeys.containsKey(value)) {
            if (key instanceof Set) {
                key = new HashSet<Object>(Collections.singleton(key));
            }
            this.valuesToKeys.put(value, key);
        } else {
            HashSet set;
            Object elementOrSet = this.valuesToKeys.get(value);
            if (elementOrSet instanceof Set) {
                set = (HashSet)elementOrSet;
            } else {
                set = new HashSet(Collections.singleton(elementOrSet));
                this.valuesToKeys.put(value, set);
            }
            set.add(key);
        }
    }

    private void removeMapping(Object key, Object value) {
        if (this.valuesToKeys.containsKey(value)) {
            Object elementOrSet = this.valuesToKeys.get(value);
            if (elementOrSet instanceof Set) {
                Set set = (Set)elementOrSet;
                set.remove(key);
                if (set.isEmpty()) {
                    this.valuesToKeys.remove(value);
                }
            } else if (elementOrSet == key || elementOrSet != null && elementOrSet.equals(key)) {
                this.valuesToKeys.remove(value);
            }
        }
    }

    public Set getKeys(Object value) {
        if (this.valuesToKeys == null) {
            return this.findKeys(value);
        }
        if (!this.valuesToKeys.containsKey(value)) {
            return Collections.EMPTY_SET;
        }
        Object elementOrSet = this.valuesToKeys.get(value);
        if (elementOrSet instanceof Set) {
            return Collections.unmodifiableSet((Set)elementOrSet);
        }
        return Collections.singleton(elementOrSet);
    }

    private Set findKeys(Object value) {
        HashSet keys = new HashSet();
        Iterator it = this.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry)it.next();
            if (!Util.equals(entry.getValue(), value)) continue;
            keys.add(entry.getKey());
        }
        return keys;
    }

    public synchronized void dispose() {
        if (this.valuesToKeys != null) {
            this.valuesToKeys.clear();
            this.valuesToKeys = null;
        }
        super.dispose();
    }
}

