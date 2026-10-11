/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.serviceregistry;

import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.osgi.internal.serviceregistry.ShrinkableEntrySetValueCollection;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ShrinkableValueCollectionMap<K, V>
extends AbstractMap<K, Collection<V>>
implements Map<K, Collection<V>> {
    final Map<? extends K, ? extends Set<? extends Map.Entry<?, ? extends V>>> map;
    Map<Object, Collection<V>> values;

    public ShrinkableValueCollectionMap(Map<? extends K, ? extends Set<? extends Map.Entry<?, ? extends V>>> m) {
        if (m == null) {
            throw new NullPointerException();
        }
        this.map = m;
        this.values = null;
    }

    @Override
    public void clear() {
        this.map.clear();
        if (this.values != null) {
            this.values.clear();
        }
    }

    @Override
    public boolean containsKey(Object key) {
        return this.map.containsKey(key);
    }

    @Override
    public boolean containsValue(Object value) {
        if (this.values == null) {
            return false;
        }
        return this.values.containsValue(value);
    }

    @Override
    public Set<Map.Entry<K, Collection<V>>> entrySet() {
        return new EntrySet();
    }

    @Override
    public Collection<V> get(Object key) {
        Collection<V> value = null;
        if (this.values != null) {
            value = this.values.get(key);
        }
        if (value == null) {
            Set<? extends Map.Entry<?, ? extends V>> entrySet = this.map.get(key);
            if (entrySet == null) {
                return null;
            }
            value = new ShrinkableEntrySetValueCollection<V>(entrySet);
            if (this.values == null) {
                this.values = new HashMap<Object, Collection<V>>(this.map.size());
            }
            this.values.put(key, value);
        }
        return value;
    }

    @Override
    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    @Override
    public Collection<V> remove(Object key) {
        Set<? extends Map.Entry<?, ? extends V>> entrySet = this.map.remove(key);
        Collection<V> value = null;
        if (this.values != null) {
            value = this.values.remove(key);
        }
        if (value == null && entrySet != null) {
            value = new ShrinkableEntrySetValueCollection<V>(entrySet);
        }
        return value;
    }

    @Override
    public int size() {
        return this.map.size();
    }

    static int hash(Object one) {
        return one == null ? 0 : one.hashCode();
    }

    static boolean equality(Object one, Object two) {
        return one == null ? two == null : one.equals(two);
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private final class Entry
    implements Map.Entry<K, Collection<V>> {
        private final K key;
        private Collection<V> value;

        Entry(K k) {
            this.key = k;
        }

        @Override
        public K getKey() {
            return this.key;
        }

        @Override
        public Collection<V> getValue() {
            if (this.value == null) {
                this.value = ShrinkableValueCollectionMap.this.get(this.key);
            }
            return this.value;
        }

        @Override
        public Collection<V> setValue(Collection<V> value) {
            throw new UnsupportedOperationException();
        }

        public String toString() {
            return new StringBuffer().append(this.getKey()).append("=").append(this.getValue()).toString();
        }

        @Override
        public int hashCode() {
            return ShrinkableValueCollectionMap.hash(this.getKey()) ^ ShrinkableValueCollectionMap.hash(this.getValue());
        }

        @Override
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry other = (Map.Entry)obj;
            return ShrinkableValueCollectionMap.equality(this.getKey(), other.getKey()) && ShrinkableValueCollectionMap.equality(this.getValue(), other.getValue());
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private final class EntryIterator
    implements Iterator<Map.Entry<K, Collection<V>>> {
        private final Iterator<? extends K> iter;
        private K last;

        EntryIterator() {
            this.iter = ShrinkableValueCollectionMap.this.map.keySet().iterator();
        }

        @Override
        public boolean hasNext() {
            return this.iter.hasNext();
        }

        @Override
        public Map.Entry<K, Collection<V>> next() {
            this.last = this.iter.next();
            return new Entry(this.last);
        }

        @Override
        public void remove() {
            this.iter.remove();
            if (ShrinkableValueCollectionMap.this.values != null) {
                ShrinkableValueCollectionMap.this.values.remove(this.last);
            }
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private final class EntrySet
    extends AbstractSet<Map.Entry<K, Collection<V>>> {
        EntrySet() {
        }

        @Override
        public Iterator<Map.Entry<K, Collection<V>>> iterator() {
            return new EntryIterator();
        }

        @Override
        public int size() {
            return ShrinkableValueCollectionMap.this.size();
        }
    }
}

