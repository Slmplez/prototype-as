/*
 * Decompiled with CFR 0.152.
 */
package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.BoundType;
import com.google.common.collect.DescendingImmutableSortedMultiset;
import com.google.common.collect.EmptyImmutableSortedMultiset;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMultiset;
import com.google.common.collect.ImmutableSortedMultisetFauxverideShim;
import com.google.common.collect.ImmutableSortedSet;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.collect.Ordering;
import com.google.common.collect.RegularImmutableSortedMultiset;
import com.google.common.collect.SortedIterables;
import com.google.common.collect.SortedMultiset;
import com.google.common.collect.TreeMultiset;
import com.google.common.collect.UnmodifiableIterator;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtIncompatible(value="hasn't been tested yet")
abstract class ImmutableSortedMultiset<E>
extends ImmutableSortedMultisetFauxverideShim<E>
implements SortedMultiset<E> {
    private static final Comparator<Comparable> NATURAL_ORDER = Ordering.natural();
    private static final ImmutableSortedMultiset<Comparable> NATURAL_EMPTY_MULTISET = new EmptyImmutableSortedMultiset<Comparable>(NATURAL_ORDER);
    private final transient Comparator<? super E> comparator;
    private transient Comparator<? super E> reverseComparator;
    private transient ImmutableSortedSet<E> elementSet;
    transient ImmutableSortedMultiset<E> descendingMultiset;

    public static <E> ImmutableSortedMultiset<E> of() {
        return NATURAL_EMPTY_MULTISET;
    }

    public static <E extends Comparable<? super E>> ImmutableSortedMultiset<E> of(E element) {
        return RegularImmutableSortedMultiset.createFromSorted(NATURAL_ORDER, ImmutableList.of(Multisets.immutableEntry(Preconditions.checkNotNull(element), 1)));
    }

    public static <E extends Comparable<? super E>> ImmutableSortedMultiset<E> of(E e1, E e2) {
        return ImmutableSortedMultiset.copyOf(Ordering.natural(), Arrays.asList(e1, e2));
    }

    public static <E extends Comparable<? super E>> ImmutableSortedMultiset<E> of(E e1, E e2, E e3) {
        return ImmutableSortedMultiset.copyOf(Ordering.natural(), Arrays.asList(e1, e2, e3));
    }

    public static <E extends Comparable<? super E>> ImmutableSortedMultiset<E> of(E e1, E e2, E e3, E e4) {
        return ImmutableSortedMultiset.copyOf(Ordering.natural(), Arrays.asList(e1, e2, e3, e4));
    }

    public static <E extends Comparable<? super E>> ImmutableSortedMultiset<E> of(E e1, E e2, E e3, E e4, E e5) {
        return ImmutableSortedMultiset.copyOf(Ordering.natural(), Arrays.asList(e1, e2, e3, e4, e5));
    }

    public static <E extends Comparable<? super E>> ImmutableSortedMultiset<E> of(E e1, E e2, E e3, E e4, E e5, E e6, E ... remaining) {
        int size = remaining.length + 6;
        ArrayList all = new ArrayList(size);
        Collections.addAll(all, e1, e2, e3, e4, e5, e6);
        Collections.addAll(all, remaining);
        return ImmutableSortedMultiset.copyOf(Ordering.natural(), all);
    }

    public static <E extends Comparable<? super E>> ImmutableSortedMultiset<E> copyOf(E[] elements) {
        return ImmutableSortedMultiset.copyOf(Ordering.natural(), Arrays.asList(elements));
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Iterable<? extends E> elements) {
        Ordering naturalOrder = Ordering.natural();
        return ImmutableSortedMultiset.copyOf(naturalOrder, elements);
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Iterator<? extends E> elements) {
        Ordering naturalOrder = Ordering.natural();
        return ImmutableSortedMultiset.copyOfInternal(naturalOrder, elements);
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Comparator<? super E> comparator, Iterator<? extends E> elements) {
        Preconditions.checkNotNull(comparator);
        return ImmutableSortedMultiset.copyOfInternal(comparator, elements);
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Comparator<? super E> comparator, Iterable<? extends E> elements) {
        Preconditions.checkNotNull(comparator);
        return ImmutableSortedMultiset.copyOfInternal(comparator, elements);
    }

    public static <E> ImmutableSortedMultiset<E> copyOfSorted(SortedMultiset<E> sortedMultiset) {
        Comparator<Object> comparator = sortedMultiset.comparator();
        if (comparator == null) {
            comparator = NATURAL_ORDER;
        }
        return ImmutableSortedMultiset.copyOfInternal(comparator, sortedMultiset);
    }

    private static <E> ImmutableSortedMultiset<E> copyOfInternal(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        ImmutableSortedMultiset multiset;
        if (SortedIterables.hasSameComparator(comparator, iterable) && iterable instanceof ImmutableSortedMultiset && !(multiset = (ImmutableSortedMultiset)iterable).isPartialView()) {
            return (ImmutableSortedMultiset)iterable;
        }
        ImmutableList<Multiset.Entry<E>> entries = ImmutableList.copyOf(SortedIterables.sortedCounts(comparator, iterable));
        if (entries.isEmpty()) {
            return ImmutableSortedMultiset.emptyMultiset(comparator);
        }
        ImmutableSortedMultiset.verifyEntries(entries);
        return RegularImmutableSortedMultiset.createFromSorted(comparator, entries);
    }

    private static <E> ImmutableSortedMultiset<E> copyOfInternal(Comparator<? super E> comparator, Iterator<? extends E> iterator) {
        ImmutableList<Multiset.Entry<E>> entries = ImmutableList.copyOf(SortedIterables.sortedCounts(comparator, iterator));
        if (entries.isEmpty()) {
            return ImmutableSortedMultiset.emptyMultiset(comparator);
        }
        ImmutableSortedMultiset.verifyEntries(entries);
        return RegularImmutableSortedMultiset.createFromSorted(comparator, entries);
    }

    private static <E> void verifyEntries(Collection<Multiset.Entry<E>> entries) {
        for (Multiset.Entry<E> entry : entries) {
            Preconditions.checkNotNull(entry.getElement());
        }
    }

    static <E> ImmutableSortedMultiset<E> emptyMultiset(Comparator<? super E> comparator) {
        if (((Object)NATURAL_ORDER).equals(comparator)) {
            return NATURAL_EMPTY_MULTISET;
        }
        return new EmptyImmutableSortedMultiset<E>(comparator);
    }

    ImmutableSortedMultiset(Comparator<? super E> comparator) {
        this.comparator = Preconditions.checkNotNull(comparator);
    }

    @Override
    public Comparator<? super E> comparator() {
        return this.comparator;
    }

    Comparator<Object> unsafeComparator() {
        return this.comparator;
    }

    Comparator<? super E> reverseComparator() {
        Comparator<? super E> result = this.reverseComparator;
        if (result == null) {
            this.reverseComparator = Ordering.from(this.comparator).reverse();
            return this.reverseComparator;
        }
        return result;
    }

    @Override
    public ImmutableSortedSet<E> elementSet() {
        ImmutableSortedSet<E> result = this.elementSet;
        if (result == null) {
            this.elementSet = this.createElementSet();
            return this.elementSet;
        }
        return result;
    }

    abstract ImmutableSortedSet<E> createElementSet();

    abstract ImmutableSortedSet<E> createDescendingElementSet();

    @Override
    public ImmutableSortedMultiset<E> descendingMultiset() {
        ImmutableSortedMultiset<E> result = this.descendingMultiset;
        if (result == null) {
            this.descendingMultiset = new DescendingImmutableSortedMultiset(this);
            return this.descendingMultiset;
        }
        return result;
    }

    abstract UnmodifiableIterator<Multiset.Entry<E>> descendingEntryIterator();

    @Override
    public final Multiset.Entry<E> pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override
    public Multiset.Entry<E> pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    @Override
    public abstract ImmutableSortedMultiset<E> headMultiset(E var1, BoundType var2);

    @Override
    public ImmutableSortedMultiset<E> subMultiset(E lowerBound, BoundType lowerBoundType, E upperBound, BoundType upperBoundType) {
        return ((ImmutableSortedMultiset)this.tailMultiset((Object)lowerBound, lowerBoundType)).headMultiset((Object)upperBound, upperBoundType);
    }

    @Override
    public abstract ImmutableSortedMultiset<E> tailMultiset(E var1, BoundType var2);

    public static <E> Builder<E> orderedBy(Comparator<E> comparator) {
        return new Builder<E>(comparator);
    }

    public static <E extends Comparable<E>> Builder<E> reverseOrder() {
        return new Builder(Ordering.natural().reverse());
    }

    public static <E extends Comparable<E>> Builder<E> naturalOrder() {
        return new Builder(Ordering.natural());
    }

    @Override
    Object writeReplace() {
        return new SerializedForm(this);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class Builder<E>
    extends ImmutableMultiset.Builder<E> {
        private final Comparator<? super E> comparator;

        public Builder(Comparator<? super E> comparator) {
            super(TreeMultiset.create(comparator));
            this.comparator = Preconditions.checkNotNull(comparator);
        }

        @Override
        public Builder<E> add(E element) {
            super.add((Object)element);
            return this;
        }

        @Override
        public Builder<E> addCopies(E element, int occurrences) {
            super.addCopies(element, occurrences);
            return this;
        }

        @Override
        public Builder<E> setCount(E element, int count) {
            super.setCount(element, count);
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
        public ImmutableSortedMultiset<E> build() {
            return ImmutableSortedMultiset.copyOf(this.comparator, this.contents);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static final class SerializedForm
    implements Serializable {
        Comparator comparator;
        Object[] elements;
        int[] counts;

        SerializedForm(SortedMultiset<?> multiset) {
            this.comparator = multiset.comparator();
            int n = multiset.entrySet().size();
            this.elements = new Object[n];
            this.counts = new int[n];
            int i = 0;
            for (Multiset.Entry entry : multiset.entrySet()) {
                this.elements[i] = entry.getElement();
                this.counts[i] = entry.getCount();
                ++i;
            }
        }

        Object readResolve() {
            int n = this.elements.length;
            Builder builder = ImmutableSortedMultiset.orderedBy(this.comparator);
            for (int i = 0; i < n; ++i) {
                builder.addCopies(this.elements[i], this.counts[i]);
            }
            return builder.build();
        }
    }
}

