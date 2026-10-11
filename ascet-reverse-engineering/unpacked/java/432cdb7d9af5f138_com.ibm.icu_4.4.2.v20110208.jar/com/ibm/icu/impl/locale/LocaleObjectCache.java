/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl.locale;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class LocaleObjectCache<K, V> {
    private ConcurrentHashMap<K, WeakValueRef<V>> _map = new ConcurrentHashMap();
    private ReferenceQueue<V> _rq = new ReferenceQueue();

    public V get(Object key) {
        this.expungeStaleEntries();
        WeakValueRef<V> ref = this._map.get(key);
        if (ref != null) {
            return ref.get();
        }
        return null;
    }

    public V put(K key, V value) {
        V valInCache;
        this.expungeStaleEntries();
        WeakValueRef<V> ref = this._map.get(key);
        if (ref != null && (valInCache = ref.get()) != null) {
            return valInCache;
        }
        this._map.put(key, new WeakValueRef<V>(key, value, this._rq));
        return value;
    }

    private void expungeStaleEntries() {
        Reference<V> val;
        while ((val = this._rq.poll()) != null) {
            Object key = ((WeakValueRef)val).getKey();
            this._map.remove(key);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class WeakValueRef<V>
    extends WeakReference<V> {
        private Object _key;

        public WeakValueRef(Object key, V value, ReferenceQueue<V> rq) {
            super(value, rq);
            this._key = key;
        }

        @Override
        public V get() {
            return (V)super.get();
        }

        public Object getKey() {
            return this._key;
        }
    }
}

