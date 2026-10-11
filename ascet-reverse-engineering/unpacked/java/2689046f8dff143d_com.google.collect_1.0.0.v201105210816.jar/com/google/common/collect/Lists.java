/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.Platform;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.AbstractSequentialList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible
public final class Lists {
    private Lists() {
    }

    @GwtCompatible(serializable=true)
    public static <E> ArrayList<E> newArrayList() {
        return new ArrayList();
    }

    @GwtCompatible(serializable=true)
    public static <E> ArrayList<E> newArrayList(E ... elements) {
        Preconditions.checkNotNull(elements);
        int capacity = Lists.computeArrayListCapacity(elements.length);
        ArrayList list = new ArrayList(capacity);
        Collections.addAll(list, elements);
        return list;
    }

    @VisibleForTesting
    static int computeArrayListCapacity(int arraySize) {
        Preconditions.checkArgument(arraySize >= 0);
        return (int)Math.min(5L + (long)arraySize + (long)(arraySize / 10), Integer.MAX_VALUE);
    }

    @GwtCompatible(serializable=true)
    public static <E> ArrayList<E> newArrayList(Iterable<? extends E> elements) {
        Preconditions.checkNotNull(elements);
        if (elements instanceof Collection) {
            Collection collection = (Collection)elements;
            return new ArrayList(collection);
        }
        return Lists.newArrayList(elements.iterator());
    }

    @GwtCompatible(serializable=true)
    public static <E> ArrayList<E> newArrayList(Iterator<? extends E> elements) {
        Preconditions.checkNotNull(elements);
        ArrayList<E> list = Lists.newArrayList();
        while (elements.hasNext()) {
            list.add(elements.next());
        }
        return list;
    }

    @GwtCompatible(serializable=true)
    public static <E> ArrayList<E> newArrayListWithCapacity(int initialArraySize) {
        return new ArrayList(initialArraySize);
    }

    @GwtCompatible(serializable=true)
    public static <E> ArrayList<E> newArrayListWithExpectedSize(int estimatedSize) {
        return new ArrayList(Lists.computeArrayListCapacity(estimatedSize));
    }

    @GwtCompatible(serializable=true)
    public static <E> LinkedList<E> newLinkedList() {
        return new LinkedList();
    }

    @GwtCompatible(serializable=true)
    public static <E> LinkedList<E> newLinkedList(Iterable<? extends E> elements) {
        LinkedList<E> list = Lists.newLinkedList();
        for (E element : elements) {
            list.add(element);
        }
        return list;
    }

    public static <E> List<E> asList(@Nullable E first, E[] rest) {
        return new OnePlusArrayList<E>(first, rest);
    }

    public static <E> List<E> asList(@Nullable E first, @Nullable E second, E[] rest) {
        return new TwoPlusArrayList<E>(first, second, rest);
    }

    public static <F, T> List<T> transform(List<F> fromList, Function<? super F, ? extends T> function) {
        return fromList instanceof RandomAccess ? new TransformingRandomAccessList<F, T>(fromList, function) : new TransformingSequentialList<F, T>(fromList, function);
    }

    public static <T> List<List<T>> partition(List<T> list, int size) {
        Preconditions.checkNotNull(list);
        Preconditions.checkArgument(size > 0);
        return list instanceof RandomAccess ? new RandomAccessPartition<T>(list, size) : new Partition<T>(list, size);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class OnePlusArrayList<E>
    extends AbstractList<E>
    implements Serializable,
    RandomAccess {
        final E first;
        final E[] rest;
        private static final long serialVersionUID = 0L;

        OnePlusArrayList(@Nullable E first, E[] rest) {
            this.first = first;
            this.rest = Preconditions.checkNotNull(rest);
        }

        @Override
        public int size() {
            return this.rest.length + 1;
        }

        @Override
        public E get(int index) {
            Preconditions.checkElementIndex(index, this.size());
            return index == 0 ? this.first : this.rest[index - 1];
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class Partition<T>
    extends AbstractList<List<T>> {
        final List<T> list;
        final int size;

        Partition(List<T> list, int size) {
            this.list = list;
            this.size = size;
        }

        @Override
        public List<T> get(int index) {
            int listSize = this.size();
            Preconditions.checkElementIndex(index, listSize);
            int start = index * this.size;
            int end = Math.min(start + this.size, this.list.size());
            return Platform.subList(this.list, start, end);
        }

        @Override
        public int size() {
            return (this.list.size() + this.size - 1) / this.size;
        }

        @Override
        public boolean isEmpty() {
            return this.list.isEmpty();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class RandomAccessPartition<T>
    extends Partition<T>
    implements RandomAccess {
        RandomAccessPartition(List<T> list, int size) {
            super(list, size);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class TransformingRandomAccessList<F, T>
    extends AbstractList<T>
    implements RandomAccess,
    Serializable {
        final List<F> fromList;
        final Function<? super F, ? extends T> function;
        private static final long serialVersionUID = 0L;

        TransformingRandomAccessList(List<F> fromList, Function<? super F, ? extends T> function) {
            this.fromList = Preconditions.checkNotNull(fromList);
            this.function = Preconditions.checkNotNull(function);
        }

        @Override
        public void clear() {
            this.fromList.clear();
        }

        @Override
        public T get(int index) {
            return this.function.apply(this.fromList.get(index));
        }

        @Override
        public boolean isEmpty() {
            return this.fromList.isEmpty();
        }

        @Override
        public T remove(int index) {
            return this.function.apply(this.fromList.remove(index));
        }

        @Override
        public int size() {
            return this.fromList.size();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class TransformingSequentialList<F, T>
    extends AbstractSequentialList<T>
    implements Serializable {
        final List<F> fromList;
        final Function<? super F, ? extends T> function;
        private static final long serialVersionUID = 0L;

        TransformingSequentialList(List<F> fromList, Function<? super F, ? extends T> function) {
            this.fromList = Preconditions.checkNotNull(fromList);
            this.function = Preconditions.checkNotNull(function);
        }

        @Override
        public void clear() {
            this.fromList.clear();
        }

        @Override
        public int size() {
            return this.fromList.size();
        }

        @Override
        public ListIterator<T> listIterator(int index) {
            final ListIterator<F> delegate = this.fromList.listIterator(index);
            return new ListIterator<T>(){

                @Override
                public void add(T e) {
                    throw new UnsupportedOperationException();
                }

                @Override
                public boolean hasNext() {
                    return delegate.hasNext();
                }

                @Override
                public boolean hasPrevious() {
                    return delegate.hasPrevious();
                }

                @Override
                public T next() {
                    return TransformingSequentialList.this.function.apply(delegate.next());
                }

                @Override
                public int nextIndex() {
                    return delegate.nextIndex();
                }

                @Override
                public T previous() {
                    return TransformingSequentialList.this.function.apply(delegate.previous());
                }

                @Override
                public int previousIndex() {
                    return delegate.previousIndex();
                }

                @Override
                public void remove() {
                    delegate.remove();
                }

                @Override
                public void set(T e) {
                    throw new UnsupportedOperationException("not supported");
                }
            };
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class TwoPlusArrayList<E>
    extends AbstractList<E>
    implements Serializable,
    RandomAccess {
        final E first;
        final E second;
        final E[] rest;
        private static final long serialVersionUID = 0L;

        TwoPlusArrayList(@Nullable E first, @Nullable E second, E[] rest) {
            this.first = first;
            this.second = second;
            this.rest = Preconditions.checkNotNull(rest);
        }

        @Override
        public int size() {
            return this.rest.length + 2;
        }

        @Override
        public E get(int index) {
            switch (index) {
                case 0: {
                    return this.first;
                }
                case 1: {
                    return this.second;
                }
            }
            Preconditions.checkElementIndex(index, this.size());
            return this.rest[index - 2];
        }
    }
}

