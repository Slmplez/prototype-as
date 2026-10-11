/*
 * Decompiled with CFR 0.152.
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.EmptyImmutableSortedSet;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.ImmutableSortedSetFauxverideShim;
import com.google.common.collect.Lists;
import com.google.common.collect.Ordering;
import com.google.common.collect.RegularImmutableSortedSet;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.SortedSet;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible(serializable=true)
public abstract class ImmutableSortedSet<E>
extends ImmutableSortedSetFauxverideShim<E>
implements SortedSet<E> {
    private static final Comparator NATURAL_ORDER = Ordering.natural();
    private static final ImmutableSortedSet<Object> NATURAL_EMPTY_SET = new EmptyImmutableSortedSet<Object>(NATURAL_ORDER);
    final transient Comparator<? super E> comparator;

    private static <E> ImmutableSortedSet<E> emptySet() {
        return NATURAL_EMPTY_SET;
    }

    static <E> ImmutableSortedSet<E> emptySet(Comparator<? super E> comparator) {
        if (((Object)NATURAL_ORDER).equals(comparator)) {
            return ImmutableSortedSet.emptySet();
        }
        return new EmptyImmutableSortedSet<E>(comparator);
    }

    public static <E> ImmutableSortedSet<E> of() {
        return ImmutableSortedSet.emptySet();
    }

    public static <E extends Comparable<? super E>> ImmutableSortedSet<E> of(E element) {
        Object[] array = new Object[]{Preconditions.checkNotNull(element)};
        return new RegularImmutableSortedSet(array, Ordering.natural());
    }

    public static <E extends Comparable<? super E>> ImmutableSortedSet<E> of(E e1, E e2) {
        return ImmutableSortedSet.ofInternal(Ordering.natural(), e1, e2);
    }

    public static <E extends Comparable<? super E>> ImmutableSortedSet<E> of(E e1, E e2, E e3) {
        return ImmutableSortedSet.ofInternal(Ordering.natural(), e1, e2, e3);
    }

    public static <E extends Comparable<? super E>> ImmutableSortedSet<E> of(E e1, E e2, E e3, E e4) {
        return ImmutableSortedSet.ofInternal(Ordering.natural(), e1, e2, e3, e4);
    }

    public static <E extends Comparable<? super E>> ImmutableSortedSet<E> of(E e1, E e2, E e3, E e4, E e5) {
        return ImmutableSortedSet.ofInternal(Ordering.natural(), e1, e2, e3, e4, e5);
    }

    public static <E extends Comparable<? super E>> ImmutableSortedSet<E> of(E ... elements) {
        return ImmutableSortedSet.ofInternal(Ordering.natural(), elements);
    }

    private static <E> ImmutableSortedSet<E> ofInternal(Comparator<? super E> comparator, E ... elements) {
        Preconditions.checkNotNull(elements);
        switch (elements.length) {
            case 0: {
                return ImmutableSortedSet.emptySet(comparator);
            }
        }
        Object[] array = new Object[elements.length];
        for (int i = 0; i < elements.length; ++i) {
            array[i] = Preconditions.checkNotNull(elements[i]);
        }
        ImmutableSortedSet.sort(array, comparator);
        array = ImmutableSortedSet.removeDupes(array, comparator);
        return new RegularImmutableSortedSet<E>(array, comparator);
    }

    private static <E> void sort(Object[] array, Comparator<? super E> comparator) {
        Arrays.sort(array, comparator);
    }

    private static <E> Object[] removeDupes(Object[] array, Comparator<? super E> comparator) {
        int size = 1;
        for (int i = 1; i < array.length; ++i) {
            Object element = array[i];
            if (ImmutableSortedSet.unsafeCompare(comparator, array[size - 1], element) == 0) continue;
            array[size] = element;
            ++size;
        }
        if (size == array.length) {
            return array;
        }
        Object[] copy = new Object[size];
        System.arraycopy(array, 0, copy, 0, size);
        return copy;
    }

    public static <E> ImmutableSortedSet<E> copyOf(Iterable<? extends E> elements) {
        Ordering naturalOrder = Ordering.natural();
        return ImmutableSortedSet.copyOfInternal(naturalOrder, elements, false);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Iterator<? extends E> elements) {
        Ordering naturalOrder = Ordering.natural();
        return ImmutableSortedSet.copyOfInternal(naturalOrder, elements);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> comparator, Iterable<? extends E> elements) {
        Preconditions.checkNotNull(comparator);
        return ImmutableSortedSet.copyOfInternal(comparator, elements, false);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> comparator, Iterator<? extends E> elements) {
        Preconditions.checkNotNull(comparator);
        return ImmutableSortedSet.copyOfInternal(comparator, elements);
    }

    public static <E> ImmutableSortedSet<E> copyOfSorted(SortedSet<E> sortedSet) {
        Comparator comparator = sortedSet.comparator();
        if (comparator == null) {
            comparator = NATURAL_ORDER;
        }
        return ImmutableSortedSet.copyOfInternal(comparator, sortedSet, true);
    }

    private static <E> ImmutableSortedSet<E> copyOfInternal(Comparator<? super E> comparator, Iterable<? extends E> elements, boolean fromSortedSet) {
        ImmutableSortedSet result;
        boolean hasSameComparator;
        boolean bl = hasSameComparator = fromSortedSet || ImmutableSortedSet.hasSameComparator(elements, comparator);
        if (hasSameComparator && elements instanceof ImmutableSortedSet && !(result = (ImmutableSortedSet)elements).hasPartialArray()) {
            return result;
        }
        Object[] array = ImmutableSortedSet.newObjectArray(elements);
        if (array.length == 0) {
            return ImmutableSortedSet.emptySet(comparator);
        }
        for (Object e : array) {
            Preconditions.checkNotNull(e);
        }
        if (!hasSameComparator) {
            ImmutableSortedSet.sort(array, comparator);
            array = ImmutableSortedSet.removeDupes(array, comparator);
        }
        return new RegularImmutableSortedSet<E>(array, comparator);
    }

    private static <T> Object[] newObjectArray(Iterable<T> iterable) {
        ArrayList<Object> collection = iterable instanceof Collection ? (ArrayList<Object>)iterable : Lists.newArrayList(iterable);
        Object[] array = new Object[collection.size()];
        return collection.toArray(array);
    }

    private static <E> ImmutableSortedSet<E> copyOfInternal(Comparator<? super E> comparator, Iterator<? extends E> elements) {
        if (!elements.hasNext()) {
            return ImmutableSortedSet.emptySet(comparator);
        }
        ArrayList<E> list = Lists.newArrayList();
        while (elements.hasNext()) {
            list.add(Preconditions.checkNotNull(elements.next()));
        }
        Object[] array = list.toArray();
        ImmutableSortedSet.sort(array, comparator);
        array = ImmutableSortedSet.removeDupes(array, comparator);
        return new RegularImmutableSortedSet<E>(array, comparator);
    }

    static boolean hasSameComparator(Iterable<?> elements, Comparator<?> comparator) {
        if (elements instanceof SortedSet) {
            SortedSet sortedSet = (SortedSet)elements;
            Comparator comparator2 = sortedSet.comparator();
            return comparator2 == null ? comparator == Ordering.natural() : ((Object)comparator).equals(comparator2);
        }
        return false;
    }

    public static <E> Builder<E> orderedBy(Comparator<E> comparator) {
        return new Builder<E>(comparator);
    }

    public static <E extends Comparable<E>> Builder<E> reverseOrder() {
        return new Builder(Ordering.natural().reverse());
    }

    public static <E extends Comparable<E>> Builder<E> naturalOrder() {
        return new Builder(Ordering.natural());
    }

    int unsafeCompare(Object a, Object b) {
        return ImmutableSortedSet.unsafeCompare(this.comparator, a, b);
    }

    static int unsafeCompare(Comparator<?> comparator, Object a, Object b) {
        Comparator<?> unsafeComparator = comparator;
        return unsafeComparator.compare(a, b);
    }

    ImmutableSortedSet(Comparator<? super E> comparator) {
        this.comparator = comparator;
    }

    @Override
    public Comparator<? super E> comparator() {
        return this.comparator;
    }

    @Override
    public ImmutableSortedSet<E> headSet(E toElement) {
        return this.headSetImpl(Preconditions.checkNotNull(toElement));
    }

    @Override
    public ImmutableSortedSet<E> subSet(E fromElement, E toElement) {
        Preconditions.checkNotNull(fromElement);
        Preconditions.checkNotNull(toElement);
        Preconditions.checkArgument(this.comparator.compare(fromElement, toElement) <= 0);
        return this.subSetImpl(fromElement, toElement);
    }

    @Override
    public ImmutableSortedSet<E> tailSet(E fromElement) {
        return this.tailSetImpl(Preconditions.checkNotNull(fromElement));
    }

    abstract ImmutableSortedSet<E> headSetImpl(E var1);

    abstract ImmutableSortedSet<E> subSetImpl(E var1, E var2);

    abstract ImmutableSortedSet<E> tailSetImpl(E var1);

    abstract boolean hasPartialArray();

    private void readObject(ObjectInputStream stream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override
    Object writeReplace() {
        return new SerializedForm<E>(this.comparator, this.toArray());
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static final class Builder<E>
    extends ImmutableSet.Builder<E> {
        private final Comparator<? super E> comparator;

        public Builder(Comparator<? super E> comparator) {
            this.comparator = Preconditions.checkNotNull(comparator);
        }

        @Override
        public Builder<E> add(E element) {
            super.add((Object)element);
            return this;
        }

        @Override
        public Builder<E> add(E ... elements) {
            super.add((Object[])elements);
            return this;
        }

        @Override
        public Builder<E> addAll(Iterable<? extends E> elements) {
            super.addAll((Iterable)elements);
            return this;
        }

        @Override
        public Builder<E> addAll(Iterator<? extends E> elements) {
            super.addAll((Iterator)elements);
            return this;
        }

        @Override
        public ImmutableSortedSet<E> build() {
            return ImmutableSortedSet.copyOfInternal(this.comparator, this.contents.iterator());
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class SerializedForm<E>
    implements Serializable {
        final Comparator<? super E> comparator;
        final Object[] elements;
        private static final long serialVersionUID = 0L;

        public SerializedForm(Comparator<? super E> comparator, Object[] elements) {
            this.comparator = comparator;
            this.elements = elements;
        }

        Object readResolve() {
            return ((Builder)new Builder<E>(this.comparator).add(this.elements)).build();
        }
    }
}

