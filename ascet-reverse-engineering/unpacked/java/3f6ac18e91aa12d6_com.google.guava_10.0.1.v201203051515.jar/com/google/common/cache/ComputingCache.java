/*
 * Decompiled with CFR 0.152.
 */
package com.google.common.cache;

import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.cache.AbstractCache;
import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.google.common.cache.CacheStats;
import com.google.common.cache.CustomConcurrentHashMap;
import java.io.Serializable;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
class ComputingCache<K, V>
extends AbstractCache<K, V>
implements Serializable {
    final CustomConcurrentHashMap<K, V> map;
    private static final long serialVersionUID = 1L;

    ComputingCache(CacheBuilder<? super K, ? super V> builder, Supplier<? extends AbstractCache.StatsCounter> statsCounterSupplier, CacheLoader<? super K, V> loader) {
        this.map = new CustomConcurrentHashMap<K, V>(builder, statsCounterSupplier, loader);
    }

    @Override
    public V get(K key) throws ExecutionException {
        return this.map.getOrCompute(key);
    }

    @Override
    public void invalidate(Object key) {
        Preconditions.checkNotNull(key);
        this.map.remove(key);
    }

    @Override
    public void invalidateAll() {
        this.map.clear();
    }

    @Override
    public long size() {
        return this.map.longSize();
    }

    @Override
    public ConcurrentMap<K, V> asMap() {
        return this.map;
    }

    @Override
    public CacheStats stats() {
        AbstractCache.SimpleStatsCounter aggregator = new AbstractCache.SimpleStatsCounter();
        for (CustomConcurrentHashMap.Segment segment : this.map.segments) {
            aggregator.incrementBy(segment.statsCounter);
        }
        return aggregator.snapshot();
    }

    @Override
    public void cleanUp() {
        this.map.cleanUp();
    }

    Object writeReplace() {
        return this.map.cacheSerializationProxy();
    }
}

