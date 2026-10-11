/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Collections2;
import com.google.common.collect.ForwardingCollection;
import com.google.common.collect.ForwardingIterator;
import com.google.common.collect.ForwardingMap;
import com.google.common.collect.ForwardingMapEntry;
import com.google.common.collect.Iterators;
import com.google.common.collect.MapConstraint;
import com.google.common.collect.Maps;
import com.google.common.collect.ObjectArrays;
import com.google.common.collect.Sets;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible
class ConstrainedMap<K, V>
extends ForwardingMap<K, V> {
    final Map<K, V> delegate;
    final MapConstraint<? super K, ? super V> constraint;
    private volatile Set<Map.Entry<K, V>> entrySet;

    ConstrainedMap(Map<K, V> delegate, MapConstraint<? super K, ? super V> constraint) {
        this.delegate = Preconditions.checkNotNull(delegate);
        this.constraint = Preconditions.checkNotNull(constraint);
    }

    @Override
    protected Map<K, V> delegate() {
        return this.delegate;
    }

    @Override
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.entrySet == null) {
            this.entrySet = ConstrainedMap.constrainedEntrySet(this.delegate.entrySet(), this.constraint);
        }
        return this.entrySet;
    }

    @Override
    public V put(K key, V value) {
        this.constraint.checkKeyValue(key, value);
        return this.delegate.put(key, value);
    }

    @Override
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.put(entry.getKey(), entry.getValue());
        }
    }

    private static <K, V> Map.Entry<K, V> constrainedEntry(final Map.Entry<K, V> entry, final MapConstraint<? super K, ? super V> constraint) {
        Preconditions.checkNotNull(entry);
        Preconditions.checkNotNull(constraint);
        return new ForwardingMapEntry<K, V>(){

            @Override
            protected Map.Entry<K, V> delegate() {
                return entry;
            }

            @Override
            public V setValue(V value) {
                constraint.checkKeyValue(this.getKey(), value);
                return entry.setValue(value);
            }
        };
    }

    private static <K, V> Set<Map.Entry<K, V>> constrainedEntrySet(Set<Map.Entry<K, V>> entries, MapConstraint<? super K, ? super V> constraint) {
        return new ConstrainedEntrySet<K, V>(entries, constraint);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class ConstrainedEntries<K, V>
    extends ForwardingCollection<Map.Entry<K, V>> {
        final MapConstraint<? super K, ? super V> constraint;
        final Collection<Map.Entry<K, V>> entries;

        ConstrainedEntries(Collection<Map.Entry<K, V>> entries, MapConstraint<? super K, ? super V> constraint) {
            this.entries = entries;
            this.constraint = constraint;
        }

        @Override
        protected Collection<Map.Entry<K, V>> delegate() {
            return this.entries;
        }

        @Override
        public Iterator<Map.Entry<K, V>> iterator() {
            final Iterator<Map.Entry<K, V>> iterator = this.entries.iterator();
            return new ForwardingIterator<Map.Entry<K, V>>(){

                @Override
                public Map.Entry<K, V> next() {
                    return ConstrainedMap.constrainedEntry((Map.Entry)iterator.next(), ConstrainedEntries.this.constraint);
                }

                @Override
                protected Iterator<Map.Entry<K, V>> delegate() {
                    return iterator;
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

        @Override
        public boolean remove(Object o) {
            return Maps.removeEntryImpl(this.delegate(), o);
        }

        @Override
        public boolean removeAll(Collection<?> c) {
            return Iterators.removeAll(this.iterator(), c);
        }

        @Override
        public boolean retainAll(Collection<?> c) {
            return Iterators.retainAll(this.iterator(), c);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class ConstrainedEntrySet<K, V>
    extends ConstrainedEntries<K, V>
    implements Set<Map.Entry<K, V>> {
        ConstrainedEntrySet(Set<Map.Entry<K, V>> entries, MapConstraint<? super K, ? super V> constraint) {
            super(entries, constraint);
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
}

