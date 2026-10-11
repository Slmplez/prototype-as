/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.utils;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.internal.utils.IStringPoolParticipant;
import org.eclipse.core.internal.utils.StringPool;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ObjectMap<K, V>
implements Map<K, V>,
IStringPoolParticipant {
    protected static final int DEFAULT_SIZE = 16;
    protected static final int GROW_SIZE = 10;
    protected int count = 0;
    protected Object[] elements = null;

    public ObjectMap() {
        this(16);
    }

    public ObjectMap(int initialCapacity) {
        if (initialCapacity > 0) {
            this.elements = new Object[Math.max(initialCapacity * 2, 0)];
        }
    }

    public ObjectMap(Map<? extends K, ? extends V> map) {
        this(map.size());
        this.putAll(map);
    }

    @Override
    public void clear() {
        this.elements = null;
        this.count = 0;
    }

    public Object clone() {
        return new ObjectMap<K, V>(this);
    }

    @Override
    public boolean containsKey(Object key) {
        if (this.elements == null || this.count == 0) {
            return false;
        }
        int i = 0;
        while (i < this.elements.length) {
            if (this.elements[i] != null && this.elements[i].equals(key)) {
                return true;
            }
            i += 2;
        }
        return false;
    }

    @Override
    public boolean containsValue(Object value) {
        if (this.elements == null || this.count == 0) {
            return false;
        }
        int i = 1;
        while (i < this.elements.length) {
            if (this.elements[i] != null && this.elements[i].equals(value)) {
                return true;
            }
            i += 2;
        }
        return false;
    }

    @Override
    public Set<Map.Entry<K, V>> entrySet() {
        return this.count == 0 ? Collections.EMPTY_SET : this.toHashMap().entrySet();
    }

    @Override
    public boolean equals(Object o) {
        if (!(o instanceof Map)) {
            return false;
        }
        Map other = (Map)o;
        if (this.count != other.size()) {
            return false;
        }
        if (!this.keySet().equals(other.keySet())) {
            return false;
        }
        int i = 0;
        while (i < this.elements.length) {
            if (this.elements[i] != null && !this.elements[i + 1].equals(other.get(this.elements[i]))) {
                return false;
            }
            i += 2;
        }
        return true;
    }

    @Override
    public V get(Object key) {
        if (this.elements == null || this.count == 0) {
            return null;
        }
        int i = 0;
        while (i < this.elements.length) {
            if (this.elements[i] != null && this.elements[i].equals(key)) {
                return (V)this.elements[i + 1];
            }
            i += 2;
        }
        return null;
    }

    protected void grow() {
        Object[] expanded = new Object[this.elements.length + 10];
        System.arraycopy(this.elements, 0, expanded, 0, this.elements.length);
        this.elements = expanded;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        int i = 0;
        while (i < this.elements.length) {
            if (this.elements[i] != null) {
                hash += this.elements[i].hashCode();
            }
            i += 2;
        }
        return hash;
    }

    @Override
    public boolean isEmpty() {
        return this.count == 0;
    }

    @Override
    public Set<K> keySet() {
        HashSet<Object> result = new HashSet<Object>(this.size());
        int i = 0;
        while (i < this.elements.length) {
            if (this.elements[i] != null) {
                result.add(this.elements[i]);
            }
            i += 2;
        }
        return result;
    }

    @Override
    public V put(K key, V value) {
        if (key == null) {
            throw new NullPointerException();
        }
        if (value == null) {
            return this.remove(key);
        }
        if (this.elements == null) {
            this.elements = new Object[16];
        }
        if (this.count == 0) {
            this.elements[0] = key;
            this.elements[1] = value;
            ++this.count;
            return null;
        }
        int emptyIndex = -1;
        int i = 0;
        while (i < this.elements.length) {
            if (this.elements[i] != null) {
                if (this.elements[i].equals(key)) {
                    Object oldValue = this.elements[i + 1];
                    this.elements[i + 1] = value;
                    return (V)oldValue;
                }
            } else if (emptyIndex == -1) {
                emptyIndex = i;
            }
            i += 2;
        }
        if (emptyIndex == -1) {
            emptyIndex = this.count * 2;
        }
        if (this.elements.length <= this.count * 2) {
            this.grow();
        }
        this.elements[emptyIndex] = key;
        this.elements[emptyIndex + 1] = value;
        ++this.count;
        return null;
    }

    @Override
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<K, V> e : map.entrySet()) {
            this.put(e.getKey(), e.getValue());
        }
    }

    @Override
    public V remove(Object key) {
        if (this.elements == null || this.count == 0) {
            return null;
        }
        int i = 0;
        while (i < this.elements.length) {
            if (this.elements[i] != null && this.elements[i].equals(key)) {
                this.elements[i] = null;
                Object result = this.elements[i + 1];
                this.elements[i + 1] = null;
                --this.count;
                return (V)result;
            }
            i += 2;
        }
        return null;
    }

    @Override
    public int size() {
        return this.count;
    }

    @Override
    public void shareStrings(StringPool set) {
        Object[] array = this.elements;
        if (array == null) {
            return;
        }
        int i = 0;
        while (i < array.length) {
            Object o = array[i];
            if (o instanceof String) {
                array[i] = set.add((String)o);
            }
            if (o instanceof IStringPoolParticipant) {
                ((IStringPoolParticipant)o).shareStrings(set);
            }
            ++i;
        }
    }

    private HashMap<K, V> toHashMap() {
        HashMap<Object, Object> result = new HashMap<Object, Object>(this.size());
        int i = 0;
        while (i < this.elements.length) {
            if (this.elements[i] != null) {
                result.put(this.elements[i], this.elements[i + 1]);
            }
            i += 2;
        }
        return result;
    }

    @Override
    public Collection<V> values() {
        HashSet<Object> result = new HashSet<Object>(this.size());
        int i = 1;
        while (i < this.elements.length) {
            if (this.elements[i] != null) {
                result.add(this.elements[i]);
            }
            i += 2;
        }
        return result;
    }
}

