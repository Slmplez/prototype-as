/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.util;

import java.util.Collection;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.Map;
import java.util.Set;

public class Headers
extends Dictionary
implements Map {
    private boolean readOnly = false;
    private Object[] headers;
    private Object[] values;
    private int size = 0;

    public Headers(int initialCapacity) {
        this.headers = new Object[initialCapacity];
        this.values = new Object[initialCapacity];
    }

    public Headers(Dictionary values) {
        this(values.size());
        Enumeration keys = values.keys();
        while (keys.hasMoreElements()) {
            Object key = keys.nextElement();
            this.set(key, values.get(key));
        }
    }

    public synchronized Enumeration keys() {
        return new ArrayEnumeration(this.headers, this.size);
    }

    public synchronized Enumeration elements() {
        return new ArrayEnumeration(this.values, this.size);
    }

    private int getIndex(Object key) {
        boolean stringKey = key instanceof String;
        int i = 0;
        while (i < this.size) {
            if (stringKey && this.headers[i] instanceof String ? ((String)this.headers[i]).equalsIgnoreCase((String)key) : this.headers[i].equals(key)) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    private Object remove(int remove) {
        Object removed = this.values[remove];
        int i = remove;
        while (i < this.size) {
            if (i == this.headers.length - 1) {
                this.headers[i] = null;
                this.values[i] = null;
            } else {
                this.headers[i] = this.headers[i + 1];
                this.values[i] = this.values[i + 1];
            }
            ++i;
        }
        if (remove < this.size) {
            --this.size;
        }
        return removed;
    }

    private void add(Object header, Object value) {
        if (this.size == this.headers.length) {
            Object[] newHeaders = new Object[this.headers.length + 10];
            Object[] newValues = new Object[this.values.length + 10];
            System.arraycopy(this.headers, 0, newHeaders, 0, this.headers.length);
            System.arraycopy(this.values, 0, newValues, 0, this.values.length);
            this.headers = newHeaders;
            this.values = newValues;
        }
        this.headers[this.size] = header;
        this.values[this.size] = value;
        ++this.size;
    }

    public synchronized Object get(Object key) {
        int i = -1;
        i = this.getIndex(key);
        if (i != -1) {
            return this.values[i];
        }
        return null;
    }

    public synchronized Object set(Object key, Object value, boolean replace) {
        if (this.readOnly) {
            throw new UnsupportedOperationException();
        }
        if (key instanceof String) {
            key = ((String)key).intern();
        }
        int i = this.getIndex(key);
        if (value == null) {
            if (i != -1) {
                return this.remove(i);
            }
        } else {
            if (i != -1) {
                if (!replace) {
                    throw new IllegalArgumentException();
                }
                Object oldVal = this.values[i];
                this.values[i] = value;
                return oldVal;
            }
            this.add(key, value);
        }
        return null;
    }

    public synchronized Object set(Object key, Object value) {
        return this.set(key, value, false);
    }

    public synchronized void setReadOnly() {
        this.readOnly = true;
    }

    public synchronized int size() {
        return this.size;
    }

    public synchronized boolean isEmpty() {
        return this.size == 0;
    }

    public synchronized Object put(Object key, Object value) {
        if (this.readOnly) {
            throw new UnsupportedOperationException();
        }
        return this.set(key, value, true);
    }

    public Object remove(Object key) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return this.values.toString();
    }

    public synchronized void clear() {
        if (this.readOnly) {
            throw new UnsupportedOperationException();
        }
    }

    public synchronized boolean containsKey(Object key) {
        return this.getIndex(key) >= 0;
    }

    public boolean containsValue(Object var0) {
        throw new UnsupportedOperationException();
    }

    public Set entrySet() {
        throw new UnsupportedOperationException();
    }

    public Set keySet() {
        throw new UnsupportedOperationException();
    }

    public void putAll(Map var0) {
        throw new UnsupportedOperationException();
    }

    public Collection values() {
        throw new UnsupportedOperationException();
    }

    class ArrayEnumeration
    implements Enumeration {
        private Object[] array;
        int cur = 0;

        public ArrayEnumeration(Object[] array, int size) {
            this.array = new Object[size];
            System.arraycopy(array, 0, this.array, 0, this.array.length);
        }

        public boolean hasMoreElements() {
            return this.cur < this.array.length;
        }

        public Object nextElement() {
            return this.array[this.cur++];
        }
    }
}

