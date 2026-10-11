/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers.deferred;

import java.util.HashMap;

class IntHashMap {
    private HashMap map;

    public IntHashMap(int size, float loadFactor) {
        this.map = new HashMap(size, loadFactor);
    }

    public IntHashMap() {
        this.map = new HashMap();
    }

    public void remove(Object key) {
        this.map.remove(key);
    }

    public void put(Object key, int value) {
        this.map.put(key, new Integer(value));
    }

    public int get(Object key) {
        return this.get(key, 0);
    }

    public int get(Object key, int defaultValue) {
        Integer result = (Integer)this.map.get(key);
        if (result != null) {
            return result;
        }
        return defaultValue;
    }

    public boolean containsKey(Object key) {
        return this.map.containsKey(key);
    }

    public int size() {
        return this.map.size();
    }
}

