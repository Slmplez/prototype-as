/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.cache;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.cache.Cache;
import com.google.common.cache.CacheStats;
import com.google.common.collect.ForwardingObject;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@Beta
public abstract class ForwardingCache<K, V>
extends ForwardingObject
implements Cache<K, V> {
    protected ForwardingCache() {
    }

    @Override
    protected abstract Cache<K, V> delegate();

    @Override
    @Nullable
    public V get(@Nullable K key) throws ExecutionException {
        return this.delegate().get(key);
    }

    @Override
    @Nullable
    public V getUnchecked(@Nullable K key) {
        return this.delegate().getUnchecked(key);
    }

    @Override
    @Deprecated
    @Nullable
    public V apply(@Nullable K key) {
        return this.delegate().apply(key);
    }

    @Override
    public void invalidate(@Nullable Object key) {
        this.delegate().invalidate(key);
    }

    @Override
    public void invalidateAll() {
        this.delegate().invalidateAll();
    }

    @Override
    public long size() {
        return this.delegate().size();
    }

    @Override
    public CacheStats stats() {
        return this.delegate().stats();
    }

    @Override
    public ConcurrentMap<K, V> asMap() {
        return this.delegate().asMap();
    }

    @Override
    public void cleanUp() {
        this.delegate().cleanUp();
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    @Beta
    public static abstract class SimpleForwardingCache<K, V>
    extends ForwardingCache<K, V> {
        private final Cache<K, V> delegate;

        protected SimpleForwardingCache(Cache<K, V> delegate) {
            this.delegate = Preconditions.checkNotNull(delegate);
        }

        @Override
        protected final Cache<K, V> delegate() {
            return this.delegate;
        }
    }
}

