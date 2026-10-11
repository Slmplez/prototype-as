/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.Filter
 */
package org.osgi.service.event;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.Map;
import java.util.Set;
import org.osgi.framework.Filter;
import org.osgi.service.event.EventProperties;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Event {
    private final String topic;
    private final EventProperties properties;

    public Event(String topic, Map<String, ?> properties) {
        Event.validateTopicName(topic);
        this.topic = topic;
        this.properties = properties instanceof EventProperties ? (EventProperties)properties : new EventProperties(properties);
    }

    public Event(String topic, Dictionary<String, ?> properties) {
        Event.validateTopicName(topic);
        this.topic = topic;
        this.properties = new EventProperties(properties);
    }

    public final Object getProperty(String name) {
        if ("event.topics".equals(name)) {
            return this.topic;
        }
        return this.properties.get(name);
    }

    public final boolean containsProperty(String name) {
        if ("event.topics".equals(name)) {
            return true;
        }
        return this.properties.containsKey(name);
    }

    public final String[] getPropertyNames() {
        int size = this.properties.size();
        String[] result = new String[size + 1];
        this.properties.keySet().toArray(result);
        result[size] = "event.topics";
        return result;
    }

    public final String getTopic() {
        return this.topic;
    }

    public final boolean matches(Filter filter) {
        return filter.matchCase((Dictionary)new FilterProperties(this.topic, this.properties));
    }

    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof Event)) {
            return false;
        }
        Event event = (Event)object;
        return this.topic.equals(event.topic) && this.properties.equals(event.properties);
    }

    public int hashCode() {
        int h = 527 + this.topic.hashCode();
        h = 31 * h + this.properties.hashCode();
        return h;
    }

    public String toString() {
        return ((Object)new StringBuffer().append(this.getClass().getName()).append(" [topic=").append(this.topic).append("]")).toString();
    }

    private static void validateTopicName(String topic) {
        char[] chars = topic.toCharArray();
        int length = chars.length;
        if (length == 0) {
            throw new IllegalArgumentException("empty topic");
        }
        for (int i = 0; i < length; ++i) {
            char ch = chars[i];
            if (ch == '/') {
                if (i == 0 || i == length - 1) {
                    throw new IllegalArgumentException(((Object)new StringBuffer().append("invalid topic: ").append(topic)).toString());
                }
                if (chars[i - 1] != '/') continue;
                throw new IllegalArgumentException(((Object)new StringBuffer().append("invalid topic: ").append(topic)).toString());
            }
            if ('A' <= ch && ch <= 'Z' || 'a' <= ch && ch <= 'z' || '0' <= ch && ch <= '9' || ch == '_' || ch == '-') continue;
            throw new IllegalArgumentException(((Object)new StringBuffer().append("invalid topic: ").append(topic)).toString());
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static final class FilterProperties
    extends Dictionary<String, Object> {
        private final String topic;
        private final EventProperties properties;

        FilterProperties(String topic, EventProperties properties) {
            this.topic = topic;
            this.properties = properties;
        }

        @Override
        public Enumeration<Object> elements() {
            Collection<Object> values = this.properties.values();
            ArrayList<Object> result = new ArrayList<Object>(values.size() + 1);
            result.add(this.topic);
            result.addAll(values);
            return Collections.enumeration(result);
        }

        @Override
        public Object get(Object key) {
            if ("event.topics".equals(key)) {
                return this.topic;
            }
            return this.properties.get(key);
        }

        @Override
        public boolean isEmpty() {
            return false;
        }

        @Override
        public Enumeration<String> keys() {
            Set<String> keys = this.properties.keySet();
            ArrayList<String> result = new ArrayList<String>(keys.size() + 1);
            result.add("event.topics");
            result.addAll(keys);
            return Collections.enumeration(result);
        }

        @Override
        public Object put(String key, Object value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Object remove(Object key) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int size() {
            return this.properties.size() + 1;
        }

        @Override
        public /* synthetic */ Object put(Object x0, Object x1) {
            return this.put((String)x0, x1);
        }
    }
}

