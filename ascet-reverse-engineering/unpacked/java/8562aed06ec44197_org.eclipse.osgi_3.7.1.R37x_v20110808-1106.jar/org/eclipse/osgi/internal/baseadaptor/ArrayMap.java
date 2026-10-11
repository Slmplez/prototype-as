/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.baseadaptor;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ArrayMap<K, V>
implements Collection<K> {
    final List<K> keys;
    final List<V> values;

    public ArrayMap(int initialCapacity) {
        this.keys = new ArrayList<K>(initialCapacity);
        this.values = new ArrayList<V>(initialCapacity);
    }

    public ArrayMap(List<K> keys, List<V> values) {
        if (keys.size() != values.size()) {
            throw new IllegalArgumentException("Keys and values size must be equal.");
        }
        this.keys = keys;
        this.values = values;
    }

    public V get(K key) {
        int index = this.keys.indexOf(key);
        if (index < 0) {
            return null;
        }
        return this.values.get(index);
    }

    public void put(K key, V value) {
        int index = this.keys.indexOf(key);
        if (index > 0) {
            this.values.set(index, value);
        } else {
            this.keys.add(key);
            this.values.add(value);
        }
    }

    @Override
    public boolean remove(Object key) {
        int index = this.keys.indexOf(key);
        if (index < 0) {
            return false;
        }
        this.keys.remove(index);
        this.values.remove(index);
        return true;
    }

    @Override
    public void clear() {
        this.keys.clear();
        this.values.clear();
    }

    public List<K> getKeys() {
        return new ArrayList<K>(this.keys);
    }

    public List<V> getValues() {
        return new ArrayList<V>(this.values);
    }

    @Override
    public int size() {
        return this.keys.size();
    }

    @Override
    public boolean isEmpty() {
        return this.keys.isEmpty();
    }

    @Override
    public boolean contains(Object o) {
        return this.keys.contains(o);
    }

    @Override
    public Iterator<K> iterator() {
        final Iterator<K> keyIter = this.keys.iterator();
        final Iterator<V> valueIter = this.values.iterator();
        return new Iterator<K>(){

            @Override
            public boolean hasNext() {
                return keyIter.hasNext();
            }

            @Override
            public K next() {
                valueIter.next();
                return keyIter.next();
            }

            @Override
            public void remove() {
                valueIter.remove();
                keyIter.remove();
            }
        };
    }

    @Override
    public Object[] toArray() {
        return this.keys.toArray();
    }

    @Override
    public <T> T[] toArray(T[] a) {
        return this.keys.toArray(a);
    }

    @Override
    public boolean add(K o) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsAll(Collection<?> c) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean addAll(Collection<? extends K> c) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean removeAll(Collection<?> c) {
        boolean result = false;
        for (Object key : c) {
            result |= this.remove(key);
        }
        return result;
    }

    @Override
    public boolean retainAll(Collection<?> c) {
        Object[] keyArray;
        boolean result = false;
        Object[] objectArray = keyArray = this.keys.toArray();
        int n = keyArray.length;
        int n2 = 0;
        while (n2 < n) {
            Object key = objectArray[n2];
            if (!c.contains(key)) {
                result |= this.remove(key);
            }
            ++n2;
        }
        return result;
    }

    public K getKey(int index) {
        return this.keys.get(index);
    }

    public V getValue(int index) {
        return this.values.get(index);
    }
}

