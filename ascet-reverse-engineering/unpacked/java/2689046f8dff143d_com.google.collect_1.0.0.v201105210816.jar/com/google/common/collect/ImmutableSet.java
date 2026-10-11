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
import com.google.common.collect.Collections2;
import com.google.common.collect.EmptyImmutableSet;
import com.google.common.collect.Hashing;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableSortedSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.Lists;
import com.google.common.collect.ObjectArrays;
import com.google.common.collect.RegularImmutableSet;
import com.google.common.collect.SingletonImmutableSet;
import com.google.common.collect.UnmodifiableIterator;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible(serializable=true)
public abstract class ImmutableSet<E>
extends ImmutableCollection<E>
implements Set<E> {
    public static <E> ImmutableSet<E> of() {
        return EmptyImmutableSet.INSTANCE;
    }

    public static <E> ImmutableSet<E> of(E element) {
        return new SingletonImmutableSet<E>(element);
    }

    public static <E> ImmutableSet<E> of(E e1, E e2) {
        return ImmutableSet.create(e1, e2);
    }

    public static <E> ImmutableSet<E> of(E e1, E e2, E e3) {
        return ImmutableSet.create(e1, e2, e3);
    }

    public static <E> ImmutableSet<E> of(E e1, E e2, E e3, E e4) {
        return ImmutableSet.create(e1, e2, e3, e4);
    }

    public static <E> ImmutableSet<E> of(E e1, E e2, E e3, E e4, E e5) {
        return ImmutableSet.create(e1, e2, e3, e4, e5);
    }

    public static <E> ImmutableSet<E> of(E ... elements) {
        Preconditions.checkNotNull(elements);
        switch (elements.length) {
            case 0: {
                return ImmutableSet.of();
            }
            case 1: {
                return ImmutableSet.of(elements[0]);
            }
        }
        return ImmutableSet.create(elements);
    }

    public static <E> ImmutableSet<E> copyOf(Iterable<? extends E> elements) {
        if (elements instanceof ImmutableSet && !(elements instanceof ImmutableSortedSet)) {
            ImmutableSet set = (ImmutableSet)elements;
            return set;
        }
        return ImmutableSet.copyOfInternal(Collections2.toCollection(elements));
    }

    public static <E> ImmutableSet<E> copyOf(Iterator<? extends E> elements) {
        ArrayList<? extends E> list = Lists.newArrayList(elements);
        return ImmutableSet.copyOfInternal(list);
    }

    private static <E> ImmutableSet<E> copyOfInternal(Collection<? extends E> collection) {
        switch (collection.size()) {
            case 0: {
                return ImmutableSet.of();
            }
            case 1: {
                return ImmutableSet.of(collection.iterator().next());
            }
        }
        return ImmutableSet.create(collection, collection.size());
    }

    ImmutableSet() {
    }

    boolean isHashCodeFast() {
        return false;
    }

    @Override
    public boolean equals(@Nullable Object object) {
        if (object == this) {
            return true;
        }
        if (object instanceof ImmutableSet && this.isHashCodeFast() && ((ImmutableSet)object).isHashCodeFast() && this.hashCode() != object.hashCode()) {
            return false;
        }
        return Collections2.setEquals(this, object);
    }

    @Override
    public int hashCode() {
        int hashCode = 0;
        for (Object o : this) {
            hashCode += o.hashCode();
        }
        return hashCode;
    }

    @Override
    public abstract UnmodifiableIterator<E> iterator();

    private static <E> ImmutableSet<E> create(E ... elements) {
        return ImmutableSet.create(Arrays.asList(elements), elements.length);
    }

    private static <E> ImmutableSet<E> create(Iterable<? extends E> iterable, int count) {
        int tableSize = Hashing.chooseTableSize(count);
        Object[] table = new Object[tableSize];
        int mask = tableSize - 1;
        ArrayList<E> elements = new ArrayList<E>(count);
        int hashCode = 0;
        block0: for (E element : iterable) {
            Preconditions.checkNotNull(element);
            int hash = element.hashCode();
            int i = Hashing.smear(hash);
            while (true) {
                int index;
                Object value;
                if ((value = table[index = i & mask]) == null) {
                    table[index] = element;
                    elements.add(element);
                    hashCode += hash;
                    continue block0;
                }
                if (value.equals(element)) continue block0;
                ++i;
            }
        }
        if (elements.size() == 1) {
            return new SingletonImmutableSet(elements.get(0), hashCode);
        }
        if (tableSize > Hashing.chooseTableSize(elements.size())) {
            return ImmutableSet.create(elements, elements.size());
        }
        return new RegularImmutableSet(elements.toArray(), hashCode, table, mask);
    }

    @Override
    Object writeReplace() {
        return new SerializedForm(this.toArray());
    }

    public static <E> Builder<E> builder() {
        return new Builder();
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static abstract class ArrayImmutableSet<E>
    extends ImmutableSet<E> {
        final transient Object[] elements;

        ArrayImmutableSet(Object[] elements) {
            this.elements = elements;
        }

        @Override
        public int size() {
            return this.elements.length;
        }

        @Override
        public boolean isEmpty() {
            return false;
        }

        @Override
        public UnmodifiableIterator<E> iterator() {
            return Iterators.forArray(this.elements);
        }

        @Override
        public Object[] toArray() {
            Object[] array = new Object[this.size()];
            System.arraycopy(this.elements, 0, array, 0, this.size());
            return array;
        }

        @Override
        public <T> T[] toArray(T[] array) {
            int size = this.size();
            if (array.length < size) {
                array = ObjectArrays.newArray(array, size);
            } else if (array.length > size) {
                array[size] = null;
            }
            System.arraycopy(this.elements, 0, array, 0, size);
            return array;
        }

        @Override
        public boolean containsAll(Collection<?> targets) {
            if (targets == this) {
                return true;
            }
            if (!(targets instanceof ArrayImmutableSet)) {
                return super.containsAll(targets);
            }
            if (targets.size() > this.size()) {
                return false;
            }
            for (Object target : ((ArrayImmutableSet)targets).elements) {
                if (this.contains(target)) continue;
                return false;
            }
            return true;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class Builder<E>
    extends ImmutableCollection.Builder<E> {
        final ArrayList<E> contents = Lists.newArrayList();

        @Override
        public Builder<E> add(E element) {
            this.contents.add(Preconditions.checkNotNull(element));
            return this;
        }

        @Override
        public Builder<E> add(E ... elements) {
            Preconditions.checkNotNull(elements);
            this.contents.ensureCapacity(this.contents.size() + elements.length);
            super.add(elements);
            return this;
        }

        @Override
        public Builder<E> addAll(Iterable<? extends E> elements) {
            if (elements instanceof Collection) {
                Collection collection = (Collection)elements;
                this.contents.ensureCapacity(this.contents.size() + collection.size());
            }
            super.addAll(elements);
            return this;
        }

        @Override
        public Builder<E> addAll(Iterator<? extends E> elements) {
            super.addAll(elements);
            return this;
        }

        @Override
        public ImmutableSet<E> build() {
            return ImmutableSet.copyOf(this.contents);
        }
    }

    private static class SerializedForm
    implements Serializable {
        final Object[] elements;
        private static final long serialVersionUID = 0L;

        SerializedForm(Object[] elements) {
            this.elements = elements;
        }

        Object readResolve() {
            return ImmutableSet.of(this.elements);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static abstract class TransformedImmutableSet<D, E>
    extends ImmutableSet<E> {
        final D[] source;
        final int hashCode;

        TransformedImmutableSet(D[] source, int hashCode) {
            this.source = source;
            this.hashCode = hashCode;
        }

        abstract E transform(D var1);

        @Override
        public int size() {
            return this.source.length;
        }

        @Override
        public boolean isEmpty() {
            return false;
        }

        @Override
        public UnmodifiableIterator<E> iterator() {
            return new AbstractIterator<E>(){
                int index = 0;

                @Override
                protected E computeNext() {
                    return this.index < TransformedImmutableSet.this.source.length ? TransformedImmutableSet.this.transform(TransformedImmutableSet.this.source[this.index++]) : this.endOfData();
                }
            };
        }

        @Override
        public Object[] toArray() {
            return this.toArray(new Object[this.size()]);
        }

        @Override
        public <T> T[] toArray(T[] array) {
            int size = this.size();
            if (array.length < size) {
                array = ObjectArrays.newArray(array, size);
            } else if (array.length > size) {
                array[size] = null;
            }
            T[] objectArray = array;
            for (int i = 0; i < this.source.length; ++i) {
                objectArray[i] = this.transform(this.source[i]);
            }
            return array;
        }

        @Override
        public final int hashCode() {
            return this.hashCode;
        }

        @Override
        boolean isHashCodeFast() {
            return true;
        }
    }
}

