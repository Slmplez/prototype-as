/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.resources;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.internal.utils.IStringPoolParticipant;
import org.eclipse.core.internal.utils.StringPool;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MarkerAttributeMap<V>
implements Map<String, V>,
IStringPoolParticipant {
    protected Object[] elements = null;
    protected int count = 0;
    protected static final int DEFAULT_SIZE = 16;
    protected static final int GROW_SIZE = 10;
    private static final Object[] EMPTY = new Object[0];

    public MarkerAttributeMap() {
        this(16);
    }

    public MarkerAttributeMap(int initialCapacity) {
        this.elements = initialCapacity > 0 ? new Object[initialCapacity * 2] : EMPTY;
    }

    public MarkerAttributeMap(Map<String, ? extends V> map) {
        this(map.size());
        this.putAll(map);
    }

    @Override
    public void clear() {
        this.count = 0;
        this.elements = EMPTY;
    }

    @Override
    public boolean containsKey(Object key) {
        if (this.count == 0) {
            return false;
        }
        key = ((String)key).intern();
        int i = 0;
        while (i < this.elements.length) {
            if (this.elements[i] == key) {
                return true;
            }
            i += 2;
        }
        return false;
    }

    @Override
    public boolean containsValue(Object value) {
        if (this.count == 0) {
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
    public Set<Map.Entry<String, V>> entrySet() {
        return this.toHashMap().entrySet();
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
        if (this.count == 0) {
            return true;
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
        if (this.count == 0) {
            return null;
        }
        key = ((String)key).intern();
        int i = 0;
        while (i < this.elements.length) {
            if (this.elements[i] == key) {
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
        if (this.count == 0) {
            return hash;
        }
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
    public Set<String> keySet() {
        HashSet<String> result = new HashSet<String>(this.size());
        if (this.count == 0) {
            return result;
        }
        int i = 0;
        while (i < this.elements.length) {
            if (this.elements[i] != null) {
                result.add((String)this.elements[i]);
            }
            i += 2;
        }
        return result;
    }

    @Override
    public V put(String k, V value) {
        if (k == null) {
            throw new NullPointerException();
        }
        if (value == null) {
            return this.remove(k);
        }
        String key = k.intern();
        if (this.elements.length <= this.count * 2) {
            this.grow();
        }
        if (this.count == 0) {
            this.elements[0] = key;
            this.elements[1] = value;
            ++this.count;
            return null;
        }
        int i = 0;
        while (i < this.elements.length) {
            if (this.elements[i] == key) {
                Object oldValue = this.elements[i + 1];
                this.elements[i + 1] = value;
                return (V)oldValue;
            }
            i += 2;
        }
        i = 0;
        while (i < this.elements.length) {
            if (this.elements[i] == null) {
                this.elements[i] = key;
                this.elements[i + 1] = value;
                ++this.count;
                return null;
            }
            i += 2;
        }
        return null;
    }

    @Override
    public void putAll(Map<? extends String, ? extends V> map) {
        for (Map.Entry<String, V> e : map.entrySet()) {
            this.put(e.getKey(), e.getValue());
        }
    }

    @Override
    public V remove(Object key) {
        if (this.count == 0) {
            return null;
        }
        key = ((String)key).intern();
        int i = 0;
        while (i < this.elements.length) {
            if (this.elements[i] == key) {
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
        int i = 1;
        while (i < array.length) {
            Object o = array[i];
            if (o instanceof String) {
                array[i] = set.add((String)o);
            } else if (o instanceof IStringPoolParticipant) {
                ((IStringPoolParticipant)o).shareStrings(set);
            }
            i += 2;
        }
    }

    private HashMap<String, V> toHashMap() {
        HashMap<String, Object> result = new HashMap<String, Object>(this.size());
        if (this.count == 0) {
            return result;
        }
        int i = 0;
        while (i < this.elements.length) {
            if (this.elements[i] != null) {
                result.put((String)this.elements[i], this.elements[i + 1]);
            }
            i += 2;
        }
        return result;
    }

    @Override
    public Collection<V> values() {
        HashSet<Object> result = new HashSet<Object>(this.size());
        if (this.count == 0) {
            return result;
        }
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

