/*
 * Decompiled with CFR 0.152.
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.AbstractMapEntry;
import com.google.common.collect.ForwardingMap;
import com.google.common.collect.Sets;
import java.util.Map;
import java.util.Set;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible
final class WellBehavedMap<K, V>
extends ForwardingMap<K, V> {
    private final Map<K, V> delegate;
    private Set<Map.Entry<K, V>> entrySet;

    private WellBehavedMap(Map<K, V> delegate) {
        this.delegate = delegate;
    }

    static <K, V> WellBehavedMap<K, V> wrap(Map<K, V> delegate) {
        return new WellBehavedMap<K, V>(delegate);
    }

    @Override
    protected Map<K, V> delegate() {
        return this.delegate;
    }

    @Override
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> es = this.entrySet;
        if (es != null) {
            return es;
        }
        this.entrySet = Sets.transform(this.delegate.keySet(), new KeyToEntryConverter(this));
        return this.entrySet;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class KeyToEntryConverter<K, V>
    extends Sets.InvertibleFunction<K, Map.Entry<K, V>> {
        final Map<K, V> map;

        KeyToEntryConverter(Map<K, V> map) {
            this.map = map;
        }

        @Override
        public Map.Entry<K, V> apply(final K key) {
            return new AbstractMapEntry<K, V>(){

                @Override
                public K getKey() {
                    return key;
                }

                @Override
                public V getValue() {
                    return KeyToEntryConverter.this.map.get(key);
                }

                @Override
                public V setValue(V value) {
                    return KeyToEntryConverter.this.map.put(key, value);
                }
            };
        }

        @Override
        public K invert(Map.Entry<K, V> entry) {
            return entry.getKey();
        }
    }
}

