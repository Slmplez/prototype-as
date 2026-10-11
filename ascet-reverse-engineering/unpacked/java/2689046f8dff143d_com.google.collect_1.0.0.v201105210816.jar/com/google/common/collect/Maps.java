/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.AbstractMapEntry;
import com.google.common.collect.BiMap;
import com.google.common.collect.Collections2;
import com.google.common.collect.ForwardingCollection;
import com.google.common.collect.ForwardingIterator;
import com.google.common.collect.ForwardingMap;
import com.google.common.collect.ForwardingMapEntry;
import com.google.common.collect.ForwardingSet;
import com.google.common.collect.ImmutableEntry;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Lists;
import com.google.common.collect.MapDifference;
import com.google.common.collect.ObjectArrays;
import com.google.common.collect.Sets;
import com.google.common.collect.Synchronized;
import com.google.common.collect.UnmodifiableIterator;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible
public final class Maps {
    static final Joiner.MapJoiner standardJoiner = Collections2.standardJoiner.withKeyValueSeparator("=");

    private Maps() {
    }

    public static <K, V> HashMap<K, V> newHashMap() {
        return new HashMap();
    }

    public static <K, V> HashMap<K, V> newHashMapWithExpectedSize(int expectedSize) {
        return new HashMap(Maps.capacity(expectedSize));
    }

    static int capacity(int expectedSize) {
        Preconditions.checkArgument(expectedSize >= 0);
        return Math.max(expectedSize * 2, 16);
    }

    public static <K, V> HashMap<K, V> newHashMap(Map<? extends K, ? extends V> map) {
        return new HashMap<K, V>(map);
    }

    public static <K, V> LinkedHashMap<K, V> newLinkedHashMap() {
        return new LinkedHashMap();
    }

    public static <K, V> LinkedHashMap<K, V> newLinkedHashMap(Map<? extends K, ? extends V> map) {
        return new LinkedHashMap<K, V>(map);
    }

    public static <K extends Comparable, V> TreeMap<K, V> newTreeMap() {
        return new TreeMap();
    }

    public static <K, V> TreeMap<K, V> newTreeMap(SortedMap<K, ? extends V> map) {
        return new TreeMap<K, V>(map);
    }

    public static <C, K extends C, V> TreeMap<K, V> newTreeMap(@Nullable Comparator<C> comparator) {
        return new TreeMap(comparator);
    }

    public static <K extends Enum<K>, V> EnumMap<K, V> newEnumMap(Class<K> type) {
        return new EnumMap(Preconditions.checkNotNull(type));
    }

    public static <K extends Enum<K>, V> EnumMap<K, V> newEnumMap(Map<K, ? extends V> map) {
        return new EnumMap<K, V>(map);
    }

    public static <K, V> IdentityHashMap<K, V> newIdentityHashMap() {
        return new IdentityHashMap();
    }

    public static <K, V> BiMap<K, V> synchronizedBiMap(BiMap<K, V> bimap) {
        return Synchronized.biMap(bimap, null);
    }

    public static <K, V> MapDifference<K, V> difference(Map<? extends K, ? extends V> left, Map<? extends K, ? extends V> right) {
        HashMap<K, V> onlyOnLeft = Maps.newHashMap();
        HashMap<K, V> onlyOnRight = new HashMap<K, V>(right);
        HashMap<K, V> onBoth = Maps.newHashMap();
        HashMap<K, ValueDifferenceImpl<V>> differences = Maps.newHashMap();
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
                differences.put(leftKey, new ValueDifferenceImpl<V>(leftValue, rightValue));
                continue;
            }
            eq = false;
            onlyOnLeft.put(leftKey, leftValue);
        }
        boolean areEqual = eq && onlyOnRight.isEmpty();
        return new MapDifferenceImpl<K, V>(areEqual, onlyOnLeft, onlyOnRight, onBoth, differences);
    }

    public static <K, V> ImmutableMap<K, V> uniqueIndex(Iterable<V> values, Function<? super V, K> keyFunction) {
        Preconditions.checkNotNull(keyFunction);
        ImmutableMap.Builder<K, V> builder = ImmutableMap.builder();
        for (V value : values) {
            builder.put(keyFunction.apply(value), value);
        }
        return builder.build();
    }

    public static ImmutableMap<String, String> fromProperties(Properties properties) {
        ImmutableMap.Builder<String, String> builder = ImmutableMap.builder();
        Enumeration<?> e = properties.propertyNames();
        while (e.hasMoreElements()) {
            String key = (String)e.nextElement();
            builder.put(key, properties.getProperty(key));
        }
        return builder.build();
    }

    public static <K, V> Map.Entry<K, V> immutableEntry(@Nullable K key, @Nullable V value) {
        return new ImmutableEntry<K, V>(key, value);
    }

    static <K, V> Set<Map.Entry<K, V>> unmodifiableEntrySet(Set<Map.Entry<K, V>> entrySet) {
        return new UnmodifiableEntrySet<K, V>(Collections.unmodifiableSet(entrySet));
    }

    private static <K, V> Map.Entry<K, V> unmodifiableEntry(final Map.Entry<K, V> entry) {
        Preconditions.checkNotNull(entry);
        return new AbstractMapEntry<K, V>(){

            @Override
            public K getKey() {
                return entry.getKey();
            }

            @Override
            public V getValue() {
                return entry.getValue();
            }
        };
    }

    public static <K, V> BiMap<K, V> unmodifiableBiMap(BiMap<? extends K, ? extends V> bimap) {
        return new UnmodifiableBiMap<K, V>(bimap, null);
    }

    static <K, V> boolean containsEntryImpl(Collection<Map.Entry<K, V>> c, Object o) {
        if (!(o instanceof Map.Entry)) {
            return false;
        }
        return c.contains(Maps.unmodifiableEntry((Map.Entry)o));
    }

    static <K, V> boolean removeEntryImpl(Collection<Map.Entry<K, V>> c, Object o) {
        if (!(o instanceof Map.Entry)) {
            return false;
        }
        return c.remove(Maps.unmodifiableEntry((Map.Entry)o));
    }

    public static <K, V1, V2> Map<K, V2> transformValues(Map<K, V1> fromMap, Function<? super V1, V2> function) {
        return new TransformedValuesMap<K, V1, V2>(fromMap, function);
    }

    public static <K, V> Map<K, V> filterKeys(Map<K, V> unfiltered, final Predicate<? super K> keyPredicate) {
        Preconditions.checkNotNull(keyPredicate);
        Predicate entryPredicate = new Predicate<Map.Entry<K, V>>(){

            @Override
            public boolean apply(Map.Entry<K, V> input) {
                return keyPredicate.apply(input.getKey());
            }
        };
        return unfiltered instanceof AbstractFilteredMap ? Maps.filterFiltered((AbstractFilteredMap)unfiltered, entryPredicate) : new FilteredKeyMap<K, V>(Preconditions.checkNotNull(unfiltered), keyPredicate, entryPredicate);
    }

    public static <K, V> Map<K, V> filterValues(Map<K, V> unfiltered, final Predicate<? super V> valuePredicate) {
        Preconditions.checkNotNull(valuePredicate);
        Predicate entryPredicate = new Predicate<Map.Entry<K, V>>(){

            @Override
            public boolean apply(Map.Entry<K, V> input) {
                return valuePredicate.apply(input.getValue());
            }
        };
        return Maps.filterEntries(unfiltered, entryPredicate);
    }

    public static <K, V> Map<K, V> filterEntries(Map<K, V> unfiltered, Predicate<? super Map.Entry<K, V>> entryPredicate) {
        Preconditions.checkNotNull(entryPredicate);
        return unfiltered instanceof AbstractFilteredMap ? Maps.filterFiltered((AbstractFilteredMap)unfiltered, entryPredicate) : new FilteredEntryMap<K, V>(Preconditions.checkNotNull(unfiltered), entryPredicate);
    }

    private static <K, V> Map<K, V> filterFiltered(AbstractFilteredMap<K, V> map, Predicate<? super Map.Entry<K, V>> entryPredicate) {
        Predicate<? super Map.Entry<K, V>> predicate = Predicates.and(map.predicate, entryPredicate);
        return new FilteredEntryMap(map.unfiltered, predicate);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static abstract class AbstractFilteredMap<K, V>
    extends AbstractMap<K, V> {
        final Map<K, V> unfiltered;
        final Predicate<? super Map.Entry<K, V>> predicate;
        Collection<V> values;

        AbstractFilteredMap(Map<K, V> unfiltered, Predicate<? super Map.Entry<K, V>> predicate) {
            this.unfiltered = unfiltered;
            this.predicate = predicate;
        }

        boolean apply(Object key, V value) {
            Object k = key;
            return this.predicate.apply(Maps.immutableEntry(k, value));
        }

        @Override
        public V put(K key, V value) {
            Preconditions.checkArgument(this.apply(key, value));
            return this.unfiltered.put(key, value);
        }

        @Override
        public void putAll(Map<? extends K, ? extends V> map) {
            for (Map.Entry<K, V> entry : map.entrySet()) {
                Preconditions.checkArgument(this.apply(entry.getKey(), entry.getValue()));
            }
            this.unfiltered.putAll(map);
        }

        @Override
        public boolean containsKey(Object key) {
            return this.unfiltered.containsKey(key) && this.apply(key, this.unfiltered.get(key));
        }

        @Override
        public V get(Object key) {
            V value = this.unfiltered.get(key);
            return value != null && this.apply(key, value) ? (V)value : null;
        }

        @Override
        public boolean isEmpty() {
            return this.entrySet().isEmpty();
        }

        @Override
        public V remove(Object key) {
            return this.containsKey(key) ? (V)this.unfiltered.remove(key) : null;
        }

        @Override
        public Collection<V> values() {
            Values result = this.values;
            return result == null ? (this.values = new Values()) : result;
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        class Values
        extends AbstractCollection<V> {
            Values() {
            }

            @Override
            public Iterator<V> iterator() {
                final Iterator entryIterator = AbstractFilteredMap.this.entrySet().iterator();
                return new UnmodifiableIterator<V>(){

                    @Override
                    public boolean hasNext() {
                        return entryIterator.hasNext();
                    }

                    @Override
                    public V next() {
                        return ((Map.Entry)entryIterator.next()).getValue();
                    }
                };
            }

            @Override
            public int size() {
                return AbstractFilteredMap.this.entrySet().size();
            }

            @Override
            public void clear() {
                AbstractFilteredMap.this.entrySet().clear();
            }

            @Override
            public boolean isEmpty() {
                return AbstractFilteredMap.this.entrySet().isEmpty();
            }

            @Override
            public boolean remove(Object o) {
                Iterator iterator = AbstractFilteredMap.this.unfiltered.entrySet().iterator();
                while (iterator.hasNext()) {
                    Map.Entry entry = iterator.next();
                    if (!Objects.equal(o, entry.getValue()) || !AbstractFilteredMap.this.predicate.apply(entry)) continue;
                    iterator.remove();
                    return true;
                }
                return false;
            }

            @Override
            public boolean removeAll(Collection<?> collection) {
                Preconditions.checkNotNull(collection);
                boolean changed = false;
                Iterator iterator = AbstractFilteredMap.this.unfiltered.entrySet().iterator();
                while (iterator.hasNext()) {
                    Map.Entry entry = iterator.next();
                    if (!collection.contains(entry.getValue()) || !AbstractFilteredMap.this.predicate.apply(entry)) continue;
                    iterator.remove();
                    changed = true;
                }
                return changed;
            }

            @Override
            public boolean retainAll(Collection<?> collection) {
                Preconditions.checkNotNull(collection);
                boolean changed = false;
                Iterator iterator = AbstractFilteredMap.this.unfiltered.entrySet().iterator();
                while (iterator.hasNext()) {
                    Map.Entry entry = iterator.next();
                    if (collection.contains(entry.getValue()) || !AbstractFilteredMap.this.predicate.apply(entry)) continue;
                    iterator.remove();
                    changed = true;
                }
                return changed;
            }

            @Override
            public Object[] toArray() {
                return Lists.newArrayList(this.iterator()).toArray();
            }

            @Override
            public <T> T[] toArray(T[] array) {
                return Lists.newArrayList(this.iterator()).toArray(array);
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class FilteredEntryMap<K, V>
    extends AbstractFilteredMap<K, V> {
        final Set<Map.Entry<K, V>> filteredEntrySet;
        Set<Map.Entry<K, V>> entrySet;
        Set<K> keySet;

        FilteredEntryMap(Map<K, V> unfiltered, Predicate<? super Map.Entry<K, V>> entryPredicate) {
            super(unfiltered, entryPredicate);
            this.filteredEntrySet = Sets.filter(unfiltered.entrySet(), this.predicate);
        }

        @Override
        public Set<Map.Entry<K, V>> entrySet() {
            EntrySet result = this.entrySet;
            return result == null ? (this.entrySet = new EntrySet()) : result;
        }

        @Override
        public Set<K> keySet() {
            KeySet result = this.keySet;
            return result == null ? (this.keySet = new KeySet()) : result;
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        private class EntrySet
        extends ForwardingSet<Map.Entry<K, V>> {
            private EntrySet() {
            }

            @Override
            protected Set<Map.Entry<K, V>> delegate() {
                return FilteredEntryMap.this.filteredEntrySet;
            }

            @Override
            public Iterator<Map.Entry<K, V>> iterator() {
                final Iterator iterator = FilteredEntryMap.this.filteredEntrySet.iterator();
                return new UnmodifiableIterator<Map.Entry<K, V>>(){

                    @Override
                    public boolean hasNext() {
                        return iterator.hasNext();
                    }

                    @Override
                    public Map.Entry<K, V> next() {
                        final Map.Entry entry = (Map.Entry)iterator.next();
                        return new ForwardingMapEntry<K, V>(){

                            @Override
                            protected Map.Entry<K, V> delegate() {
                                return entry;
                            }

                            @Override
                            public V setValue(V value) {
                                Preconditions.checkArgument(FilteredEntryMap.this.apply(entry.getKey(), value));
                                return super.setValue(value);
                            }
                        };
                    }
                };
            }
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        private class KeySet
        extends AbstractSet<K> {
            private KeySet() {
            }

            @Override
            public Iterator<K> iterator() {
                final Iterator iterator = FilteredEntryMap.this.filteredEntrySet.iterator();
                return new UnmodifiableIterator<K>(){

                    @Override
                    public boolean hasNext() {
                        return iterator.hasNext();
                    }

                    @Override
                    public K next() {
                        return ((Map.Entry)iterator.next()).getKey();
                    }
                };
            }

            @Override
            public int size() {
                return FilteredEntryMap.this.filteredEntrySet.size();
            }

            @Override
            public void clear() {
                FilteredEntryMap.this.filteredEntrySet.clear();
            }

            @Override
            public boolean contains(Object o) {
                return FilteredEntryMap.this.containsKey(o);
            }

            @Override
            public boolean remove(Object o) {
                if (FilteredEntryMap.this.containsKey(o)) {
                    FilteredEntryMap.this.unfiltered.remove(o);
                    return true;
                }
                return false;
            }

            @Override
            public boolean removeAll(Collection<?> collection) {
                Preconditions.checkNotNull(collection);
                boolean changed = false;
                for (Object obj : collection) {
                    changed |= this.remove(obj);
                }
                return changed;
            }

            @Override
            public boolean retainAll(Collection<?> collection) {
                Preconditions.checkNotNull(collection);
                boolean changed = false;
                Iterator iterator = FilteredEntryMap.this.unfiltered.entrySet().iterator();
                while (iterator.hasNext()) {
                    Map.Entry entry = iterator.next();
                    if (collection.contains(entry.getKey()) || !FilteredEntryMap.this.predicate.apply(entry)) continue;
                    iterator.remove();
                    changed = true;
                }
                return changed;
            }

            @Override
            public Object[] toArray() {
                return Lists.newArrayList(this.iterator()).toArray();
            }

            @Override
            public <T> T[] toArray(T[] array) {
                return Lists.newArrayList(this.iterator()).toArray(array);
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class FilteredKeyMap<K, V>
    extends AbstractFilteredMap<K, V> {
        Predicate<? super K> keyPredicate;
        Set<Map.Entry<K, V>> entrySet;
        Set<K> keySet;

        FilteredKeyMap(Map<K, V> unfiltered, Predicate<? super K> keyPredicate, Predicate<Map.Entry<K, V>> entryPredicate) {
            super(unfiltered, entryPredicate);
            this.keyPredicate = keyPredicate;
        }

        @Override
        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> result = this.entrySet;
            return result == null ? (this.entrySet = Sets.filter(this.unfiltered.entrySet(), this.predicate)) : result;
        }

        @Override
        public Set<K> keySet() {
            Set<K> result = this.keySet;
            return result == null ? (this.keySet = Sets.filter(this.unfiltered.keySet(), this.keyPredicate)) : result;
        }

        @Override
        public boolean containsKey(Object key) {
            return this.unfiltered.containsKey(key) && this.keyPredicate.apply(key);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    @GwtCompatible
    static abstract class ImprovedAbstractMap<K, V>
    extends AbstractMap<K, V> {
        private transient Set<Map.Entry<K, V>> entrySet;
        private transient Set<K> keySet;
        private transient Collection<V> values;

        ImprovedAbstractMap() {
        }

        protected abstract Set<Map.Entry<K, V>> createEntrySet();

        @Override
        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> result = this.entrySet;
            if (result == null) {
                this.entrySet = result = this.createEntrySet();
            }
            return result;
        }

        @Override
        public Set<K> keySet() {
            ForwardingSet result = this.keySet;
            if (result == null) {
                final Set delegate = super.keySet();
                this.keySet = result = new ForwardingSet<K>(){

                    @Override
                    protected Set<K> delegate() {
                        return delegate;
                    }

                    @Override
                    public boolean isEmpty() {
                        return ImprovedAbstractMap.this.isEmpty();
                    }
                };
            }
            return result;
        }

        @Override
        public Collection<V> values() {
            ForwardingCollection result = this.values;
            if (result == null) {
                final Collection delegate = super.values();
                this.values = result = new ForwardingCollection<V>(){

                    @Override
                    protected Collection<V> delegate() {
                        return delegate;
                    }

                    @Override
                    public boolean isEmpty() {
                        return ImprovedAbstractMap.this.isEmpty();
                    }
                };
            }
            return result;
        }

        @Override
        public boolean isEmpty() {
            return this.entrySet().isEmpty();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class MapDifferenceImpl<K, V>
    implements MapDifference<K, V> {
        final boolean areEqual;
        final Map<K, V> onlyOnLeft;
        final Map<K, V> onlyOnRight;
        final Map<K, V> onBoth;
        final Map<K, MapDifference.ValueDifference<V>> differences;

        MapDifferenceImpl(boolean areEqual, Map<K, V> onlyOnLeft, Map<K, V> onlyOnRight, Map<K, V> onBoth, Map<K, MapDifference.ValueDifference<V>> differences) {
            this.areEqual = areEqual;
            this.onlyOnLeft = Collections.unmodifiableMap(onlyOnLeft);
            this.onlyOnRight = Collections.unmodifiableMap(onlyOnRight);
            this.onBoth = Collections.unmodifiableMap(onBoth);
            this.differences = Collections.unmodifiableMap(differences);
        }

        @Override
        public boolean areEqual() {
            return this.areEqual;
        }

        @Override
        public Map<K, V> entriesOnlyOnLeft() {
            return this.onlyOnLeft;
        }

        @Override
        public Map<K, V> entriesOnlyOnRight() {
            return this.onlyOnRight;
        }

        @Override
        public Map<K, V> entriesInCommon() {
            return this.onBoth;
        }

        @Override
        public Map<K, MapDifference.ValueDifference<V>> entriesDiffering() {
            return this.differences;
        }

        @Override
        public boolean equals(Object object) {
            if (object == this) {
                return true;
            }
            if (object instanceof MapDifference) {
                MapDifference other = (MapDifference)object;
                return ((Object)this.entriesOnlyOnLeft()).equals(other.entriesOnlyOnLeft()) && ((Object)this.entriesOnlyOnRight()).equals(other.entriesOnlyOnRight()) && ((Object)this.entriesInCommon()).equals(other.entriesInCommon()) && ((Object)this.entriesDiffering()).equals(other.entriesDiffering());
            }
            return false;
        }

        @Override
        public int hashCode() {
            return Objects.hashCode(this.entriesOnlyOnLeft(), this.entriesOnlyOnRight(), this.entriesInCommon(), this.entriesDiffering());
        }

        public String toString() {
            if (this.areEqual) {
                return "equal";
            }
            StringBuilder result = new StringBuilder("not equal");
            if (!this.onlyOnLeft.isEmpty()) {
                result.append(": only on left=").append(this.onlyOnLeft);
            }
            if (!this.onlyOnRight.isEmpty()) {
                result.append(": only on right=").append(this.onlyOnRight);
            }
            if (!this.differences.isEmpty()) {
                result.append(": value differences=").append(this.differences);
            }
            return result.toString();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class TransformedValuesMap<K, V1, V2>
    extends AbstractMap<K, V2> {
        final Map<K, V1> fromMap;
        final Function<? super V1, V2> function;
        EntrySet entrySet;

        TransformedValuesMap(Map<K, V1> fromMap, Function<? super V1, V2> function) {
            this.fromMap = Preconditions.checkNotNull(fromMap);
            this.function = Preconditions.checkNotNull(function);
        }

        @Override
        public int size() {
            return this.fromMap.size();
        }

        @Override
        public boolean containsKey(Object key) {
            return this.fromMap.containsKey(key);
        }

        @Override
        public V2 get(Object key) {
            V1 value = this.fromMap.get(key);
            return (V2)(value != null || this.fromMap.containsKey(key) ? this.function.apply(value) : null);
        }

        @Override
        public V2 remove(Object key) {
            return this.fromMap.containsKey(key) ? (V2)this.function.apply((V1)this.fromMap.remove(key)) : null;
        }

        @Override
        public void clear() {
            this.fromMap.clear();
        }

        @Override
        public Set<Map.Entry<K, V2>> entrySet() {
            EntrySet result = this.entrySet;
            if (result == null) {
                this.entrySet = result = new EntrySet();
            }
            return result;
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        class EntrySet
        extends AbstractSet<Map.Entry<K, V2>> {
            EntrySet() {
            }

            @Override
            public int size() {
                return TransformedValuesMap.this.size();
            }

            @Override
            public Iterator<Map.Entry<K, V2>> iterator() {
                final Iterator mapIterator = TransformedValuesMap.this.fromMap.entrySet().iterator();
                return new Iterator<Map.Entry<K, V2>>(){

                    @Override
                    public boolean hasNext() {
                        return mapIterator.hasNext();
                    }

                    @Override
                    public Map.Entry<K, V2> next() {
                        final Map.Entry entry = (Map.Entry)mapIterator.next();
                        return new AbstractMapEntry<K, V2>(){

                            @Override
                            public K getKey() {
                                return entry.getKey();
                            }

                            @Override
                            public V2 getValue() {
                                return TransformedValuesMap.this.function.apply(entry.getValue());
                            }
                        };
                    }

                    @Override
                    public void remove() {
                        mapIterator.remove();
                    }
                };
            }

            @Override
            public void clear() {
                TransformedValuesMap.this.fromMap.clear();
            }

            @Override
            public boolean contains(Object o) {
                if (!(o instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry)o;
                Object entryKey = entry.getKey();
                Object entryValue = entry.getValue();
                Object mapValue = TransformedValuesMap.this.get(entryKey);
                if (mapValue != null) {
                    return mapValue.equals(entryValue);
                }
                return entryValue == null && TransformedValuesMap.this.containsKey(entryKey);
            }

            @Override
            public boolean remove(Object o) {
                if (this.contains(o)) {
                    Map.Entry entry = (Map.Entry)o;
                    Object key = entry.getKey();
                    TransformedValuesMap.this.fromMap.remove(key);
                    return true;
                }
                return false;
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class UnmodifiableBiMap<K, V>
    extends ForwardingMap<K, V>
    implements BiMap<K, V>,
    Serializable {
        final Map<K, V> unmodifiableMap;
        final BiMap<? extends K, ? extends V> delegate;
        transient BiMap<V, K> inverse;
        transient Set<V> values;
        private static final long serialVersionUID = 0L;

        UnmodifiableBiMap(BiMap<? extends K, ? extends V> delegate, @Nullable BiMap<V, K> inverse) {
            this.unmodifiableMap = Collections.unmodifiableMap(delegate);
            this.delegate = delegate;
            this.inverse = inverse;
        }

        @Override
        protected Map<K, V> delegate() {
            return this.unmodifiableMap;
        }

        @Override
        public V forcePut(K key, V value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public BiMap<V, K> inverse() {
            BiMap<K, V> result = this.inverse;
            return result == null ? (this.inverse = new UnmodifiableBiMap<V, K>(this.delegate.inverse(), this)) : result;
        }

        @Override
        public Set<V> values() {
            Set<V> result = this.values;
            return result == null ? (this.values = Collections.unmodifiableSet(this.delegate.values())) : result;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class UnmodifiableEntries<K, V>
    extends ForwardingCollection<Map.Entry<K, V>> {
        private final Collection<Map.Entry<K, V>> entries;

        UnmodifiableEntries(Collection<Map.Entry<K, V>> entries) {
            this.entries = entries;
        }

        @Override
        protected Collection<Map.Entry<K, V>> delegate() {
            return this.entries;
        }

        @Override
        public Iterator<Map.Entry<K, V>> iterator() {
            final Iterator delegate = super.iterator();
            return new ForwardingIterator<Map.Entry<K, V>>(){

                @Override
                public Map.Entry<K, V> next() {
                    return Maps.unmodifiableEntry((Map.Entry)super.next());
                }

                @Override
                protected Iterator<Map.Entry<K, V>> delegate() {
                    return delegate;
                }
            };
        }

        @Override
        public Object[] toArray() {
            return ObjectArrays.toArrayImpl(this);
        }

        @Override
        public <T> T[] toArray(T[] array) {
            return ObjectArrays.toArrayImpl(this, array);
        }

        @Override
        public boolean contains(Object o) {
            return Maps.containsEntryImpl(this.delegate(), o);
        }

        @Override
        public boolean containsAll(Collection<?> c) {
            return Collections2.containsAll(this, c);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class UnmodifiableEntrySet<K, V>
    extends UnmodifiableEntries<K, V>
    implements Set<Map.Entry<K, V>> {
        UnmodifiableEntrySet(Set<Map.Entry<K, V>> entries) {
            super(entries);
        }

        @Override
        public boolean equals(@Nullable Object object) {
            return Collections2.setEquals(this, object);
        }

        @Override
        public int hashCode() {
            return Sets.hashCodeImpl(this);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class ValueDifferenceImpl<V>
    implements MapDifference.ValueDifference<V> {
        private final V left;
        private final V right;

        ValueDifferenceImpl(@Nullable V left, @Nullable V right) {
            this.left = left;
            this.right = right;
        }

        @Override
        public V leftValue() {
            return this.left;
        }

        @Override
        public V rightValue() {
            return this.right;
        }

        @Override
        public boolean equals(@Nullable Object object) {
            if (object instanceof MapDifference.ValueDifference) {
                MapDifference.ValueDifference that = (MapDifference.ValueDifference)object;
                return Objects.equal(this.left, that.leftValue()) && Objects.equal(this.right, that.rightValue());
            }
            return false;
        }

        @Override
        public int hashCode() {
            return Objects.hashCode(this.left, this.right);
        }

        public String toString() {
            return "(" + this.left + ", " + this.right + ")";
        }
    }
}

