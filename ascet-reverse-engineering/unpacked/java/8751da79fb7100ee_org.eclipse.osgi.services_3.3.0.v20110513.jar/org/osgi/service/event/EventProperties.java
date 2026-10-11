/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.event;

import java.util.Collection;
import java.util.Collections;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EventProperties
implements Map<String, Object> {
    private final Map<String, Object> properties;

    public EventProperties(Map<String, ?> properties) {
        int size = properties == null ? 0 : properties.size();
        HashMap p = new HashMap(size);
        if (size > 0) {
            for (String key : properties.keySet()) {
                if (!(key instanceof String) || "event.topics".equals(key)) continue;
                Object value = properties.get(key);
                p.put(key, value);
            }
        }
        this.properties = Collections.unmodifiableMap(p);
    }

    EventProperties(Dictionary<String, ?> properties) {
        int size = properties == null ? 0 : properties.size();
        HashMap p = new HashMap(size);
        if (size > 0) {
            Enumeration<String> e = properties.keys();
            while (e.hasMoreElements()) {
                String key = e.nextElement();
                if (!(key instanceof String) || "event.topics".equals(key)) continue;
                Object value = properties.get(key);
                p.put(key, value);
            }
        }
        this.properties = Collections.unmodifiableMap(p);
    }

    @Override
    public void clear() {
        this.properties.clear();
    }

    @Override
    public boolean containsKey(Object name) {
        return this.properties.containsKey(name);
    }

    @Override
    public boolean containsValue(Object value) {
        return this.properties.containsValue(value);
    }

    @Override
    public Set<Map.Entry<String, Object>> entrySet() {
        return this.properties.entrySet();
    }

    @Override
    public Object get(Object name) {
        return this.properties.get(name);
    }

    @Override
    public boolean isEmpty() {
        return this.properties.isEmpty();
    }

    @Override
    public Set<String> keySet() {
        return this.properties.keySet();
    }

    @Override
    public Object put(String key, Object value) {
        return this.properties.put(key, value);
    }

    @Override
    public void putAll(Map<? extends String, ? extends Object> map) {
        this.properties.putAll(map);
    }

    @Override
    public Object remove(Object key) {
        return this.properties.remove(key);
    }

    @Override
    public int size() {
        return this.properties.size();
    }

    @Override
    public Collection<Object> values() {
        return this.properties.values();
    }

    @Override
    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (!(object instanceof EventProperties)) {
            return false;
        }
        EventProperties other = (EventProperties)object;
        return ((Object)this.properties).equals(other.properties);
    }

    @Override
    public int hashCode() {
        return ((Object)this.properties).hashCode();
    }

    public String toString() {
        return this.properties.toString();
    }

    @Override
    public /* synthetic */ Object put(Object x0, Object x1) {
        return this.put((String)x0, x1);
    }
}

