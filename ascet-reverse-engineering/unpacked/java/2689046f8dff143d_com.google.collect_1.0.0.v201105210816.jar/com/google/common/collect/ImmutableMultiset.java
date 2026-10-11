/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.EmptyImmutableMultiset;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.LinkedHashMultiset;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.collect.Serialization;
import com.google.common.collect.UnmodifiableIterator;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible(serializable=true)
public class ImmutableMultiset<E>
extends ImmutableCollection<E>
implements Multiset<E> {
    private final transient ImmutableMap<E, Integer> map;
    private final transient int size;
    private transient ImmutableSet<Multiset.Entry<E>> entrySet;
    private static final long serialVersionUID = 0L;

    public static <E> ImmutableMultiset<E> of() {
        return EmptyImmutableMultiset.INSTANCE;
    }

    public static <E> ImmutableMultiset<E> of(E ... elements) {
        return ImmutableMultiset.copyOf(Arrays.asList(elements));
    }

    public static <E> ImmutableMultiset<E> copyOf(Iterable<? extends E> elements) {
        if (elements instanceof ImmutableMultiset) {
            ImmutableMultiset result = (ImmutableMultiset)elements;
            return result;
        }
        LinkedHashMultiset<? extends E> multiset = elements instanceof Multiset ? (LinkedHashMultiset<? extends E>)elements : LinkedHashMultiset.create(elements);
        return ImmutableMultiset.copyOfInternal(multiset);
    }

    private static <E> ImmutableMultiset<E> copyOfInternal(Multiset<? extends E> multiset) {
        long size = 0L;
        ImmutableMap.Builder<E, Integer> builder = ImmutableMap.builder();
        for (Multiset.Entry<E> entry : multiset.entrySet()) {
            int count = entry.getCount();
            if (count <= 0) continue;
            builder.put(entry.getElement(), count);
            size += (long)count;
        }
        if (size == 0L) {
            return ImmutableMultiset.of();
        }
        return new ImmutableMultiset(builder.build(), (int)Math.min(size, Integer.MAX_VALUE));
    }

    public static <E> ImmutableMultiset<E> copyOf(Iterator<? extends E> elements) {
        LinkedHashMultiset multiset = LinkedHashMultiset.create();
        Iterators.addAll(multiset, elements);
        return ImmutableMultiset.copyOfInternal(multiset);
    }

    ImmutableMultiset(ImmutableMap<E, Integer> map, int size) {
        this.map = map;
        this.size = size;
    }

    @Override
    public int count(@Nullable Object element) {
        Integer value = this.map.get(element);
        return value == null ? 0 : value;
    }

    @Override
    public UnmodifiableIterator<E> iterator() {
        final Iterator mapIterator = ((ImmutableSet)this.map.entrySet()).iterator();
        return new UnmodifiableIterator<E>(){
            int remaining;
            E element;

            @Override
            public boolean hasNext() {
                return this.remaining > 0 || mapIterator.hasNext();
            }

            @Override
            public E next() {
                if (this.remaining <= 0) {
                    Map.Entry entry = (Map.Entry)mapIterator.next();
                    this.element = entry.getKey();
                    this.remaining = (Integer)entry.getValue();
                }
                --this.remaining;
                return this.element;
            }
        };
    }

    @Override
    public int size() {
        return this.size;
    }

    @Override
    public boolean contains(@Nullable Object element) {
        return this.map.containsKey(element);
    }

    @Override
    public int add(E element, int occurrences) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int remove(Object element, int occurrences) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int setCount(E element, int count) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean setCount(E element, int oldCount, int newCount) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean equals(@Nullable Object object) {
        if (object == this) {
            return true;
        }
        if (object instanceof Multiset) {
            Multiset that = (Multiset)object;
            if (this.size() != that.size()) {
                return false;
            }
            for (Multiset.Entry entry : that.entrySet()) {
                if (this.count(entry.getElement()) == entry.getCount()) continue;
                return false;
            }
            return true;
        }
        return false;
    }

    @Override
    public int hashCode() {
        return this.map.hashCode();
    }

    @Override
    public String toString() {
        return this.entrySet().toString();
    }

    @Override
    public Set<E> elementSet() {
        return this.map.keySet();
    }

    @Override
    public Set<Multiset.Entry<E>> entrySet() {
        ImmutableSet<Multiset.Entry<Multiset.Entry<E>>> es = this.entrySet;
        return es == null ? (this.entrySet = new EntrySet(this)) : es;
    }

    private void writeObject(ObjectOutputStream stream) throws IOException {
        stream.defaultWriteObject();
        Serialization.writeMultiset(this, stream);
    }

    private void readObject(ObjectInputStream stream) throws IOException, ClassNotFoundException {
        stream.defaultReadObject();
        int entryCount = stream.readInt();
        ImmutableMap.Builder<Object, Integer> builder = ImmutableMap.builder();
        long tmpSize = 0L;
        for (int i = 0; i < entryCount; ++i) {
            Object element = stream.readObject();
            int count = stream.readInt();
            if (count <= 0) {
                throw new InvalidObjectException("Invalid count " + count);
            }
            builder.put(element, count);
            tmpSize += (long)count;
        }
        FieldSettersHolder.MAP_FIELD_SETTER.set(this, builder.build());
        FieldSettersHolder.SIZE_FIELD_SETTER.set(this, (int)Math.min(tmpSize, Integer.MAX_VALUE));
    }

    @Override
    Object writeReplace() {
        return this;
    }

    public static <E> Builder<E> builder() {
        return new Builder();
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static final class Builder<E>
    extends ImmutableCollection.Builder<E> {
        private final Multiset<E> contents = LinkedHashMultiset.create();

        @Override
        public Builder<E> add(E element) {
            this.contents.add(Preconditions.checkNotNull(element));
            return this;
        }

        public Builder<E> addCopies(E element, int occurrences) {
            this.contents.add(Preconditions.checkNotNull(element), occurrences);
            return this;
        }

        public Builder<E> setCount(E element, int count) {
            this.contents.setCount(Preconditions.checkNotNull(element), count);
            return this;
        }

        @Override
        public Builder<E> add(E ... elements) {
            super.add(elements);
            return this;
        }

        @Override
        public Builder<E> addAll(Iterable<? extends E> elements) {
            if (elements instanceof Multiset) {
                Multiset multiset = (Multiset)elements;
                for (Multiset.Entry entry : multiset.entrySet()) {
                    this.addCopies(entry.getElement(), entry.getCount());
                }
            } else {
                super.addAll(elements);
            }
            return this;
        }

        @Override
        public Builder<E> addAll(Iterator<? extends E> elements) {
            super.addAll(elements);
            return this;
        }

        @Override
        public ImmutableMultiset<E> build() {
            return ImmutableMultiset.copyOf(this.contents);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class EntrySet<E>
    extends ImmutableSet<Multiset.Entry<E>> {
        final ImmutableMultiset<E> multiset;
        private static final long serialVersionUID = 0L;

        public EntrySet(ImmutableMultiset<E> multiset) {
            this.multiset = multiset;
        }

        @Override
        public UnmodifiableIterator<Multiset.Entry<E>> iterator() {
            final Iterator mapIterator = ((ImmutableSet)((ImmutableMultiset)this.multiset).map.entrySet()).iterator();
            return new UnmodifiableIterator<Multiset.Entry<E>>(){

                @Override
                public boolean hasNext() {
                    return mapIterator.hasNext();
                }

                @Override
                public Multiset.Entry<E> next() {
                    Map.Entry mapEntry = (Map.Entry)mapIterator.next();
                    return Multisets.immutableEntry(mapEntry.getKey(), (Integer)mapEntry.getValue());
                }
            };
        }

        @Override
        public int size() {
            return ((ImmutableMultiset)this.multiset).map.size();
        }

        @Override
        public boolean contains(Object o) {
            if (o instanceof Multiset.Entry) {
                Multiset.Entry entry = (Multiset.Entry)o;
                if (entry.getCount() <= 0) {
                    return false;
                }
                int count = this.multiset.count(entry.getElement());
                return count == entry.getCount();
            }
            return false;
        }

        @Override
        public int hashCode() {
            return ((ImmutableMultiset)this.multiset).map.hashCode();
        }

        @Override
        Object writeReplace() {
            return this;
        }
    }

    private static class FieldSettersHolder {
        static final Serialization.FieldSetter<ImmutableMultiset> MAP_FIELD_SETTER = Serialization.getFieldSetter(ImmutableMultiset.class, "map");
        static final Serialization.FieldSetter<ImmutableMultiset> SIZE_FIELD_SETTER = Serialization.getFieldSetter(ImmutableMultiset.class, "size");

        private FieldSettersHolder() {
        }
    }
}

