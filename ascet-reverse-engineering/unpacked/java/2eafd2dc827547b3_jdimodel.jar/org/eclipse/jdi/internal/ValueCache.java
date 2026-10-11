/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdi.internal;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;

public class ValueCache {
    private Map cacheTable = new Hashtable();
    private Map refTable = new Hashtable();
    private ReferenceQueue refQueue = new ReferenceQueue();

    private void cleanup() {
        Reference ref;
        while ((ref = this.refQueue.poll()) != null) {
            Object key = this.refTable.get(ref);
            if (key != null) {
                this.cacheTable.remove(key);
            }
            this.refTable.remove(ref);
        }
    }

    public void put(Object key, Object value) {
        this.cleanup();
        SoftReference<Object> ref = new SoftReference<Object>(value, this.refQueue);
        this.cacheTable.put(key, ref);
        this.refTable.put(ref, key);
    }

    public Object get(Object key) {
        this.cleanup();
        Object value = null;
        SoftReference ref = (SoftReference)this.cacheTable.get(key);
        if (ref != null) {
            value = ref.get();
        }
        return value;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Collection values() {
        this.cleanup();
        ArrayList returnValues = new ArrayList();
        Map map = this.cacheTable;
        synchronized (map) {
            Iterator iter = this.cacheTable.values().iterator();
            while (iter.hasNext()) {
                SoftReference ref = (SoftReference)iter.next();
                Object value = ref.get();
                if (value == null) continue;
                returnValues.add(value);
            }
        }
        return returnValues;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Collection valuesWithType(Class type) {
        this.cleanup();
        ArrayList returnValues = new ArrayList();
        Map map = this.cacheTable;
        synchronized (map) {
            Iterator iter = this.cacheTable.values().iterator();
            while (iter.hasNext()) {
                SoftReference ref = (SoftReference)iter.next();
                Object value = ref.get();
                if (value == null || !value.getClass().equals(type)) continue;
                returnValues.add(value);
            }
        }
        return returnValues;
    }

    public Object remove(Object key) {
        this.cleanup();
        Object value = null;
        SoftReference ref = (SoftReference)this.cacheTable.get(key);
        if (ref != null) {
            value = ref.get();
            this.refTable.remove(ref);
        }
        this.cacheTable.remove(key);
        return value;
    }
}

