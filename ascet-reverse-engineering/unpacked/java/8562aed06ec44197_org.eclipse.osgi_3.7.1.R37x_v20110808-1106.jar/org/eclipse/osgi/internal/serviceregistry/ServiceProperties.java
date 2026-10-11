/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.serviceregistry;

import java.lang.reflect.Array;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.eclipse.osgi.framework.util.Headers;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
class ServiceProperties
extends Headers<String, Object> {
    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private ServiceProperties(int size, Dictionary<String, ?> props) {
        super(size);
        if (props == null) {
            return;
        }
        Dictionary<String, ?> dictionary = props;
        synchronized (dictionary) {
            Enumeration<String> keysEnum = props.keys();
            while (keysEnum.hasMoreElements()) {
                String key = keysEnum.nextElement();
                if (!(key instanceof String)) continue;
                String header = key;
                this.setProperty(header, props.get(header));
            }
        }
    }

    ServiceProperties(Dictionary<String, ?> props) {
        this(props == null ? 2 : props.size() + 2, props);
    }

    Object getProperty(String key) {
        return ServiceProperties.cloneValue(this.get(key));
    }

    synchronized String[] getPropertyKeys() {
        int size = this.size();
        String[] keynames = new String[size];
        Enumeration keysEnum = this.keys();
        int i = 0;
        while (i < size) {
            keynames[i] = (String)keysEnum.nextElement();
            ++i;
        }
        return keynames;
    }

    synchronized Object setProperty(String key, Object value) {
        return this.set(key, ServiceProperties.cloneValue(value));
    }

    private static Object cloneValue(Object value) {
        block10: {
            if (value == null) {
                return null;
            }
            if (value instanceof String) {
                return value;
            }
            if (value instanceof Number) {
                return value;
            }
            if (value instanceof Character) {
                return value;
            }
            if (value instanceof Boolean) {
                return value;
            }
            Class<?> clazz = value.getClass();
            if (clazz.isArray()) {
                Class<?> type = clazz.getComponentType();
                int len = Array.getLength(value);
                Object clonedArray = Array.newInstance(type, len);
                System.arraycopy(value, 0, clonedArray, 0, len);
                return clonedArray;
            }
            try {
                return clazz.getMethod("clone", null).invoke(value, null);
            }
            catch (Exception exception) {
            }
            catch (Error error) {
                if (value instanceof Vector) {
                    return ((Vector)value).clone();
                }
                if (!(value instanceof Hashtable)) break block10;
                return ((Hashtable)value).clone();
            }
        }
        return value;
    }

    @Override
    public synchronized String toString() {
        String[] keys = this.getPropertyKeys();
        int size = keys.length;
        StringBuffer sb = new StringBuffer(20 * size);
        sb.append('{');
        int n = 0;
        int i = 0;
        while (i < size) {
            String key = keys[i];
            if (!key.equals("objectClass")) {
                if (n > 0) {
                    sb.append(", ");
                }
                sb.append(key);
                sb.append('=');
                Object value = this.get(key);
                if (value.getClass().isArray()) {
                    sb.append('[');
                    int length = Array.getLength(value);
                    int j = 0;
                    while (j < length) {
                        if (j > 0) {
                            sb.append(',');
                        }
                        sb.append(Array.get(value, j));
                        ++j;
                    }
                    sb.append(']');
                } else {
                    sb.append(value);
                }
                ++n;
            }
            ++i;
        }
        sb.append('}');
        return sb.toString();
    }
}

