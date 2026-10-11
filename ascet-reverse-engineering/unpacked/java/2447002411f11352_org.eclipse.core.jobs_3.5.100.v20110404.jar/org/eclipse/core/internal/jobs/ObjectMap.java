/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.jobs;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class ObjectMap
implements Map {
    protected static final int DEFAULT_SIZE = 16;
    protected static final int GROW_SIZE = 10;
    protected int count = 0;
    protected Object[] elements = null;

    public ObjectMap(int initialCapacity) {
        if (initialCapacity > 0) {
            this.elements = new Object[Math.max(initialCapacity * 2, 0)];
        }
    }

    public ObjectMap(Map map) {
        this(map.size());
        this.putAll(map);
    }

    public void clear() {
        this.elements = null;
        this.count = 0;
    }

    public Object clone() {
        return new ObjectMap(this);
    }

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

    public Set entrySet() {
        return this.count == 0 ? Collections.EMPTY_SET : this.toHashMap().entrySet();
    }

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

    public Object get(Object key) {
        if (this.elements == null || this.count == 0) {
            return null;
        }
        int i = 0;
        while (i < this.elements.length) {
            if (this.elements[i] != null && this.elements[i].equals(key)) {
                return this.elements[i + 1];
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

    public boolean isEmpty() {
        return this.count == 0;
    }

    public Set keySet() {
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

    public Object put(Object key, Object value) {
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
                    return oldValue;
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

    public void putAll(Map map) {
        Iterator i = map.keySet().iterator();
        while (i.hasNext()) {
            Object key = i.next();
            Object value = map.get(key);
            this.put(key, value);
        }
    }

    public Object remove(Object key) {
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
                return result;
            }
            i += 2;
        }
        return null;
    }

    public int size() {
        return this.count;
    }

    private HashMap toHashMap() {
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

    public Collection values() {
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

