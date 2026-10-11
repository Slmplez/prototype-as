/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.CheckReturnValue
 *  javax.annotation.Nullable
 */
package com.google.common.cache;

import com.google.common.annotations.Beta;
import com.google.common.base.Ascii;
import com.google.common.base.Equivalence;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import com.google.common.base.Ticker;
import com.google.common.cache.AbstractCache;
import com.google.common.cache.Cache;
import com.google.common.cache.CacheLoader;
import com.google.common.cache.CacheStats;
import com.google.common.cache.ComputingCache;
import com.google.common.cache.CustomConcurrentHashMap;
import com.google.common.cache.RemovalCause;
import com.google.common.cache.RemovalListener;
import com.google.common.cache.RemovalNotification;
import com.google.common.collect.ForwardingConcurrentMap;
import com.google.common.util.concurrent.ExecutionError;
import com.google.common.util.concurrent.UncheckedExecutionException;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@Beta
public final class CacheBuilder<K, V> {
    private static final int DEFAULT_INITIAL_CAPACITY = 16;
    private static final int DEFAULT_CONCURRENCY_LEVEL = 4;
    private static final int DEFAULT_EXPIRATION_NANOS = 0;
    static final Supplier<? extends AbstractCache.StatsCounter> DEFAULT_STATS_COUNTER = Suppliers.ofInstance(new AbstractCache.StatsCounter(){

        public void recordHit() {
        }

        public void recordLoadSuccess(long loadTime) {
        }

        public void recordLoadException(long loadTime) {
        }

        public void recordConcurrentMiss() {
        }

        public void recordEviction() {
        }

        public CacheStats snapshot() {
            return EMPTY_STATS;
        }
    });
    static final CacheStats EMPTY_STATS = new CacheStats(0L, 0L, 0L, 0L, 0L, 0L);
    static final Supplier<AbstractCache.SimpleStatsCounter> CACHE_STATS_COUNTER = new Supplier<AbstractCache.SimpleStatsCounter>(){

        @Override
        public AbstractCache.SimpleStatsCounter get() {
            return new AbstractCache.SimpleStatsCounter();
        }
    };
    static final int UNSET_INT = -1;
    int initialCapacity = -1;
    int concurrencyLevel = -1;
    int maximumSize = -1;
    CustomConcurrentHashMap.Strength keyStrength;
    CustomConcurrentHashMap.Strength valueStrength;
    long expireAfterWriteNanos = -1L;
    long expireAfterAccessNanos = -1L;
    RemovalCause nullRemovalCause;
    Equivalence<Object> keyEquivalence;
    Equivalence<Object> valueEquivalence;
    RemovalListener<? super K, ? super V> removalListener;
    Ticker ticker;

    CacheBuilder() {
    }

    public static CacheBuilder<Object, Object> newBuilder() {
        return new CacheBuilder<Object, Object>();
    }

    private boolean useNullCache() {
        return this.nullRemovalCause == null;
    }

    CacheBuilder<K, V> keyEquivalence(Equivalence<Object> equivalence) {
        Preconditions.checkState(this.keyEquivalence == null, "key equivalence was already set to %s", this.keyEquivalence);
        this.keyEquivalence = Preconditions.checkNotNull(equivalence);
        return this;
    }

    Equivalence<Object> getKeyEquivalence() {
        return Objects.firstNonNull(this.keyEquivalence, this.getKeyStrength().defaultEquivalence());
    }

    CacheBuilder<K, V> valueEquivalence(Equivalence<Object> equivalence) {
        Preconditions.checkState(this.valueEquivalence == null, "value equivalence was already set to %s", this.valueEquivalence);
        this.valueEquivalence = Preconditions.checkNotNull(equivalence);
        return this;
    }

    Equivalence<Object> getValueEquivalence() {
        return Objects.firstNonNull(this.valueEquivalence, this.getValueStrength().defaultEquivalence());
    }

    public CacheBuilder<K, V> initialCapacity(int initialCapacity) {
        Preconditions.checkState(this.initialCapacity == -1, "initial capacity was already set to %s", this.initialCapacity);
        Preconditions.checkArgument(initialCapacity >= 0);
        this.initialCapacity = initialCapacity;
        return this;
    }

    int getInitialCapacity() {
        return this.initialCapacity == -1 ? 16 : this.initialCapacity;
    }

    public CacheBuilder<K, V> concurrencyLevel(int concurrencyLevel) {
        Preconditions.checkState(this.concurrencyLevel == -1, "concurrency level was already set to %s", this.concurrencyLevel);
        Preconditions.checkArgument(concurrencyLevel > 0);
        this.concurrencyLevel = concurrencyLevel;
        return this;
    }

    int getConcurrencyLevel() {
        return this.concurrencyLevel == -1 ? 4 : this.concurrencyLevel;
    }

    public CacheBuilder<K, V> maximumSize(int size) {
        Preconditions.checkState(this.maximumSize == -1, "maximum size was already set to %s", this.maximumSize);
        Preconditions.checkArgument(size >= 0, "maximum size must not be negative");
        this.maximumSize = size;
        if (this.maximumSize == 0) {
            this.nullRemovalCause = RemovalCause.SIZE;
        }
        return this;
    }

    CacheBuilder<K, V> strongKeys() {
        return this.setKeyStrength(CustomConcurrentHashMap.Strength.STRONG);
    }

    public CacheBuilder<K, V> weakKeys() {
        return this.setKeyStrength(CustomConcurrentHashMap.Strength.WEAK);
    }

    CacheBuilder<K, V> setKeyStrength(CustomConcurrentHashMap.Strength strength) {
        Preconditions.checkState(this.keyStrength == null, "Key strength was already set to %s", new Object[]{this.keyStrength});
        this.keyStrength = Preconditions.checkNotNull(strength);
        return this;
    }

    CustomConcurrentHashMap.Strength getKeyStrength() {
        return Objects.firstNonNull(this.keyStrength, CustomConcurrentHashMap.Strength.STRONG);
    }

    CacheBuilder<K, V> strongValues() {
        return this.setValueStrength(CustomConcurrentHashMap.Strength.STRONG);
    }

    public CacheBuilder<K, V> weakValues() {
        return this.setValueStrength(CustomConcurrentHashMap.Strength.WEAK);
    }

    public CacheBuilder<K, V> softValues() {
        return this.setValueStrength(CustomConcurrentHashMap.Strength.SOFT);
    }

    CacheBuilder<K, V> setValueStrength(CustomConcurrentHashMap.Strength strength) {
        Preconditions.checkState(this.valueStrength == null, "Value strength was already set to %s", new Object[]{this.valueStrength});
        this.valueStrength = Preconditions.checkNotNull(strength);
        return this;
    }

    CustomConcurrentHashMap.Strength getValueStrength() {
        return Objects.firstNonNull(this.valueStrength, CustomConcurrentHashMap.Strength.STRONG);
    }

    public CacheBuilder<K, V> expireAfterWrite(long duration, TimeUnit unit) {
        this.checkExpiration(duration, unit);
        this.expireAfterWriteNanos = unit.toNanos(duration);
        if (duration == 0L && this.nullRemovalCause == null) {
            this.nullRemovalCause = RemovalCause.EXPIRED;
        }
        return this;
    }

    private void checkExpiration(long duration, TimeUnit unit) {
        Preconditions.checkState(this.expireAfterWriteNanos == -1L, "expireAfterWrite was already set to %s ns", this.expireAfterWriteNanos);
        Preconditions.checkState(this.expireAfterAccessNanos == -1L, "expireAfterAccess was already set to %s ns", this.expireAfterAccessNanos);
        Preconditions.checkArgument(duration >= 0L, "duration cannot be negative: %s %s", new Object[]{duration, unit});
    }

    long getExpireAfterWriteNanos() {
        return this.expireAfterWriteNanos == -1L ? 0L : this.expireAfterWriteNanos;
    }

    public CacheBuilder<K, V> expireAfterAccess(long duration, TimeUnit unit) {
        this.checkExpiration(duration, unit);
        this.expireAfterAccessNanos = unit.toNanos(duration);
        if (duration == 0L && this.nullRemovalCause == null) {
            this.nullRemovalCause = RemovalCause.EXPIRED;
        }
        return this;
    }

    long getExpireAfterAccessNanos() {
        return this.expireAfterAccessNanos == -1L ? 0L : this.expireAfterAccessNanos;
    }

    public CacheBuilder<K, V> ticker(Ticker ticker) {
        Preconditions.checkState(this.ticker == null);
        this.ticker = Preconditions.checkNotNull(ticker);
        return this;
    }

    Ticker getTicker() {
        return Objects.firstNonNull(this.ticker, Ticker.systemTicker());
    }

    @CheckReturnValue
    public <K1 extends K, V1 extends V> CacheBuilder<K1, V1> removalListener(RemovalListener<? super K1, ? super V1> listener) {
        Preconditions.checkState(this.removalListener == null);
        CacheBuilder me = this;
        me.removalListener = Preconditions.checkNotNull(listener);
        return me;
    }

    <K1 extends K, V1 extends V> RemovalListener<K1, V1> getRemovalListener() {
        return Objects.firstNonNull(this.removalListener, NullListener.INSTANCE);
    }

    public <K1 extends K, V1 extends V> Cache<K1, V1> build(CacheLoader<? super K1, V1> loader) {
        return this.useNullCache() ? new ComputingCache<K1, V1>(this, CACHE_STATS_COUNTER, loader) : new NullCache<K1, V1>(this, CACHE_STATS_COUNTER, loader);
    }

    public String toString() {
        Objects.ToStringHelper s = Objects.toStringHelper(this);
        if (this.initialCapacity != -1) {
            s.add("initialCapacity", this.initialCapacity);
        }
        if (this.concurrencyLevel != -1) {
            s.add("concurrencyLevel", this.concurrencyLevel);
        }
        if (this.maximumSize != -1) {
            s.add("maximumSize", this.maximumSize);
        }
        if (this.expireAfterWriteNanos != -1L) {
            s.add("expireAfterWrite", this.expireAfterWriteNanos + "ns");
        }
        if (this.expireAfterAccessNanos != -1L) {
            s.add("expireAfterAccess", this.expireAfterAccessNanos + "ns");
        }
        if (this.keyStrength != null) {
            s.add("keyStrength", Ascii.toLowerCase(this.keyStrength.toString()));
        }
        if (this.valueStrength != null) {
            s.add("valueStrength", Ascii.toLowerCase(this.valueStrength.toString()));
        }
        if (this.keyEquivalence != null) {
            s.addValue("keyEquivalence");
        }
        if (this.valueEquivalence != null) {
            s.addValue("valueEquivalence");
        }
        if (this.removalListener != null) {
            s.addValue("removalListener");
        }
        return s.toString();
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static final class CacheAsMap<K, V>
    extends ForwardingConcurrentMap<K, V> {
        private final ConcurrentMap<K, V> delegate;

        CacheAsMap(ConcurrentMap<K, V> delegate) {
            this.delegate = delegate;
        }

        @Override
        protected ConcurrentMap<K, V> delegate() {
            return this.delegate;
        }

        @Override
        public V put(K key, V value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void putAll(Map<? extends K, ? extends V> map) {
            throw new UnsupportedOperationException();
        }

        @Override
        public V putIfAbsent(K key, V value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public V replace(K key, V value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean replace(K key, V oldValue, V newValue) {
            throw new UnsupportedOperationException();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static final class NullCache<K, V>
    extends AbstractCache<K, V> {
        final NullConcurrentMap<K, V> map;
        final CacheLoader<? super K, V> loader;
        final AbstractCache.StatsCounter statsCounter;
        ConcurrentMap<K, V> asMap;

        NullCache(CacheBuilder<? super K, ? super V> builder, Supplier<? extends AbstractCache.StatsCounter> statsCounterSupplier, CacheLoader<? super K, V> loader) {
            this.map = new NullConcurrentMap<K, V>(builder);
            this.statsCounter = statsCounterSupplier.get();
            this.loader = Preconditions.checkNotNull(loader);
        }

        @Override
        public V get(K key) throws ExecutionException {
            V value = this.compute(key);
            this.map.notifyRemoval(key, value);
            return value;
        }

        private V compute(K key) throws ExecutionException {
            Preconditions.checkNotNull(key);
            long start = System.nanoTime();
            V value = null;
            try {
                value = this.loader.load(key);
            }
            catch (RuntimeException e) {
                throw new UncheckedExecutionException(e);
            }
            catch (Exception e) {
                throw new ExecutionException(e);
            }
            catch (Error e) {
                throw new ExecutionError(e);
            }
            finally {
                long elapsed = System.nanoTime() - start;
                if (value == null) {
                    this.statsCounter.recordLoadException(elapsed);
                } else {
                    this.statsCounter.recordLoadSuccess(elapsed);
                }
                this.statsCounter.recordEviction();
            }
            if (value == null) {
                throw new NullPointerException();
            }
            return value;
        }

        @Override
        public long size() {
            return 0L;
        }

        @Override
        public void invalidate(Object key) {
        }

        @Override
        public void invalidateAll() {
        }

        @Override
        public CacheStats stats() {
            return this.statsCounter.snapshot();
        }

        @Override
        public ConcurrentMap<K, V> asMap() {
            ConcurrentMap<K, V> am = this.asMap;
            return am != null ? am : (this.asMap = new CacheAsMap<K, V>(this.map));
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static final class NullComputingConcurrentMap<K, V>
    extends NullConcurrentMap<K, V> {
        private static final long serialVersionUID = 0L;
        final CacheLoader<? super K, ? extends V> loader;

        NullComputingConcurrentMap(CacheBuilder<? super K, ? super V> builder, CacheLoader<? super K, ? extends V> loader) {
            super(builder);
            this.loader = Preconditions.checkNotNull(loader);
        }

        @Override
        public V get(Object k) {
            Object key = k;
            V value = this.compute(key);
            Preconditions.checkNotNull(value, this.loader + " returned null for key " + key + ".");
            this.notifyRemoval(key, value);
            return value;
        }

        private V compute(K key) {
            Preconditions.checkNotNull(key);
            try {
                return this.loader.load(key);
            }
            catch (Exception e) {
                throw new UncheckedExecutionException(e);
            }
            catch (Error e) {
                throw new ExecutionError(e);
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class NullConcurrentMap<K, V>
    extends AbstractMap<K, V>
    implements ConcurrentMap<K, V>,
    Serializable {
        private static final long serialVersionUID = 0L;
        private final RemovalListener<K, V> removalListener;
        private final RemovalCause removalCause;

        NullConcurrentMap(CacheBuilder<? super K, ? super V> builder) {
            this.removalListener = builder.getRemovalListener();
            this.removalCause = builder.nullRemovalCause;
        }

        @Override
        public boolean containsKey(@Nullable Object key) {
            return false;
        }

        @Override
        public boolean containsValue(@Nullable Object value) {
            return false;
        }

        @Override
        public V get(@Nullable Object key) {
            return null;
        }

        void notifyRemoval(K key, V value) {
            RemovalNotification<K, V> notification = new RemovalNotification<K, V>(key, value, this.removalCause);
            this.removalListener.onRemoval(notification);
        }

        @Override
        public V put(K key, V value) {
            Preconditions.checkNotNull(key);
            Preconditions.checkNotNull(value);
            this.notifyRemoval(key, value);
            return null;
        }

        @Override
        public V putIfAbsent(K key, V value) {
            return this.put(key, value);
        }

        @Override
        public V remove(@Nullable Object key) {
            return null;
        }

        @Override
        public boolean remove(@Nullable Object key, @Nullable Object value) {
            return false;
        }

        @Override
        public V replace(K key, V value) {
            Preconditions.checkNotNull(key);
            Preconditions.checkNotNull(value);
            return null;
        }

        @Override
        public boolean replace(K key, @Nullable V oldValue, V newValue) {
            Preconditions.checkNotNull(key);
            Preconditions.checkNotNull(newValue);
            return false;
        }

        @Override
        public Set<Map.Entry<K, V>> entrySet() {
            return Collections.emptySet();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static enum NullListener implements RemovalListener<Object, Object>
    {
        INSTANCE;


        @Override
        public void onRemoval(RemovalNotification<Object, Object> notification) {
        }
    }
}

