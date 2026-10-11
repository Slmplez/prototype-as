/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractMultiset;
import com.google.common.collect.ForwardingSet;
import com.google.common.collect.HashMultiset;
import com.google.common.collect.Iterables;
import com.google.common.collect.Lists;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.collect.Serialization;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class ConcurrentHashMultiset<E>
extends AbstractMultiset<E>
implements Serializable {
    private final transient ConcurrentMap<E, Integer> countMap;
    private transient EntrySet entrySet;
    private static final long serialVersionUID = 0L;

    public static <E> ConcurrentHashMultiset<E> create() {
        return new ConcurrentHashMultiset(new ConcurrentHashMap());
    }

    public static <E> ConcurrentHashMultiset<E> create(Iterable<? extends E> elements) {
        ConcurrentHashMultiset<E> multiset = ConcurrentHashMultiset.create();
        Iterables.addAll(multiset, elements);
        return multiset;
    }

    @VisibleForTesting
    ConcurrentHashMultiset(ConcurrentMap<E, Integer> countMap) {
        Preconditions.checkArgument(countMap.isEmpty());
        this.countMap = countMap;
    }

    @Override
    public int count(@Nullable Object element) {
        try {
            return ConcurrentHashMultiset.unbox((Integer)this.countMap.get(element));
        }
        catch (NullPointerException e) {
            return 0;
        }
        catch (ClassCastException e) {
            return 0;
        }
    }

    @Override
    public int size() {
        long sum = 0L;
        for (Integer value : this.countMap.values()) {
            sum += (long)value.intValue();
        }
        return (int)Math.min(sum, Integer.MAX_VALUE);
    }

    @Override
    public Object[] toArray() {
        return this.snapshot().toArray();
    }

    @Override
    public <T> T[] toArray(T[] array) {
        return this.snapshot().toArray(array);
    }

    private List<E> snapshot() {
        ArrayList<E> list = Lists.newArrayListWithExpectedSize(this.size());
        for (Multiset.Entry<E> entry : this.entrySet()) {
            E element = entry.getElement();
            for (int i = entry.getCount(); i > 0; --i) {
                list.add(element);
            }
        }
        return list;
    }

    @Override
    public int add(E element, int occurrences) {
        int current;
        if (occurrences == 0) {
            return this.count(element);
        }
        Preconditions.checkArgument(occurrences > 0, "Invalid occurrences: %s", occurrences);
        while (true) {
            if ((current = this.count(element)) == 0) {
                if (this.countMap.putIfAbsent(element, occurrences) != null) continue;
                return 0;
            }
            Preconditions.checkArgument(occurrences <= Integer.MAX_VALUE - current, "Overflow adding %s occurrences to a count of %s", occurrences, current);
            int next = current + occurrences;
            if (this.countMap.replace(element, current, next)) break;
        }
        return current;
    }

    @Override
    public int remove(@Nullable Object element, int occurrences) {
        Object casted;
        int current;
        if (occurrences == 0) {
            return this.count(element);
        }
        Preconditions.checkArgument(occurrences > 0, "Invalid occurrences: %s", occurrences);
        do {
            if ((current = this.count(element)) != 0) continue;
            return 0;
        } while (!(occurrences >= current ? this.countMap.remove(element, current) : this.countMap.replace(casted = element, current, current - occurrences)));
        return current;
    }

    private int removeAllOccurrences(@Nullable Object element) {
        try {
            return ConcurrentHashMultiset.unbox((Integer)this.countMap.remove(element));
        }
        catch (NullPointerException e) {
            return 0;
        }
        catch (ClassCastException e) {
            return 0;
        }
    }

    public boolean removeExactly(@Nullable Object element, int occurrences) {
        Object casted;
        int current;
        if (occurrences == 0) {
            return true;
        }
        Preconditions.checkArgument(occurrences > 0, "Invalid occurrences: %s", occurrences);
        do {
            if (occurrences <= (current = this.count(element))) continue;
            return false;
        } while (!(occurrences == current ? this.countMap.remove(element, occurrences) : this.countMap.replace(casted = element, current, current - occurrences)));
        return true;
    }

    @Override
    public int setCount(E element, int count) {
        Multisets.checkNonnegative(count, "count");
        return count == 0 ? this.removeAllOccurrences(element) : ConcurrentHashMultiset.unbox(this.countMap.put(element, count));
    }

    @Override
    public boolean setCount(E element, int oldCount, int newCount) {
        Multisets.checkNonnegative(oldCount, "oldCount");
        Multisets.checkNonnegative(newCount, "newCount");
        if (newCount == 0) {
            if (oldCount == 0) {
                return !this.countMap.containsKey(element);
            }
            return this.countMap.remove(element, oldCount);
        }
        if (oldCount == 0) {
            return this.countMap.putIfAbsent(element, newCount) == null;
        }
        return this.countMap.replace(element, oldCount, newCount);
    }

    @Override
    Set<E> createElementSet() {
        final Set delegate = this.countMap.keySet();
        return new ForwardingSet<E>(){

            @Override
            protected Set<E> delegate() {
                return delegate;
            }

            @Override
            public boolean remove(Object object) {
                try {
                    return delegate.remove(object);
                }
                catch (NullPointerException e) {
                    return false;
                }
                catch (ClassCastException e) {
                    return false;
                }
            }
        };
    }

    @Override
    public Set<Multiset.Entry<E>> entrySet() {
        EntrySet result = this.entrySet;
        if (result == null) {
            this.entrySet = result = new EntrySet();
        }
        return result;
    }

    private static int unbox(Integer i) {
        return i == null ? 0 : i;
    }

    private void writeObject(ObjectOutputStream stream) throws IOException {
        stream.defaultWriteObject();
        Serialization.writeMultiset(HashMultiset.create(this), stream);
    }

    private void readObject(ObjectInputStream stream) throws IOException, ClassNotFoundException {
        stream.defaultReadObject();
        FieldSettersHolder.COUNT_MAP_FIELD_SETTER.set(this, new ConcurrentHashMap());
        Serialization.populateMultiset(this, stream);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class EntrySet
    extends AbstractSet<Multiset.Entry<E>> {
        private EntrySet() {
        }

        @Override
        public int size() {
            return ConcurrentHashMultiset.this.countMap.size();
        }

        @Override
        public boolean isEmpty() {
            return ConcurrentHashMultiset.this.countMap.isEmpty();
        }

        @Override
        public boolean contains(Object object) {
            if (object instanceof Multiset.Entry) {
                Multiset.Entry entry = (Multiset.Entry)object;
                Object element = entry.getElement();
                int entryCount = entry.getCount();
                return entryCount > 0 && ConcurrentHashMultiset.this.count(element) == entryCount;
            }
            return false;
        }

        @Override
        public Iterator<Multiset.Entry<E>> iterator() {
            final Iterator backingIterator = ConcurrentHashMultiset.this.countMap.entrySet().iterator();
            return new Iterator<Multiset.Entry<E>>(){

                @Override
                public boolean hasNext() {
                    return backingIterator.hasNext();
                }

                @Override
                public Multiset.Entry<E> next() {
                    Map.Entry backingEntry = (Map.Entry)backingIterator.next();
                    return Multisets.immutableEntry(backingEntry.getKey(), (Integer)backingEntry.getValue());
                }

                @Override
                public void remove() {
                    backingIterator.remove();
                }
            };
        }

        @Override
        public Object[] toArray() {
            return this.snapshot().toArray();
        }

        @Override
        public <T> T[] toArray(T[] array) {
            return this.snapshot().toArray(array);
        }

        private List<Multiset.Entry<E>> snapshot() {
            ArrayList list = Lists.newArrayListWithExpectedSize(this.size());
            for (Multiset.Entry entry : this) {
                list.add(entry);
            }
            return list;
        }

        @Override
        public boolean remove(Object object) {
            if (object instanceof Multiset.Entry) {
                Multiset.Entry entry = (Multiset.Entry)object;
                Object element = entry.getElement();
                int entryCount = entry.getCount();
                return ConcurrentHashMultiset.this.countMap.remove(element, entryCount);
            }
            return false;
        }

        @Override
        public void clear() {
            ConcurrentHashMultiset.this.countMap.clear();
        }

        @Override
        public int hashCode() {
            return ConcurrentHashMultiset.this.countMap.hashCode();
        }
    }

    private static class FieldSettersHolder {
        static final Serialization.FieldSetter<ConcurrentHashMultiset> COUNT_MAP_FIELD_SETTER = Serialization.getFieldSetter(ConcurrentHashMultiset.class, "countMap");

        private FieldSettersHolder() {
        }
    }
}

