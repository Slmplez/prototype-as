/*
 * Decompiled with CFR 0.152.
 */
package com.google.common.cache;

import com.google.common.annotations.Beta;
import com.google.common.base.Function;
import com.google.common.cache.CacheStats;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@Beta
public interface Cache<K, V>
extends Function<K, V> {
    public V get(K var1) throws ExecutionException;

    public V getUnchecked(K var1);

    @Override
    public V apply(K var1);

    public void invalidate(Object var1);

    public void invalidateAll();

    public long size();

    public CacheStats stats();

    public ConcurrentMap<K, V> asMap();

    public void cleanUp();
}

