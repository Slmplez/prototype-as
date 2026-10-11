/*
 * Decompiled with CFR 0.152.
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.Collections2;
import com.google.common.collect.Hashing;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.UnmodifiableIterator;
import java.util.Map;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible(serializable=true)
final class RegularImmutableMap<K, V>
extends ImmutableMap<K, V> {
    private final transient Map.Entry<K, V>[] entries;
    private final transient Object[] table;
    private final transient int mask;
    private final transient int keySetHashCode;
    private transient ImmutableSet<Map.Entry<K, V>> entrySet;
    private transient ImmutableSet<K> keySet;
    private transient ImmutableCollection<V> values;
    private static final long serialVersionUID = 0L;

    RegularImmutableMap(Map.Entry<?, ?> ... immutableEntries) {
        Map.Entry<?, ?>[] tmp = immutableEntries;
        this.entries = tmp;
        int tableSize = Hashing.chooseTableSize(immutableEntries.length);
        this.table = new Object[tableSize * 2];
        this.mask = tableSize - 1;
        int keySetHashCodeMutable = 0;
        block0: for (Map.Entry<K, V> entry : this.entries) {
            K key = entry.getKey();
            int keyHashCode = key.hashCode();
            int i = Hashing.smear(keyHashCode);
            while (true) {
                int index;
                Object existing;
                if ((existing = this.table[index = (i & this.mask) * 2]) == null) {
                    V value = entry.getValue();
                    this.table[index] = key;
                    this.table[index + 1] = value;
                    keySetHashCodeMutable += keyHashCode;
                    continue block0;
                }
                if (existing.equals(key)) {
                    throw new IllegalArgumentException("duplicate key: " + key);
                }
                ++i;
            }
        }
        this.keySetHashCode = keySetHashCodeMutable;
    }

    @Override
    public V get(Object key) {
        if (key == null) {
            return null;
        }
        int i = Hashing.smear(key.hashCode());
        int index;
        Object candidate;
        while ((candidate = this.table[index = (i & this.mask) * 2]) != null) {
            if (candidate.equals(key)) {
                Object value = this.table[index + 1];
                return (V)value;
            }
            ++i;
        }
        return null;
    }

    @Override
    public int size() {
        return this.entries.length;
    }

    @Override
    public boolean isEmpty() {
        return false;
    }

    @Override
    public boolean containsValue(Object value) {
        if (value == null) {
            return false;
        }
        for (Map.Entry<K, V> entry : this.entries) {
            if (!entry.getValue().equals(value)) continue;
            return true;
        }
        return false;
    }

    @Override
    public ImmutableSet<Map.Entry<K, V>> entrySet() {
        ImmutableSet<Map.Entry<K, V>> es = this.entrySet;
        return es == null ? (this.entrySet = new EntrySet(this)) : es;
    }

    @Override
    public ImmutableSet<K> keySet() {
        ImmutableSet<K> ks = this.keySet;
        return ks == null ? (this.keySet = new KeySet(this)) : ks;
    }

    @Override
    public ImmutableCollection<V> values() {
        ImmutableCollection<V> v = this.values;
        return v == null ? (this.values = new Values(this)) : v;
    }

    @Override
    public String toString() {
        StringBuilder result = new StringBuilder(this.size() * 16).append('{');
        Collections2.standardJoiner.appendTo(result, (Object[])this.entries);
        return result.append('}').toString();
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class EntrySet<K, V>
    extends ImmutableSet.ArrayImmutableSet<Map.Entry<K, V>> {
        final transient RegularImmutableMap<K, V> map;

        EntrySet(RegularImmutableMap<K, V> map) {
            super(((RegularImmutableMap)map).entries);
            this.map = map;
        }

        @Override
        public boolean contains(Object target) {
            if (target instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry)target;
                V mappedValue = this.map.get(entry.getKey());
                return mappedValue != null && mappedValue.equals(entry.getValue());
            }
            return false;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class KeySet<K, V>
    extends ImmutableSet.TransformedImmutableSet<Map.Entry<K, V>, K> {
        final RegularImmutableMap<K, V> map;

        KeySet(RegularImmutableMap<K, V> map) {
            super(((RegularImmutableMap)map).entries, ((RegularImmutableMap)map).keySetHashCode);
            this.map = map;
        }

        @Override
        K transform(Map.Entry<K, V> element) {
            return element.getKey();
        }

        @Override
        public boolean contains(Object target) {
            return this.map.containsKey(target);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class Values<V>
    extends ImmutableCollection<V> {
        final RegularImmutableMap<?, V> map;

        Values(RegularImmutableMap<?, V> map) {
            this.map = map;
        }

        @Override
        public int size() {
            return ((RegularImmutableMap)this.map).entries.length;
        }

        @Override
        public UnmodifiableIterator<V> iterator() {
            return new AbstractIterator<V>(){
                int index = 0;

                @Override
                protected V computeNext() {
                    return this.index < Values.this.map.entries.length ? Values.this.map.entries[this.index++].getValue() : this.endOfData();
                }
            };
        }

        @Override
        public boolean contains(Object target) {
            return this.map.containsValue(target);
        }
    }
}

