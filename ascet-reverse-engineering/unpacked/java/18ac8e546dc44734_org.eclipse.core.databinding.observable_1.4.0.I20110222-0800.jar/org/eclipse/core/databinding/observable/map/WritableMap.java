/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.map;

import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.map.MapDiff;
import org.eclipse.core.databinding.observable.map.ObservableMap;
import org.eclipse.core.internal.databinding.observable.Util;

public class WritableMap
extends ObservableMap {
    private final Object keyType;
    private final Object valueType;

    public WritableMap() {
        this(Realm.getDefault(), null, null);
    }

    public WritableMap(Realm realm) {
        this(realm, null, null);
    }

    public WritableMap(Object keyType, Object valueType) {
        this(Realm.getDefault(), keyType, valueType);
    }

    public WritableMap(Realm realm, Object keyType, Object valueType) {
        super(realm, new HashMap());
        this.keyType = keyType;
        this.valueType = valueType;
    }

    public Object getKeyType() {
        return this.keyType;
    }

    public Object getValueType() {
        return this.valueType;
    }

    public Object put(Object key, Object value) {
        this.checkRealm();
        boolean containedKeyBefore = this.wrappedMap.containsKey(key);
        Object result = this.wrappedMap.put(key, value);
        boolean containedKeyAfter = this.wrappedMap.containsKey(key);
        if (containedKeyBefore != containedKeyAfter || !Util.equals(result, value)) {
            MapDiff diff = containedKeyBefore ? (containedKeyAfter ? Diffs.createMapDiffSingleChange(key, result, value) : Diffs.createMapDiffSingleRemove(key, result)) : Diffs.createMapDiffSingleAdd(key, value);
            this.fireMapChange(diff);
        }
        return result;
    }

    public Object remove(Object key) {
        this.checkRealm();
        if (this.wrappedMap.containsKey(key)) {
            Object result = this.wrappedMap.remove(key);
            this.fireMapChange(Diffs.createMapDiffSingleRemove(key, result));
            return result;
        }
        return null;
    }

    public void clear() {
        this.checkRealm();
        if (!this.isEmpty()) {
            HashMap copy = new HashMap(this.wrappedMap);
            this.wrappedMap.clear();
            this.fireMapChange(Diffs.createMapDiffRemoveAll(copy));
        }
    }

    public void putAll(Map map) {
        this.checkRealm();
        HashSet addedKeys = new HashSet(map.size());
        HashMap changes = new HashMap(map.size());
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = it.next();
            boolean add = !this.wrappedMap.containsKey(entry.getKey());
            Object previousValue = this.wrappedMap.put(entry.getKey(), entry.getValue());
            if (add) {
                addedKeys.add(entry.getKey());
                continue;
            }
            changes.put(entry.getKey(), previousValue);
        }
        if (!addedKeys.isEmpty() || !changes.isEmpty()) {
            this.fireMapChange(Diffs.createMapDiff(addedKeys, Collections.EMPTY_SET, changes.keySet(), changes, this.wrappedMap));
        }
    }
}

