/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.Map;
import java.util.Set;
import org.eclipse.osgi.framework.internal.core.Msg;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Headers<K, V>
extends Dictionary<K, V>
implements Map<K, V> {
    private boolean readOnly = false;
    private K[] headers;
    private V[] values;
    private int size = 0;

    public Headers(int initialCapacity) {
        Object[] k = new Object[initialCapacity];
        this.headers = k;
        Object[] v = new Object[initialCapacity];
        this.values = v;
    }

    public Headers(Dictionary<? extends K, ? extends V> values) {
        this(values.size());
        Enumeration<K> keys = values.keys();
        while (keys.hasMoreElements()) {
            K key = keys.nextElement();
            this.set(key, values.get(key));
        }
    }

    @Override
    public synchronized Enumeration<K> keys() {
        return new ArrayEnumeration<K>(this.headers, this.size);
    }

    @Override
    public synchronized Enumeration<V> elements() {
        return new ArrayEnumeration<V>(this.values, this.size);
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

    private V remove(int remove) {
        V removed = this.values[remove];
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

    private void add(K header, V value) {
        if (this.size == this.headers.length) {
            Object[] nv;
            Object[] nh;
            Object[] newHeaders = nh = new Object[this.headers.length + 10];
            Object[] newValues = nv = new Object[this.values.length + 10];
            System.arraycopy(this.headers, 0, newHeaders, 0, this.headers.length);
            System.arraycopy(this.values, 0, newValues, 0, this.values.length);
            this.headers = newHeaders;
            this.values = newValues;
        }
        this.headers[this.size] = header;
        this.values[this.size] = value;
        ++this.size;
    }

    @Override
    public synchronized V get(Object key) {
        int i = -1;
        i = this.getIndex(key);
        if (i != -1) {
            return this.values[i];
        }
        return null;
    }

    public synchronized V set(K key, V value, boolean replace) {
        if (this.readOnly) {
            throw new UnsupportedOperationException();
        }
        if (key instanceof String) {
            String k = ((String)key).intern();
            key = k;
        }
        int i = this.getIndex(key);
        if (value == null) {
            if (i != -1) {
                return this.remove(i);
            }
        } else {
            if (i != -1) {
                if (!replace) {
                    throw new IllegalArgumentException(NLS.bind(Msg.HEADER_DUPLICATE_KEY_EXCEPTION, key));
                }
                V oldVal = this.values[i];
                this.values[i] = value;
                return oldVal;
            }
            this.add(key, value);
        }
        return null;
    }

    public synchronized V set(K key, V value) {
        return this.set(key, value, false);
    }

    public synchronized void setReadOnly() {
        this.readOnly = true;
    }

    @Override
    public synchronized int size() {
        return this.size;
    }

    @Override
    public synchronized boolean isEmpty() {
        return this.size == 0;
    }

    @Override
    public synchronized V put(K key, V value) {
        if (this.readOnly) {
            throw new UnsupportedOperationException();
        }
        return this.set(key, value, true);
    }

    @Override
    public V remove(Object key) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return this.values.toString();
    }

    public static Headers<String, String> parseManifest(InputStream in) throws BundleException {
        Headers<String, String> headers = new Headers<String, String>(10);
        try {
            ManifestElement.parseBundleManifest(in, headers);
        }
        catch (IOException e) {
            throw new BundleException(Msg.MANIFEST_IOEXCEPTION, 3, e);
        }
        headers.setReadOnly();
        return headers;
    }

    @Override
    public synchronized void clear() {
        if (this.readOnly) {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public synchronized boolean containsKey(Object key) {
        return this.getIndex(key) >= 0;
    }

    @Override
    public boolean containsValue(Object value) {
        throw new UnsupportedOperationException();
    }

    @Override
    public Set<Map.Entry<K, V>> entrySet() {
        throw new UnsupportedOperationException();
    }

    @Override
    public Set<K> keySet() {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends K, ? extends V> c) {
        throw new UnsupportedOperationException();
    }

    @Override
    public Collection<V> values() {
        throw new UnsupportedOperationException();
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class ArrayEnumeration<E>
    implements Enumeration<E> {
        private E[] array;
        int cur = 0;

        public ArrayEnumeration(E[] array, int size) {
            Object[] a = new Object[size];
            this.array = a;
            System.arraycopy(array, 0, this.array, 0, this.array.length);
        }

        @Override
        public boolean hasMoreElements() {
            return this.cur < this.array.length;
        }

        @Override
        public E nextElement() {
            return this.array[this.cur++];
        }
    }
}

