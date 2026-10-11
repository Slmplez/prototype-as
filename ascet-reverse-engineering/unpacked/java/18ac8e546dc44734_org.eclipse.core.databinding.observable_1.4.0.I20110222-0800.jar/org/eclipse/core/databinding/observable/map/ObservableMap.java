/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.map;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.databinding.observable.AbstractObservable;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.map.IMapChangeListener;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.map.MapChangeEvent;
import org.eclipse.core.databinding.observable.map.MapDiff;

public class ObservableMap
extends AbstractObservable
implements IObservableMap {
    protected Map wrappedMap;
    private boolean stale = false;

    public ObservableMap(Map wrappedMap) {
        this(Realm.getDefault(), wrappedMap);
    }

    public ObservableMap(Realm realm, Map wrappedMap) {
        super(realm);
        this.wrappedMap = wrappedMap;
    }

    public synchronized void addMapChangeListener(IMapChangeListener listener) {
        this.addListener(MapChangeEvent.TYPE, listener);
    }

    public synchronized void removeMapChangeListener(IMapChangeListener listener) {
        this.removeListener(MapChangeEvent.TYPE, listener);
    }

    public Object getKeyType() {
        return null;
    }

    public Object getValueType() {
        return null;
    }

    protected void getterCalled() {
        ObservableTracker.getterCalled(this);
    }

    protected void fireMapChange(MapDiff diff) {
        this.checkRealm();
        super.fireChange();
        this.fireEvent(new MapChangeEvent(this, diff));
    }

    public boolean containsKey(Object key) {
        this.getterCalled();
        return this.wrappedMap.containsKey(key);
    }

    public boolean containsValue(Object value) {
        this.getterCalled();
        return this.wrappedMap.containsValue(value);
    }

    public Set entrySet() {
        this.getterCalled();
        return this.wrappedMap.entrySet();
    }

    public Object get(Object key) {
        this.getterCalled();
        return this.wrappedMap.get(key);
    }

    public boolean isEmpty() {
        this.getterCalled();
        return this.wrappedMap.isEmpty();
    }

    public Set keySet() {
        this.getterCalled();
        return this.wrappedMap.keySet();
    }

    public int size() {
        this.getterCalled();
        return this.wrappedMap.size();
    }

    public Collection values() {
        this.getterCalled();
        return this.wrappedMap.values();
    }

    public boolean isStale() {
        this.checkRealm();
        return this.stale;
    }

    public void setStale(boolean stale) {
        this.checkRealm();
        boolean wasStale = this.stale;
        this.stale = stale;
        if (!wasStale && stale) {
            this.fireStale();
        }
    }

    public Object put(Object key, Object value) {
        throw new UnsupportedOperationException();
    }

    public Object remove(Object key) {
        throw new UnsupportedOperationException();
    }

    public void clear() {
        throw new UnsupportedOperationException();
    }

    public void putAll(Map arg0) {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object o) {
        this.getterCalled();
        return o == this || this.wrappedMap.equals(o);
    }

    public int hashCode() {
        this.getterCalled();
        return this.wrappedMap.hashCode();
    }

    public synchronized void dispose() {
        super.dispose();
    }
}

