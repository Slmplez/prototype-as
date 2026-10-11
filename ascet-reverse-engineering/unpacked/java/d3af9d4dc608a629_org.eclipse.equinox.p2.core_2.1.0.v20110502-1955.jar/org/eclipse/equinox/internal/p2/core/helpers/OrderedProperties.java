/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.core.helpers;

import java.util.Collection;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class OrderedProperties
extends Dictionary<String, String>
implements Map<String, String> {
    LinkedHashMap<String, String> propertyMap = null;

    public static OrderedProperties unmodifiableProperties(Map<String, String> properties) {
        return new UnmodifiableProperties(properties);
    }

    public OrderedProperties() {
    }

    public OrderedProperties(int size) {
        this.propertyMap = new LinkedHashMap(size);
    }

    public OrderedProperties(OrderedProperties properties) {
        this.propertyMap = new LinkedHashMap(properties.size());
        this.putAll(properties);
    }

    public Object setProperty(String key, String value) {
        this.init();
        return this.propertyMap.put(key, value);
    }

    public String getProperty(String key) {
        return this.propertyMap == null ? null : this.propertyMap.get(key);
    }

    public void putAll(OrderedProperties properties) {
        this.putAll(properties);
    }

    private void init() {
        if (this.propertyMap == null) {
            this.propertyMap = new LinkedHashMap();
        }
    }

    @Override
    public int size() {
        return this.propertyMap == null ? 0 : this.propertyMap.size();
    }

    @Override
    public boolean isEmpty() {
        return this.propertyMap == null ? true : this.propertyMap.isEmpty();
    }

    @Override
    public synchronized void clear() {
        this.propertyMap = null;
    }

    @Override
    public String put(String key, String value) {
        this.init();
        return this.propertyMap.put(key, value);
    }

    @Override
    public boolean containsKey(Object key) {
        return this.propertyMap != null ? this.propertyMap.containsKey(key) : false;
    }

    @Override
    public boolean containsValue(Object value) {
        return this.propertyMap != null ? this.propertyMap.containsValue(value) : false;
    }

    @Override
    public Set<Map.Entry<String, String>> entrySet() {
        return this.propertyMap != null ? this.propertyMap.entrySet() : CollectionUtils.emptySet();
    }

    @Override
    public String get(Object key) {
        return this.propertyMap != null ? this.propertyMap.get(key) : null;
    }

    @Override
    public Set<String> keySet() {
        return this.propertyMap != null ? this.propertyMap.keySet() : CollectionUtils.emptySet();
    }

    @Override
    public void putAll(Map<? extends String, ? extends String> arg0) {
        this.init();
        this.propertyMap.putAll(arg0);
    }

    @Override
    public String remove(Object key) {
        return this.propertyMap != null ? (String)this.propertyMap.remove(key) : null;
    }

    @Override
    public Collection<String> values() {
        return this.propertyMap != null ? this.propertyMap.values() : CollectionUtils.emptyList();
    }

    @Override
    public boolean equals(Object o) {
        if (o == this) {
            return true;
        }
        if (o instanceof OrderedProperties) {
            OrderedProperties rhs = (OrderedProperties)o;
            if (rhs.propertyMap == this.propertyMap) {
                return true;
            }
            if (rhs.propertyMap == null) {
                return this.propertyMap.isEmpty();
            }
            if (this.propertyMap == null) {
                return rhs.isEmpty();
            }
            return rhs.propertyMap.equals(this.propertyMap);
        }
        if (this.propertyMap == null) {
            if (o instanceof Map) {
                return ((Map)o).isEmpty();
            }
            return false;
        }
        return this.propertyMap.equals(o);
    }

    @Override
    public int hashCode() {
        return this.propertyMap == null || this.propertyMap.isEmpty() ? 0 : this.propertyMap.hashCode();
    }

    public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append(this.propertyMap);
        return sb.toString();
    }

    @Override
    public Enumeration<String> elements() {
        return new StringsEnum(this.propertyMap.values());
    }

    @Override
    public Enumeration<String> keys() {
        return new StringsEnum(this.propertyMap.keySet());
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class StringsEnum
    implements Enumeration<String> {
        private final Iterator<String> iterator;

        public StringsEnum(Collection<String> elems) {
            this.iterator = elems.iterator();
        }

        @Override
        public boolean hasMoreElements() {
            return this.iterator.hasNext();
        }

        @Override
        public String nextElement() {
            return this.iterator.next();
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class UnmodifiableProperties
    extends OrderedProperties {
        UnmodifiableProperties(Map<String, String> properties) {
            for (Map.Entry<String, String> entry : properties.entrySet()) {
                super.put(entry.getKey(), entry.getValue());
            }
        }

        @Override
        public synchronized Object setProperty(String key, String value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public synchronized String put(String key, String value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public synchronized String remove(Object key) {
            throw new UnsupportedOperationException();
        }

        @Override
        public synchronized void putAll(Map<? extends String, ? extends String> t) {
            throw new UnsupportedOperationException();
        }

        @Override
        public synchronized void clear() {
            throw new UnsupportedOperationException();
        }
    }
}

