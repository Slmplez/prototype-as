/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.expressions;

import org.eclipse.core.internal.expressions.Property;
import org.eclipse.core.internal.expressions.util.LRUCache;

class PropertyCache {
    private LRUCache fCache = new LRUCache(100);

    public PropertyCache(int cacheSize) {
        this.fCache.setSpaceLimit(cacheSize);
    }

    public Property get(Property key) {
        return (Property)this.fCache.get(key);
    }

    public void put(Property method) {
        this.fCache.put(method, method);
    }

    public void remove(Property method) {
        this.fCache.removeKey(method);
    }
}

