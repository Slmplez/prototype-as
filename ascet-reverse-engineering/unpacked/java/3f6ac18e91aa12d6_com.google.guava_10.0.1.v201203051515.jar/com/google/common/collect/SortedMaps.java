/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Function;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.MapDifference;
import com.google.common.collect.Maps;
import com.google.common.collect.Ordering;
import com.google.common.collect.SortedMapDifference;
import java.util.Collections;
import java.util.Comparator;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@Beta
@GwtCompatible
public final class SortedMaps {
    private SortedMaps() {
    }

    public static <K, V1, V2> SortedMap<K, V2> transformValues(SortedMap<K, V1> fromMap, final Function<? super V1, V2> function) {
        Preconditions.checkNotNull(function);
        Maps.EntryTransformer transformer = new Maps.EntryTransformer<K, V1, V2>(){

            @Override
            public V2 transformEntry(K key, V1 value) {
                return function.apply(value);
            }
        };
        return SortedMaps.transformEntries(fromMap, transformer);
    }

    public static <K, V1, V2> SortedMap<K, V2> transformEntries(SortedMap<K, V1> fromMap, Maps.EntryTransformer<? super K, ? super V1, V2> transformer) {
        return new TransformedEntriesSortedMap<K, V1, V2>(fromMap, transformer);
    }

    public static <K, V> SortedMapDifference<K, V> difference(SortedMap<K, ? extends V> left, Map<? extends K, ? extends V> right) {
        Comparator<K> comparator = SortedMaps.orNaturalOrder(left.comparator());
        TreeMap<K, V> onlyOnLeft = Maps.newTreeMap(comparator);
        TreeMap<? extends K, ? extends V> onlyOnRight = Maps.newTreeMap(comparator);
        onlyOnRight.putAll(right);
        TreeMap<K, V> onBoth = Maps.newTreeMap(comparator);
        TreeMap<K, MapDifference.ValueDifference<V>> differences = Maps.newTreeMap(comparator);
        boolean eq = true;
        for (Map.Entry<K, V> entry : left.entrySet()) {
            K leftKey = entry.getKey();
            V leftValue = entry.getValue();
            if (right.containsKey(leftKey)) {
                Object rightValue = onlyOnRight.remove(leftKey);
                if (Objects.equal(leftValue, rightValue)) {
                    onBoth.put(leftKey, leftValue);
                    continue;
                }
                eq = false;
                differences.put(leftKey, Maps.ValueDifferenceImpl.create(leftValue, rightValue));
                continue;
            }
            eq = false;
            onlyOnLeft.put(leftKey, leftValue);
        }
        boolean areEqual = eq && onlyOnRight.isEmpty();
        return SortedMaps.sortedMapDifference(areEqual, onlyOnLeft, onlyOnRight, onBoth, differences);
    }

    private static <K, V> SortedMapDifference<K, V> sortedMapDifference(boolean areEqual, SortedMap<K, V> onlyOnLeft, SortedMap<K, V> onlyOnRight, SortedMap<K, V> onBoth, SortedMap<K, MapDifference.ValueDifference<V>> differences) {
        return new SortedMapDifferenceImpl<K, V>(areEqual, Collections.unmodifiableSortedMap(onlyOnLeft), Collections.unmodifiableSortedMap(onlyOnRight), Collections.unmodifiableSortedMap(onBoth), Collections.unmodifiableSortedMap(differences));
    }

    static <E> Comparator<? super E> orNaturalOrder(@Nullable Comparator<? super E> comparator) {
        if (comparator != null) {
            return comparator;
        }
        return Ordering.natural();
    }

    @GwtIncompatible(value="untested")
    public static <K, V> SortedMap<K, V> filterKeys(SortedMap<K, V> unfiltered, final Predicate<? super K> keyPredicate) {
        Preconditions.checkNotNull(keyPredicate);
        Predicate entryPredicate = new Predicate<Map.Entry<K, V>>(){

            @Override
            public boolean apply(Map.Entry<K, V> input) {
                return keyPredicate.apply(input.getKey());
            }
        };
        return SortedMaps.filterEntries(unfiltered, entryPredicate);
    }

    @GwtIncompatible(value="untested")
    public static <K, V> SortedMap<K, V> filterValues(SortedMap<K, V> unfiltered, final Predicate<? super V> valuePredicate) {
        Preconditions.checkNotNull(valuePredicate);
        Predicate entryPredicate = new Predicate<Map.Entry<K, V>>(){

            @Override
            public boolean apply(Map.Entry<K, V> input) {
                return valuePredicate.apply(input.getValue());
            }
        };
        return SortedMaps.filterEntries(unfiltered, entryPredicate);
    }

    @GwtIncompatible(value="untested")
    public static <K, V> SortedMap<K, V> filterEntries(SortedMap<K, V> unfiltered, Predicate<? super Map.Entry<K, V>> entryPredicate) {
        Preconditions.checkNotNull(entryPredicate);
        return unfiltered instanceof FilteredSortedMap ? SortedMaps.filterFiltered((FilteredSortedMap)unfiltered, entryPredicate) : new FilteredSortedMap<K, V>(Preconditions.checkNotNull(unfiltered), entryPredicate);
    }

    private static <K, V> SortedMap<K, V> filterFiltered(FilteredSortedMap<K, V> map, Predicate<? super Map.Entry<K, V>> entryPredicate) {
        Predicate<? super Map.Entry<K, V>> predicate = Predicates.and(map.predicate, entryPredicate);
        return new FilteredSortedMap<K, V>(map.sortedMap(), predicate);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class FilteredSortedMap<K, V>
    extends Maps.FilteredEntryMap<K, V>
    implements SortedMap<K, V> {
        FilteredSortedMap(SortedMap<K, V> unfiltered, Predicate<? super Map.Entry<K, V>> entryPredicate) {
            super(unfiltered, entryPredicate);
        }

        SortedMap<K, V> sortedMap() {
            return (SortedMap)this.unfiltered;
        }

        @Override
        public Comparator<? super K> comparator() {
            return this.sortedMap().comparator();
        }

        @Override
        public K firstKey() {
            return this.keySet().iterator().next();
        }

        @Override
        public K lastKey() {
            SortedMap<K, V> headMap = this.sortedMap();
            K key;
            while (!this.apply(key = headMap.lastKey(), this.unfiltered.get(key))) {
                headMap = this.sortedMap().headMap(key);
            }
            return key;
        }

        @Override
        public SortedMap<K, V> headMap(K toKey) {
            return new FilteredSortedMap<K, V>(this.sortedMap().headMap(toKey), this.predicate);
        }

        @Override
        public SortedMap<K, V> subMap(K fromKey, K toKey) {
            return new FilteredSortedMap<K, V>(this.sortedMap().subMap(fromKey, toKey), this.predicate);
        }

        @Override
        public SortedMap<K, V> tailMap(K fromKey) {
            return new FilteredSortedMap<K, V>(this.sortedMap().tailMap(fromKey), this.predicate);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class SortedMapDifferenceImpl<K, V>
    extends Maps.MapDifferenceImpl<K, V>
    implements SortedMapDifference<K, V> {
        SortedMapDifferenceImpl(boolean areEqual, SortedMap<K, V> onlyOnLeft, SortedMap<K, V> onlyOnRight, SortedMap<K, V> onBoth, SortedMap<K, MapDifference.ValueDifference<V>> differences) {
            super(areEqual, onlyOnLeft, onlyOnRight, onBoth, differences);
        }

        @Override
        public SortedMap<K, MapDifference.ValueDifference<V>> entriesDiffering() {
            return (SortedMap)super.entriesDiffering();
        }

        @Override
        public SortedMap<K, V> entriesInCommon() {
            return (SortedMap)super.entriesInCommon();
        }

        @Override
        public SortedMap<K, V> entriesOnlyOnLeft() {
            return (SortedMap)super.entriesOnlyOnLeft();
        }

        @Override
        public SortedMap<K, V> entriesOnlyOnRight() {
            return (SortedMap)super.entriesOnlyOnRight();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class TransformedEntriesSortedMap<K, V1, V2>
    extends Maps.TransformedEntriesMap<K, V1, V2>
    implements SortedMap<K, V2> {
        protected SortedMap<K, V1> fromMap() {
            return (SortedMap)this.fromMap;
        }

        TransformedEntriesSortedMap(SortedMap<K, V1> fromMap, Maps.EntryTransformer<? super K, ? super V1, V2> transformer) {
            super(fromMap, transformer);
        }

        @Override
        public Comparator<? super K> comparator() {
            return this.fromMap().comparator();
        }

        @Override
        public K firstKey() {
            return this.fromMap().firstKey();
        }

        @Override
        public SortedMap<K, V2> headMap(K toKey) {
            return SortedMaps.transformEntries(this.fromMap().headMap(toKey), this.transformer);
        }

        @Override
        public K lastKey() {
            return this.fromMap().lastKey();
        }

        @Override
        public SortedMap<K, V2> subMap(K fromKey, K toKey) {
            return SortedMaps.transformEntries(this.fromMap().subMap(fromKey, toKey), this.transformer);
        }

        @Override
        public SortedMap<K, V2> tailMap(K fromKey) {
            return SortedMaps.transformEntries(this.fromMap().tailMap(fromKey), this.transformer);
        }
    }
}

