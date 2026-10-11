/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.observable;

import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.databinding.observable.map.DecoratingObservableMap;
import org.eclipse.core.databinding.observable.map.IObservableMap;

public class UnmodifiableObservableMap
extends DecoratingObservableMap {
    Map unmodifiableMap;

    public UnmodifiableObservableMap(IObservableMap decorated) {
        super(decorated, false);
        this.unmodifiableMap = Collections.unmodifiableMap(decorated);
    }

    public void clear() {
        throw new UnsupportedOperationException();
    }

    public Set entrySet() {
        this.getterCalled();
        return this.unmodifiableMap.entrySet();
    }

    public Set keySet() {
        this.getterCalled();
        return this.unmodifiableMap.keySet();
    }

    public Object put(Object key, Object value) {
        throw new UnsupportedOperationException();
    }

    public void putAll(Map m) {
        throw new UnsupportedOperationException();
    }

    public Object remove(Object key) {
        throw new UnsupportedOperationException();
    }

    public Collection values() {
        this.getterCalled();
        return this.unmodifiableMap.values();
    }

    public synchronized void dispose() {
        this.unmodifiableMap = null;
        super.dispose();
    }
}

