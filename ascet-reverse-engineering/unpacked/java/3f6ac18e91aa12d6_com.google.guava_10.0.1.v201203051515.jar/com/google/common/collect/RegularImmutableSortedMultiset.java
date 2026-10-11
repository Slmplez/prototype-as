/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.BoundType;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSortedMultiset;
import com.google.common.collect.ImmutableSortedSet;
import com.google.common.collect.Lists;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.collect.RegularImmutableSortedSet;
import com.google.common.collect.SortedLists;
import com.google.common.collect.TransformedImmutableList;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.primitives.Ints;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
final class RegularImmutableSortedMultiset<E>
extends ImmutableSortedMultiset<E> {
    final transient ImmutableList<CumulativeCountEntry<E>> entries;

    static <E> RegularImmutableSortedMultiset<E> createFromSorted(Comparator<? super E> comparator, List<? extends Multiset.Entry<E>> entries) {
        ArrayList<CumulativeCountEntry<E>> newEntries = Lists.newArrayListWithCapacity(entries.size());
        CumulativeCountEntry<E> previous = null;
        for (Multiset.Entry<E> entry : entries) {
            previous = new CumulativeCountEntry<E>(entry.getElement(), entry.getCount(), previous);
            newEntries.add(previous);
        }
        return new RegularImmutableSortedMultiset<E>(comparator, ImmutableList.copyOf(newEntries));
    }

    RegularImmutableSortedMultiset(Comparator<? super E> comparator, ImmutableList<CumulativeCountEntry<E>> entries) {
        super(comparator);
        this.entries = entries;
        assert (!entries.isEmpty());
    }

    ImmutableList<E> elementList() {
        return new TransformedImmutableList<CumulativeCountEntry<E>, E>(this.entries){

            @Override
            E transform(CumulativeCountEntry<E> entry) {
                return entry.getElement();
            }
        };
    }

    @Override
    ImmutableSortedSet<E> createElementSet() {
        return new RegularImmutableSortedSet<E>(this.elementList(), this.comparator());
    }

    @Override
    ImmutableSortedSet<E> createDescendingElementSet() {
        return new RegularImmutableSortedSet<E>(this.elementList().reverse(), this.reverseComparator());
    }

    @Override
    UnmodifiableIterator<Multiset.Entry<E>> entryIterator() {
        return this.entries.iterator();
    }

    @Override
    UnmodifiableIterator<Multiset.Entry<E>> descendingEntryIterator() {
        return this.entries.reverse().iterator();
    }

    @Override
    public CumulativeCountEntry<E> firstEntry() {
        return (CumulativeCountEntry)this.entries.get(0);
    }

    @Override
    public CumulativeCountEntry<E> lastEntry() {
        return (CumulativeCountEntry)this.entries.get(this.entries.size() - 1);
    }

    @Override
    public int size() {
        Multiset.Entry firstEntry = this.firstEntry();
        Multiset.Entry lastEntry = this.lastEntry();
        return Ints.saturatedCast(((CumulativeCountEntry)lastEntry).cumulativeCount - ((CumulativeCountEntry)firstEntry).cumulativeCount + (long)((CumulativeCountEntry)firstEntry).count);
    }

    @Override
    int distinctElements() {
        return this.entries.size();
    }

    @Override
    boolean isPartialView() {
        return this.entries.isPartialView();
    }

    @Override
    public int count(@Nullable Object element) {
        if (element == null) {
            return 0;
        }
        try {
            int index = SortedLists.binarySearch(this.elementList(), element, this.comparator(), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.INVERTED_INSERTION_INDEX);
            return index >= 0 ? ((CumulativeCountEntry)this.entries.get(index)).getCount() : 0;
        }
        catch (ClassCastException e) {
            return 0;
        }
    }

    @Override
    public ImmutableSortedMultiset<E> headMultiset(E upperBound, BoundType boundType) {
        int index;
        switch (boundType) {
            case OPEN: {
                index = SortedLists.binarySearch(this.elementList(), Preconditions.checkNotNull(upperBound), this.comparator(), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_HIGHER);
                break;
            }
            case CLOSED: {
                index = SortedLists.binarySearch(this.elementList(), Preconditions.checkNotNull(upperBound), this.comparator(), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_LOWER) + 1;
                break;
            }
            default: {
                throw new AssertionError();
            }
        }
        return this.createSubMultiset(0, index);
    }

    @Override
    public ImmutableSortedMultiset<E> tailMultiset(E lowerBound, BoundType boundType) {
        int index;
        switch (boundType) {
            case OPEN: {
                index = SortedLists.binarySearch(this.elementList(), Preconditions.checkNotNull(lowerBound), this.comparator(), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_LOWER) + 1;
                break;
            }
            case CLOSED: {
                index = SortedLists.binarySearch(this.elementList(), Preconditions.checkNotNull(lowerBound), this.comparator(), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_HIGHER);
                break;
            }
            default: {
                throw new AssertionError();
            }
        }
        return this.createSubMultiset(index, this.distinctElements());
    }

    private ImmutableSortedMultiset<E> createSubMultiset(int newFromIndex, int newToIndex) {
        if (newFromIndex == 0 && newToIndex == this.entries.size()) {
            return this;
        }
        if (newFromIndex >= newToIndex) {
            return RegularImmutableSortedMultiset.emptyMultiset(this.comparator());
        }
        return new RegularImmutableSortedMultiset(this.comparator(), this.entries.subList(newFromIndex, newToIndex));
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static final class CumulativeCountEntry<E>
    extends Multisets.AbstractEntry<E> {
        final E element;
        final int count;
        final long cumulativeCount;

        CumulativeCountEntry(E element, int count, @Nullable CumulativeCountEntry<E> previous) {
            this.element = element;
            this.count = count;
            this.cumulativeCount = (long)count + (previous == null ? 0L : previous.cumulativeCount);
        }

        @Override
        public E getElement() {
            return this.element;
        }

        @Override
        public int getCount() {
            return this.count;
        }
    }
}

