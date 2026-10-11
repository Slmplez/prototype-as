/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.ForwardingObject;
import java.util.Map;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible
public abstract class ForwardingMapEntry<K, V>
extends ForwardingObject
implements Map.Entry<K, V> {
    @Override
    protected abstract Map.Entry<K, V> delegate();

    @Override
    public K getKey() {
        return this.delegate().getKey();
    }

    @Override
    public V getValue() {
        return this.delegate().getValue();
    }

    @Override
    public V setValue(V value) {
        return this.delegate().setValue(value);
    }

    @Override
    public boolean equals(@Nullable Object object) {
        return this.delegate().equals(object);
    }

    @Override
    public int hashCode() {
        return this.delegate().hashCode();
    }
}

