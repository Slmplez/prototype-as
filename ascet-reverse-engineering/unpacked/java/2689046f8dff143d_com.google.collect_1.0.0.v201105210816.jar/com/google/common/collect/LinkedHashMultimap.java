/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractSetMultimap;
import com.google.common.collect.ForwardingSet;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimap;
import com.google.common.collect.Serialization;
import com.google.common.collect.Sets;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible(serializable=true)
public final class LinkedHashMultimap<K, V>
extends AbstractSetMultimap<K, V> {
    private static final int DEFAULT_VALUES_PER_KEY = 8;
    @VisibleForTesting
    transient int expectedValuesPerKey = 8;
    transient Collection<Map.Entry<K, V>> linkedEntries;
    private static final long serialVersionUID = 0L;

    public static <K, V> LinkedHashMultimap<K, V> create() {
        return new LinkedHashMultimap<K, V>();
    }

    public static <K, V> LinkedHashMultimap<K, V> create(int expectedKeys, int expectedValuesPerKey) {
        return new LinkedHashMultimap<K, V>(expectedKeys, expectedValuesPerKey);
    }

    public static <K, V> LinkedHashMultimap<K, V> create(Multimap<? extends K, ? extends V> multimap) {
        return new LinkedHashMultimap<K, V>(multimap);
    }

    private LinkedHashMultimap() {
        super(new LinkedHashMap());
        this.linkedEntries = Sets.newLinkedHashSet();
    }

    private LinkedHashMultimap(int expectedKeys, int expectedValuesPerKey) {
        super(new LinkedHashMap(expectedKeys));
        Preconditions.checkArgument(expectedValuesPerKey >= 0);
        this.expectedValuesPerKey = expectedValuesPerKey;
        this.linkedEntries = new LinkedHashSet<Map.Entry<K, V>>(expectedKeys * expectedValuesPerKey);
    }

    private LinkedHashMultimap(Multimap<? extends K, ? extends V> multimap) {
        super(new LinkedHashMap(Maps.capacity(multimap.keySet().size())));
        this.linkedEntries = new LinkedHashSet<Map.Entry<K, V>>(Maps.capacity(multimap.size()));
        this.putAll(multimap);
    }

    @Override
    Set<V> createCollection() {
        return new LinkedHashSet(Maps.capacity(this.expectedValuesPerKey));
    }

    @Override
    Collection<V> createCollection(@Nullable K key) {
        return new SetDecorator(key, this.createCollection());
    }

    @Override
    Iterator<Map.Entry<K, V>> createEntryIterator() {
        final Iterator<Map.Entry<K, V>> delegateIterator = this.linkedEntries.iterator();
        return new Iterator<Map.Entry<K, V>>(){
            Map.Entry<K, V> entry;

            @Override
            public boolean hasNext() {
                return delegateIterator.hasNext();
            }

            @Override
            public Map.Entry<K, V> next() {
                this.entry = (Map.Entry)delegateIterator.next();
                return this.entry;
            }

            @Override
            public void remove() {
                delegateIterator.remove();
                LinkedHashMultimap.this.remove(this.entry.getKey(), this.entry.getValue());
            }
        };
    }

    @Override
    public Set<V> replaceValues(@Nullable K key, Iterable<? extends V> values) {
        return super.replaceValues((Object)key, (Iterable)values);
    }

    @Override
    public Set<Map.Entry<K, V>> entries() {
        return super.entries();
    }

    @Override
    public Collection<V> values() {
        return super.values();
    }

    private void writeObject(ObjectOutputStream stream) throws IOException {
        stream.defaultWriteObject();
        stream.writeInt(this.expectedValuesPerKey);
        Serialization.writeMultimap(this, stream);
        for (Map.Entry<K, V> entry : this.linkedEntries) {
            stream.writeObject(entry.getKey());
            stream.writeObject(entry.getValue());
        }
    }

    private void readObject(ObjectInputStream stream) throws IOException, ClassNotFoundException {
        stream.defaultReadObject();
        this.expectedValuesPerKey = stream.readInt();
        int distinctKeys = Serialization.readCount(stream);
        this.setMap(new LinkedHashMap(Maps.capacity(distinctKeys)));
        this.linkedEntries = new LinkedHashSet<Map.Entry<K, V>>(distinctKeys * this.expectedValuesPerKey);
        Serialization.populateMultimap(this, stream, distinctKeys);
        this.linkedEntries.clear();
        for (int i = 0; i < this.size(); ++i) {
            Object key = stream.readObject();
            Object value = stream.readObject();
            this.linkedEntries.add(Maps.immutableEntry(key, value));
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class SetDecorator
    extends ForwardingSet<V> {
        final Set<V> delegate;
        final K key;

        SetDecorator(K key, Set<V> delegate) {
            this.delegate = delegate;
            this.key = key;
        }

        @Override
        protected Set<V> delegate() {
            return this.delegate;
        }

        <E> Map.Entry<K, E> createEntry(@Nullable E value) {
            return Maps.immutableEntry(this.key, value);
        }

        <E> Collection<Map.Entry<K, E>> createEntries(Collection<E> values) {
            ArrayList entries = Lists.newArrayListWithExpectedSize(values.size());
            for (E value : values) {
                entries.add(this.createEntry(value));
            }
            return entries;
        }

        @Override
        public boolean add(@Nullable V value) {
            boolean changed = this.delegate.add(value);
            if (changed) {
                LinkedHashMultimap.this.linkedEntries.add(this.createEntry(value));
            }
            return changed;
        }

        @Override
        public boolean addAll(Collection<? extends V> values) {
            boolean changed = this.delegate.addAll(values);
            if (changed) {
                LinkedHashMultimap.this.linkedEntries.addAll(this.createEntries(this.delegate()));
            }
            return changed;
        }

        @Override
        public void clear() {
            LinkedHashMultimap.this.linkedEntries.removeAll(this.createEntries(this.delegate()));
            this.delegate.clear();
        }

        @Override
        public Iterator<V> iterator() {
            final Iterator delegateIterator = this.delegate.iterator();
            return new Iterator<V>(){
                V value;

                @Override
                public boolean hasNext() {
                    return delegateIterator.hasNext();
                }

                @Override
                public V next() {
                    this.value = delegateIterator.next();
                    return this.value;
                }

                @Override
                public void remove() {
                    delegateIterator.remove();
                    LinkedHashMultimap.this.linkedEntries.remove(SetDecorator.this.createEntry(this.value));
                }
            };
        }

        @Override
        public boolean remove(@Nullable Object value) {
            boolean changed = this.delegate.remove(value);
            if (changed) {
                LinkedHashMultimap.this.linkedEntries.remove(this.createEntry(value));
            }
            return changed;
        }

        @Override
        public boolean removeAll(Collection<?> values) {
            boolean changed = this.delegate.removeAll(values);
            if (changed) {
                LinkedHashMultimap.this.linkedEntries.removeAll(this.createEntries(values));
            }
            return changed;
        }

        @Override
        public boolean retainAll(Collection<?> values) {
            boolean changed = false;
            Iterator iterator = this.delegate.iterator();
            while (iterator.hasNext()) {
                Object value = iterator.next();
                if (values.contains(value)) continue;
                iterator.remove();
                LinkedHashMultimap.this.linkedEntries.remove(Maps.immutableEntry(this.key, value));
                changed = true;
            }
            return changed;
        }
    }
}

