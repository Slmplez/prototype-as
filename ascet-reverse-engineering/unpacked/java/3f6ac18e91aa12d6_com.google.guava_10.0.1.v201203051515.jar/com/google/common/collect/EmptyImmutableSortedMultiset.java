/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.BoundType;
import com.google.common.collect.ImmutableSortedMultiset;
import com.google.common.collect.ImmutableSortedSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.Multiset;
import com.google.common.collect.UnmodifiableIterator;
import java.util.Comparator;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
final class EmptyImmutableSortedMultiset<E>
extends ImmutableSortedMultiset<E> {
    EmptyImmutableSortedMultiset(Comparator<? super E> comparator) {
        super(comparator);
    }

    @Override
    public Multiset.Entry<E> firstEntry() {
        return null;
    }

    @Override
    public Multiset.Entry<E> lastEntry() {
        return null;
    }

    @Override
    public int count(@Nullable Object element) {
        return 0;
    }

    @Override
    public int size() {
        return 0;
    }

    @Override
    ImmutableSortedSet<E> createElementSet() {
        return ImmutableSortedSet.emptySet(this.comparator());
    }

    @Override
    ImmutableSortedSet<E> createDescendingElementSet() {
        return ImmutableSortedSet.emptySet(this.reverseComparator());
    }

    @Override
    UnmodifiableIterator<Multiset.Entry<E>> descendingEntryIterator() {
        return Iterators.emptyIterator();
    }

    @Override
    UnmodifiableIterator<Multiset.Entry<E>> entryIterator() {
        return Iterators.emptyIterator();
    }

    @Override
    public ImmutableSortedMultiset<E> headMultiset(E upperBound, BoundType boundType) {
        Preconditions.checkNotNull(upperBound);
        Preconditions.checkNotNull(boundType);
        return this;
    }

    @Override
    public ImmutableSortedMultiset<E> tailMultiset(E lowerBound, BoundType boundType) {
        Preconditions.checkNotNull(lowerBound);
        Preconditions.checkNotNull(boundType);
        return this;
    }

    @Override
    int distinctElements() {
        return 0;
    }

    @Override
    boolean isPartialView() {
        return false;
    }
}

