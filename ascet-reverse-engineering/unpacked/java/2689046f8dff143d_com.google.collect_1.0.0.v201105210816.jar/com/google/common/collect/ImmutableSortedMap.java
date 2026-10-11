/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.ImmutableSortedMapFauxverideShim;
import com.google.common.collect.ImmutableSortedSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.Lists;
import com.google.common.collect.Ordering;
import com.google.common.collect.RegularImmutableSortedSet;
import com.google.common.collect.UnmodifiableIterator;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.SortedMap;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible(serializable=true)
public class ImmutableSortedMap<K, V>
extends ImmutableSortedMapFauxverideShim<K, V>
implements SortedMap<K, V> {
    private static final Comparator NATURAL_ORDER = Ordering.natural();
    private static final Map.Entry<?, ?>[] EMPTY_ARRAY = new Map.Entry[0];
    private static final ImmutableMap<Object, Object> NATURAL_EMPTY_MAP = new ImmutableSortedMap<Object, Object>(EMPTY_ARRAY, NATURAL_ORDER);
    private final transient Map.Entry<K, V>[] entries;
    private final transient Comparator<? super K> comparator;
    private final transient int fromIndex;
    private final transient int toIndex;
    private transient ImmutableSet<Map.Entry<K, V>> entrySet;
    private transient ImmutableSortedSet<K> keySet;
    private transient ImmutableCollection<V> values;
    private static final long serialVersionUID = 0L;

    public static <K, V> ImmutableSortedMap<K, V> of() {
        return (ImmutableSortedMap)NATURAL_EMPTY_MAP;
    }

    private static <K, V> ImmutableSortedMap<K, V> emptyMap(Comparator<? super K> comparator) {
        if (((Object)NATURAL_ORDER).equals(comparator)) {
            return ImmutableSortedMap.of();
        }
        return new ImmutableSortedMap<K, V>(EMPTY_ARRAY, comparator);
    }

    public static <K extends Comparable<? super K>, V> ImmutableSortedMap<K, V> of(K k1, V v1) {
        Map.Entry[] entries = new Map.Entry[]{ImmutableSortedMap.entryOf(k1, v1)};
        return new ImmutableSortedMap(entries, Ordering.natural());
    }

    public static <K extends Comparable<? super K>, V> ImmutableSortedMap<K, V> of(K k1, V v1, K k2, V v2) {
        return ((Builder)((Builder)new Builder(Ordering.natural()).put((Object)k1, (Object)v1)).put((Object)k2, (Object)v2)).build();
    }

    public static <K extends Comparable<? super K>, V> ImmutableSortedMap<K, V> of(K k1, V v1, K k2, V v2, K k3, V v3) {
        return ((Builder)((Builder)((Builder)new Builder(Ordering.natural()).put((Object)k1, (Object)v1)).put((Object)k2, (Object)v2)).put((Object)k3, (Object)v3)).build();
    }

    public static <K extends Comparable<? super K>, V> ImmutableSortedMap<K, V> of(K k1, V v1, K k2, V v2, K k3, V v3, K k4, V v4) {
        return ((Builder)((Builder)((Builder)((Builder)new Builder(Ordering.natural()).put((Object)k1, (Object)v1)).put((Object)k2, (Object)v2)).put((Object)k3, (Object)v3)).put((Object)k4, (Object)v4)).build();
    }

    public static <K extends Comparable<? super K>, V> ImmutableSortedMap<K, V> of(K k1, V v1, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        return ((Builder)((Builder)((Builder)((Builder)((Builder)new Builder(Ordering.natural()).put((Object)k1, (Object)v1)).put((Object)k2, (Object)v2)).put((Object)k3, (Object)v3)).put((Object)k4, (Object)v4)).put((Object)k5, (Object)v5)).build();
    }

    public static <K, V> ImmutableSortedMap<K, V> copyOf(Map<? extends K, ? extends V> map) {
        Ordering naturalOrder = Ordering.natural();
        return ImmutableSortedMap.copyOfInternal(map, naturalOrder);
    }

    public static <K, V> ImmutableSortedMap<K, V> copyOf(Map<? extends K, ? extends V> map, Comparator<? super K> comparator) {
        return ImmutableSortedMap.copyOfInternal(map, Preconditions.checkNotNull(comparator));
    }

    public static <K, V> ImmutableSortedMap<K, V> copyOfSorted(SortedMap<K, ? extends V> map) {
        Comparator<K> comparator = map.comparator() == null ? NATURAL_ORDER : map.comparator();
        return ImmutableSortedMap.copyOfInternal(map, comparator);
    }

    private static <K, V> ImmutableSortedMap<K, V> copyOfInternal(Map<? extends K, ? extends V> map, Comparator<? super K> comparator) {
        boolean sameComparator = false;
        if (map instanceof SortedMap) {
            SortedMap sortedMap = (SortedMap)map;
            Comparator comparator2 = sortedMap.comparator();
            boolean bl = comparator2 == null ? comparator == NATURAL_ORDER : (sameComparator = ((Object)comparator).equals(comparator2));
        }
        if (sameComparator && map instanceof ImmutableSortedMap) {
            ImmutableSortedMap kvMap = (ImmutableSortedMap)map;
            return kvMap;
        }
        ArrayList<Map.Entry<K, V>> list = Lists.newArrayListWithCapacity(map.size());
        for (Map.Entry<K, V> entry : map.entrySet()) {
            list.add(ImmutableSortedMap.entryOf(entry.getKey(), entry.getValue()));
        }
        Map.Entry[] entryArray = list.toArray(new Map.Entry[list.size()]);
        if (!sameComparator) {
            ImmutableSortedMap.sortEntries(entryArray, comparator);
            ImmutableSortedMap.validateEntries(entryArray, comparator);
        }
        return new ImmutableSortedMap<K, V>(entryArray, comparator);
    }

    private static void sortEntries(Map.Entry<?, ?>[] entryArray, final Comparator<?> comparator) {
        Comparator entryComparator = new Comparator<Map.Entry<?, ?>>(){

            @Override
            public int compare(Map.Entry<?, ?> entry1, Map.Entry<?, ?> entry2) {
                return ImmutableSortedSet.unsafeCompare(comparator, entry1.getKey(), entry2.getKey());
            }
        };
        Arrays.sort(entryArray, entryComparator);
    }

    private static void validateEntries(Map.Entry<?, ?>[] entryArray, Comparator<?> comparator) {
        for (int i = 1; i < entryArray.length; ++i) {
            if (ImmutableSortedSet.unsafeCompare(comparator, entryArray[i - 1].getKey(), entryArray[i].getKey()) != 0) continue;
            throw new IllegalArgumentException("Duplicate keys in mappings " + entryArray[i - 1] + " and " + entryArray[i]);
        }
    }

    public static <K extends Comparable<K>, V> Builder<K, V> naturalOrder() {
        return new Builder(Ordering.natural());
    }

    public static <K, V> Builder<K, V> orderedBy(Comparator<K> comparator) {
        return new Builder(comparator);
    }

    public static <K extends Comparable<K>, V> Builder<K, V> reverseOrder() {
        return new Builder(Ordering.natural().reverse());
    }

    private ImmutableSortedMap(Map.Entry<?, ?>[] entries, Comparator<? super K> comparator, int fromIndex, int toIndex) {
        Map.Entry<?, ?>[] tmp = entries;
        this.entries = tmp;
        this.comparator = comparator;
        this.fromIndex = fromIndex;
        this.toIndex = toIndex;
    }

    ImmutableSortedMap(Map.Entry<?, ?>[] entries, Comparator<? super K> comparator) {
        this(entries, comparator, 0, entries.length);
    }

    @Override
    public int size() {
        return this.toIndex - this.fromIndex;
    }

    @Override
    public V get(@Nullable Object key) {
        int i;
        if (key == null) {
            return null;
        }
        try {
            i = this.binarySearch(key);
        }
        catch (ClassCastException e) {
            return null;
        }
        return i >= 0 ? (V)this.entries[i].getValue() : null;
    }

    private int binarySearch(Object key) {
        int lower = this.fromIndex;
        int upper = this.toIndex - 1;
        while (lower <= upper) {
            int middle = lower + (upper - lower) / 2;
            int c = ImmutableSortedSet.unsafeCompare(this.comparator, key, this.entries[middle].getKey());
            if (c < 0) {
                upper = middle - 1;
                continue;
            }
            if (c > 0) {
                lower = middle + 1;
                continue;
            }
            return middle;
        }
        return -lower - 1;
    }

    @Override
    public boolean containsValue(@Nullable Object value) {
        if (value == null) {
            return false;
        }
        for (int i = this.fromIndex; i < this.toIndex; ++i) {
            if (!this.entries[i].getValue().equals(value)) continue;
            return true;
        }
        return false;
    }

    @Override
    public ImmutableSet<Map.Entry<K, V>> entrySet() {
        ImmutableSet<Map.Entry<K, V>> es = this.entrySet;
        return es == null ? (this.entrySet = this.createEntrySet()) : es;
    }

    private ImmutableSet<Map.Entry<K, V>> createEntrySet() {
        return this.isEmpty() ? ImmutableSet.of() : new EntrySet(this);
    }

    @Override
    public ImmutableSortedSet<K> keySet() {
        ImmutableSortedSet<K> ks = this.keySet;
        return ks == null ? (this.keySet = this.createKeySet()) : ks;
    }

    private ImmutableSortedSet<K> createKeySet() {
        if (this.isEmpty()) {
            return ImmutableSortedSet.emptySet(this.comparator);
        }
        Object[] array = new Object[this.size()];
        for (int i = this.fromIndex; i < this.toIndex; ++i) {
            array[i - this.fromIndex] = this.entries[i].getKey();
        }
        return new RegularImmutableSortedSet<K>(array, this.comparator);
    }

    @Override
    public ImmutableCollection<V> values() {
        ImmutableCollection<V> v = this.values;
        return v == null ? (this.values = new Values(this)) : v;
    }

    @Override
    public Comparator<? super K> comparator() {
        return this.comparator;
    }

    @Override
    public K firstKey() {
        if (this.isEmpty()) {
            throw new NoSuchElementException();
        }
        return this.entries[this.fromIndex].getKey();
    }

    @Override
    public K lastKey() {
        if (this.isEmpty()) {
            throw new NoSuchElementException();
        }
        return this.entries[this.toIndex - 1].getKey();
    }

    @Override
    public ImmutableSortedMap<K, V> headMap(K toKey) {
        int newToIndex = this.findSubmapIndex(Preconditions.checkNotNull(toKey));
        return this.createSubmap(this.fromIndex, newToIndex);
    }

    @Override
    public ImmutableSortedMap<K, V> subMap(K fromKey, K toKey) {
        Preconditions.checkNotNull(fromKey);
        Preconditions.checkNotNull(toKey);
        Preconditions.checkArgument(this.comparator.compare(fromKey, toKey) <= 0);
        int newFromIndex = this.findSubmapIndex(fromKey);
        int newToIndex = this.findSubmapIndex(toKey);
        return this.createSubmap(newFromIndex, newToIndex);
    }

    @Override
    public ImmutableSortedMap<K, V> tailMap(K fromKey) {
        int newFromIndex = this.findSubmapIndex(Preconditions.checkNotNull(fromKey));
        return this.createSubmap(newFromIndex, this.toIndex);
    }

    private int findSubmapIndex(K key) {
        int index = this.binarySearch(key);
        return index >= 0 ? index : -index - 1;
    }

    private ImmutableSortedMap<K, V> createSubmap(int newFromIndex, int newToIndex) {
        if (newFromIndex < newToIndex) {
            return new ImmutableSortedMap<K, V>(this.entries, this.comparator, newFromIndex, newToIndex);
        }
        return ImmutableSortedMap.emptyMap(this.comparator);
    }

    @Override
    Object writeReplace() {
        return new SerializedForm(this);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static final class Builder<K, V>
    extends ImmutableMap.Builder<K, V> {
        private final Comparator<? super K> comparator;

        public Builder(Comparator<? super K> comparator) {
            this.comparator = Preconditions.checkNotNull(comparator);
        }

        @Override
        public Builder<K, V> put(K key, V value) {
            this.entries.add(ImmutableMap.entryOf(key, value));
            return this;
        }

        @Override
        public Builder<K, V> putAll(Map<? extends K, ? extends V> map) {
            for (Map.Entry<K, V> entry : map.entrySet()) {
                this.put((Object)entry.getKey(), (Object)entry.getValue());
            }
            return this;
        }

        @Override
        public ImmutableSortedMap<K, V> build() {
            Map.Entry[] entryArray = this.entries.toArray(new Map.Entry[this.entries.size()]);
            ImmutableSortedMap.sortEntries(entryArray, this.comparator);
            ImmutableSortedMap.validateEntries(entryArray, this.comparator);
            return new ImmutableSortedMap(entryArray, this.comparator);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class EntrySet<K, V>
    extends ImmutableSet<Map.Entry<K, V>> {
        final transient ImmutableSortedMap<K, V> map;

        EntrySet(ImmutableSortedMap<K, V> map) {
            this.map = map;
        }

        @Override
        public int size() {
            return this.map.size();
        }

        @Override
        public UnmodifiableIterator<Map.Entry<K, V>> iterator() {
            return Iterators.forArray(((ImmutableSortedMap)this.map).entries, ((ImmutableSortedMap)this.map).fromIndex, this.size());
        }

        @Override
        public boolean contains(Object target) {
            if (target instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry)target;
                V mappedValue = this.map.get(entry.getKey());
                return mappedValue != null && mappedValue.equals(entry.getValue());
            }
            return false;
        }

        @Override
        Object writeReplace() {
            return new EntrySetSerializedForm<K, V>(this.map);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class EntrySetSerializedForm<K, V>
    implements Serializable {
        final ImmutableSortedMap<K, V> map;
        private static final long serialVersionUID = 0L;

        EntrySetSerializedForm(ImmutableSortedMap<K, V> map) {
            this.map = map;
        }

        Object readResolve() {
            return this.map.entrySet();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class SerializedForm
    extends ImmutableMap.SerializedForm {
        private final Comparator<Object> comparator;
        private static final long serialVersionUID = 0L;

        SerializedForm(ImmutableSortedMap<?, ?> sortedMap) {
            super(sortedMap);
            this.comparator = sortedMap.comparator();
        }

        @Override
        Object readResolve() {
            Builder<Object, Object> builder = new Builder<Object, Object>(this.comparator);
            return this.createMap(builder);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class Values<V>
    extends ImmutableCollection<V> {
        private final ImmutableSortedMap<?, V> map;

        Values(ImmutableSortedMap<?, V> map) {
            this.map = map;
        }

        @Override
        public int size() {
            return this.map.size();
        }

        @Override
        public UnmodifiableIterator<V> iterator() {
            return new AbstractIterator<V>(){
                int index;
                {
                    this.index = Values.this.map.fromIndex;
                }

                @Override
                protected V computeNext() {
                    return this.index < Values.this.map.toIndex ? Values.this.map.entries[this.index++].getValue() : this.endOfData();
                }
            };
        }

        @Override
        public boolean contains(Object target) {
            return this.map.containsValue(target);
        }

        @Override
        Object writeReplace() {
            return new ValuesSerializedForm<V>(this.map);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class ValuesSerializedForm<V>
    implements Serializable {
        final ImmutableSortedMap<?, V> map;
        private static final long serialVersionUID = 0L;

        ValuesSerializedForm(ImmutableSortedMap<?, V> map) {
            this.map = map;
        }

        Object readResolve() {
            return this.map.values();
        }
    }
}

