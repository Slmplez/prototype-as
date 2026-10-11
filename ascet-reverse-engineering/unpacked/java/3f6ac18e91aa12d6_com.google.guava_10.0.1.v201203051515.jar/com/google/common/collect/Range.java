/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.collect.BoundType;
import com.google.common.collect.ContiguousSet;
import com.google.common.collect.Cut;
import com.google.common.collect.DiscreteDomain;
import com.google.common.collect.EmptyContiguousSet;
import com.google.common.collect.Iterables;
import com.google.common.collect.Ordering;
import com.google.common.collect.Ranges;
import com.google.common.collect.RegularContiguousSet;
import java.io.Serializable;
import java.util.Comparator;
import java.util.NoSuchElementException;
import java.util.SortedSet;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible
@Beta
public final class Range<C extends Comparable>
implements Predicate<C>,
Serializable {
    final Cut<C> lowerBound;
    final Cut<C> upperBound;
    private static final long serialVersionUID = 0L;

    Range(Cut<C> lowerBound, Cut<C> upperBound) {
        if (lowerBound.compareTo(upperBound) > 0) {
            throw new IllegalArgumentException("Invalid range: " + Range.toString(lowerBound, upperBound));
        }
        this.lowerBound = lowerBound;
        this.upperBound = upperBound;
    }

    public boolean hasLowerBound() {
        return this.lowerBound != Cut.belowAll();
    }

    public C lowerEndpoint() {
        return this.lowerBound.endpoint();
    }

    public BoundType lowerBoundType() {
        return this.lowerBound.typeAsLowerBound();
    }

    public boolean hasUpperBound() {
        return this.upperBound != Cut.aboveAll();
    }

    public C upperEndpoint() {
        return this.upperBound.endpoint();
    }

    public BoundType upperBoundType() {
        return this.upperBound.typeAsUpperBound();
    }

    public boolean isEmpty() {
        return this.lowerBound.equals(this.upperBound);
    }

    public boolean contains(C value) {
        Preconditions.checkNotNull(value);
        return this.lowerBound.isLessThan(value) && !this.upperBound.isLessThan(value);
    }

    @Override
    public boolean apply(C input) {
        return this.contains(input);
    }

    public boolean containsAll(Iterable<? extends C> values) {
        if (Iterables.isEmpty(values)) {
            return true;
        }
        if (values instanceof SortedSet) {
            SortedSet<C> set = Range.cast(values);
            Comparator<? extends C> comparator = set.comparator();
            if (Ordering.natural().equals(comparator) || comparator == null) {
                return this.contains((Comparable)set.first()) && this.contains((Comparable)set.last());
            }
        }
        for (Comparable value : values) {
            if (this.contains(value)) continue;
            return false;
        }
        return true;
    }

    public boolean encloses(Range<C> other) {
        return this.lowerBound.compareTo(other.lowerBound) <= 0 && this.upperBound.compareTo(other.upperBound) >= 0;
    }

    public Range<C> intersection(Range<C> other) {
        Cut<C> newLower = Ordering.natural().max(this.lowerBound, other.lowerBound);
        Cut<C> newUpper = Ordering.natural().min(this.upperBound, other.upperBound);
        return Ranges.create(newLower, newUpper);
    }

    public boolean isConnected(Range<C> other) {
        return this.lowerBound.compareTo(other.upperBound) <= 0 && other.lowerBound.compareTo(this.upperBound) <= 0;
    }

    public Range<C> span(Range<C> other) {
        Cut<C> newLower = Ordering.natural().min(this.lowerBound, other.lowerBound);
        Cut<C> newUpper = Ordering.natural().max(this.upperBound, other.upperBound);
        return Ranges.create(newLower, newUpper);
    }

    @GwtCompatible(serializable=false)
    public ContiguousSet<C> asSet(DiscreteDomain<C> domain) {
        Preconditions.checkNotNull(domain);
        Range<C> effectiveRange = this;
        try {
            if (!this.hasLowerBound()) {
                effectiveRange = effectiveRange.intersection(Ranges.atLeast(domain.minValue()));
            }
            if (!this.hasUpperBound()) {
                effectiveRange = effectiveRange.intersection(Ranges.atMost(domain.maxValue()));
            }
        }
        catch (NoSuchElementException e) {
            throw new IllegalArgumentException(e);
        }
        boolean empty = effectiveRange.isEmpty() || Range.compareOrThrow(this.lowerBound.leastValueAbove(domain), this.upperBound.greatestValueBelow(domain)) > 0;
        return empty ? new EmptyContiguousSet<C>(domain) : new RegularContiguousSet<C>(effectiveRange, domain);
    }

    public Range<C> canonical(DiscreteDomain<C> domain) {
        Preconditions.checkNotNull(domain);
        Cut<C> lower = this.lowerBound.canonical(domain);
        Cut<C> upper = this.upperBound.canonical(domain);
        return lower == this.lowerBound && upper == this.upperBound ? this : Ranges.create(lower, upper);
    }

    @Override
    public boolean equals(@Nullable Object object) {
        if (object instanceof Range) {
            Range other = (Range)object;
            return this.lowerBound.equals(other.lowerBound) && this.upperBound.equals(other.upperBound);
        }
        return false;
    }

    public int hashCode() {
        return this.lowerBound.hashCode() * 31 + this.upperBound.hashCode();
    }

    public String toString() {
        return Range.toString(this.lowerBound, this.upperBound);
    }

    private static String toString(Cut<?> lowerBound, Cut<?> upperBound) {
        StringBuilder sb = new StringBuilder(16);
        lowerBound.describeAsLowerBound(sb);
        sb.append('\u2025');
        upperBound.describeAsUpperBound(sb);
        return sb.toString();
    }

    private static <T> SortedSet<T> cast(Iterable<T> iterable) {
        return (SortedSet)iterable;
    }

    static int compareOrThrow(Comparable left, Comparable right) {
        return left.compareTo(right);
    }
}

