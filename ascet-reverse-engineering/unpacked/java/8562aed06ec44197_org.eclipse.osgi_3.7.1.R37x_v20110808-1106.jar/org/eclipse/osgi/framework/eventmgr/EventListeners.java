/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.eventmgr;

import java.util.Map;
import java.util.Set;
import org.eclipse.osgi.framework.eventmgr.CopyOnWriteIdentityMap;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EventListeners<K, V> {
    private final CopyOnWriteIdentityMap<K, V> list = new CopyOnWriteIdentityMap();

    public EventListeners() {
    }

    public EventListeners(int capacity) {
        this();
    }

    public void addListener(K listener, V listenerObject) {
        this.list.put(listener, listenerObject);
    }

    public void removeListener(V listener) {
        this.list.remove(listener);
    }

    public void removeAllListeners() {
        this.list.clear();
    }

    Set<Map.Entry<K, V>> entrySet() {
        return this.list.entrySet();
    }
}

