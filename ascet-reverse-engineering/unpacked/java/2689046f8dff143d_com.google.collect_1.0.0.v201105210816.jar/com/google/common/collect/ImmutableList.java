/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.EmptyImmutableList;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.Lists;
import com.google.common.collect.RegularImmutableList;
import com.google.common.collect.SingletonImmutableList;
import com.google.common.collect.UnmodifiableIterator;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible(serializable=true)
public abstract class ImmutableList<E>
extends ImmutableCollection<E>
implements List<E>,
RandomAccess {
    public static <E> ImmutableList<E> of() {
        return EmptyImmutableList.INSTANCE;
    }

    public static <E> ImmutableList<E> of(E element) {
        return new SingletonImmutableList<E>(element);
    }

    public static <E> ImmutableList<E> of(E e1, E e2) {
        return new RegularImmutableList(ImmutableList.copyIntoArray(e1, e2));
    }

    public static <E> ImmutableList<E> of(E e1, E e2, E e3) {
        return new RegularImmutableList(ImmutableList.copyIntoArray(e1, e2, e3));
    }

    public static <E> ImmutableList<E> of(E e1, E e2, E e3, E e4) {
        return new RegularImmutableList(ImmutableList.copyIntoArray(e1, e2, e3, e4));
    }

    public static <E> ImmutableList<E> of(E e1, E e2, E e3, E e4, E e5) {
        return new RegularImmutableList(ImmutableList.copyIntoArray(e1, e2, e3, e4, e5));
    }

    public static <E> ImmutableList<E> of(E e1, E e2, E e3, E e4, E e5, E e6) {
        return new RegularImmutableList(ImmutableList.copyIntoArray(e1, e2, e3, e4, e5, e6));
    }

    public static <E> ImmutableList<E> of(E e1, E e2, E e3, E e4, E e5, E e6, E e7) {
        return new RegularImmutableList(ImmutableList.copyIntoArray(e1, e2, e3, e4, e5, e6, e7));
    }

    public static <E> ImmutableList<E> of(E e1, E e2, E e3, E e4, E e5, E e6, E e7, E e8) {
        return new RegularImmutableList(ImmutableList.copyIntoArray(e1, e2, e3, e4, e5, e6, e7, e8));
    }

    public static <E> ImmutableList<E> of(E e1, E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9) {
        return new RegularImmutableList(ImmutableList.copyIntoArray(e1, e2, e3, e4, e5, e6, e7, e8, e9));
    }

    public static <E> ImmutableList<E> of(E e1, E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9, E e10) {
        return new RegularImmutableList(ImmutableList.copyIntoArray(e1, e2, e3, e4, e5, e6, e7, e8, e9, e10));
    }

    public static <E> ImmutableList<E> of(E e1, E e2, E e3, E e4, E e5, E e6, E e7, E e8, E e9, E e10, E e11) {
        return new RegularImmutableList(ImmutableList.copyIntoArray(e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11));
    }

    public static <E> ImmutableList<E> of(E ... elements) {
        Preconditions.checkNotNull(elements);
        switch (elements.length) {
            case 0: {
                return ImmutableList.of();
            }
            case 1: {
                return new SingletonImmutableList<E>(elements[0]);
            }
        }
        return new RegularImmutableList(ImmutableList.copyIntoArray(elements));
    }

    public static <E> ImmutableList<E> copyOf(Iterable<? extends E> elements) {
        if (elements instanceof ImmutableList) {
            ImmutableList list = (ImmutableList)elements;
            return list;
        }
        if (elements instanceof Collection) {
            Collection coll = (Collection)elements;
            return ImmutableList.copyOfInternal(coll);
        }
        return ImmutableList.copyOfInternal(Lists.newArrayList(elements));
    }

    public static <E> ImmutableList<E> copyOf(Iterator<? extends E> elements) {
        return ImmutableList.copyOfInternal(Lists.newArrayList(elements));
    }

    private static <E> ImmutableList<E> copyOfInternal(ArrayList<? extends E> list) {
        switch (list.size()) {
            case 0: {
                return ImmutableList.of();
            }
            case 1: {
                return new SingletonImmutableList<E>(list.iterator().next());
            }
        }
        return new RegularImmutableList(ImmutableList.nullChecked(list.toArray()));
    }

    private static Object[] nullChecked(Object[] array) {
        int len = array.length;
        for (int i = 0; i < len; ++i) {
            if (array[i] != null) continue;
            throw new NullPointerException("at index " + i);
        }
        return array;
    }

    private static <E> ImmutableList<E> copyOfInternal(Collection<? extends E> collection) {
        int size = collection.size();
        return size == 0 ? ImmutableList.of() : ImmutableList.createFromIterable(collection, size);
    }

    ImmutableList() {
    }

    @Override
    public abstract UnmodifiableIterator<E> iterator();

    @Override
    public abstract int indexOf(@Nullable Object var1);

    @Override
    public abstract int lastIndexOf(@Nullable Object var1);

    @Override
    public abstract ImmutableList<E> subList(int var1, int var2);

    @Override
    public final boolean addAll(int index, Collection<? extends E> newElements) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final E set(int index, E element) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final void add(int index, E element) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final E remove(int index) {
        throw new UnsupportedOperationException();
    }

    private static Object[] copyIntoArray(Object ... source) {
        Object[] array = new Object[source.length];
        int index = 0;
        for (Object element : source) {
            if (element == null) {
                throw new NullPointerException("at index " + index);
            }
            array[index++] = element;
        }
        return array;
    }

    private static <E> ImmutableList<E> createFromIterable(Iterable<? extends E> source, int estimatedSize) {
        Object[] array = new Object[estimatedSize];
        int index = 0;
        for (E element : source) {
            if (index == estimatedSize) {
                estimatedSize = (estimatedSize / 2 + 1) * 3;
                array = ImmutableList.copyOf(array, estimatedSize);
            }
            if (element == null) {
                throw new NullPointerException("at index " + index);
            }
            array[index++] = element;
        }
        if (index == 0) {
            return ImmutableList.of();
        }
        if (index == 1) {
            Object element = array[0];
            return ImmutableList.of(element);
        }
        if (index != estimatedSize) {
            array = ImmutableList.copyOf(array, index);
        }
        return new RegularImmutableList(array, 0, index);
    }

    private static Object[] copyOf(Object[] oldArray, int newSize) {
        Object[] newArray = new Object[newSize];
        System.arraycopy(oldArray, 0, newArray, 0, Math.min(oldArray.length, newSize));
        return newArray;
    }

    private void readObject(ObjectInputStream stream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
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
    public static final class Builder<E>
    extends ImmutableCollection.Builder<E> {
        private final ArrayList<E> contents = Lists.newArrayList();

        @Override
        public Builder<E> add(E element) {
            this.contents.add(Preconditions.checkNotNull(element));
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
        public Builder<E> add(E ... elements) {
            Preconditions.checkNotNull(elements);
            this.contents.ensureCapacity(this.contents.size() + elements.length);
            super.add(elements);
            return this;
        }

        @Override
        public Builder<E> addAll(Iterator<? extends E> elements) {
            super.addAll(elements);
            return this;
        }

        @Override
        public ImmutableList<E> build() {
            return ImmutableList.copyOf(this.contents);
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
            return ImmutableList.of(this.elements);
        }
    }
}

