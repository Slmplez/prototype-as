/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.ImmutableSortedSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.ObjectArrays;
import com.google.common.collect.UnmodifiableIterator;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible(serializable=true)
final class RegularImmutableSortedSet<E>
extends ImmutableSortedSet<E> {
    private final Object[] elements;
    private final int fromIndex;
    private final int toIndex;

    RegularImmutableSortedSet(Object[] elements, Comparator<? super E> comparator) {
        super(comparator);
        this.elements = elements;
        this.fromIndex = 0;
        this.toIndex = elements.length;
    }

    RegularImmutableSortedSet(Object[] elements, Comparator<? super E> comparator, int fromIndex, int toIndex) {
        super(comparator);
        this.elements = elements;
        this.fromIndex = fromIndex;
        this.toIndex = toIndex;
    }

    @Override
    public UnmodifiableIterator<E> iterator() {
        return Iterators.forArray(this.elements, this.fromIndex, this.size());
    }

    @Override
    public boolean isEmpty() {
        return false;
    }

    @Override
    public int size() {
        return this.toIndex - this.fromIndex;
    }

    @Override
    public boolean contains(Object o) {
        if (o == null) {
            return false;
        }
        try {
            return this.binarySearch(o) >= 0;
        }
        catch (ClassCastException e) {
            return false;
        }
    }

    @Override
    public boolean containsAll(Collection<?> targets) {
        if (!RegularImmutableSortedSet.hasSameComparator(targets, this.comparator()) || targets.size() <= 1) {
            return super.containsAll(targets);
        }
        int i = this.fromIndex;
        Iterator<?> iterator = targets.iterator();
        Object target = iterator.next();
        while (true) {
            if (i >= this.toIndex) {
                return false;
            }
            int cmp = this.unsafeCompare(this.elements[i], target);
            if (cmp < 0) {
                ++i;
                continue;
            }
            if (cmp == 0) {
                if (!iterator.hasNext()) {
                    return true;
                }
                target = iterator.next();
                ++i;
                continue;
            }
            if (cmp > 0) break;
        }
        return false;
    }

    private int binarySearch(Object key) {
        int lower = this.fromIndex;
        int upper = this.toIndex - 1;
        while (lower <= upper) {
            int middle = lower + (upper - lower) / 2;
            int c = this.unsafeCompare(key, this.elements[middle]);
            if (c < 0) {
                upper = middle - 1;
                continue;
            }
            if (c > 0) {
                lower = middle + 1;
                continue;
            }
            return middle;
        }
        return -lower - 1;
    }

    @Override
    public Object[] toArray() {
        Object[] array = new Object[this.size()];
        System.arraycopy(this.elements, this.fromIndex, array, 0, this.size());
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
        System.arraycopy(this.elements, this.fromIndex, array, 0, size);
        return array;
    }

    @Override
    public boolean equals(@Nullable Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof Set)) {
            return false;
        }
        Set that = (Set)object;
        if (this.size() != that.size()) {
            return false;
        }
        if (RegularImmutableSortedSet.hasSameComparator(that, this.comparator)) {
            Iterator iterator = that.iterator();
            try {
                for (int i = this.fromIndex; i < this.toIndex; ++i) {
                    Object otherElement = iterator.next();
                    if (otherElement != null && this.unsafeCompare(this.elements[i], otherElement) == 0) continue;
                    return false;
                }
                return true;
            }
            catch (ClassCastException e) {
                return false;
            }
            catch (NoSuchElementException e) {
                return false;
            }
        }
        return this.containsAll(that);
    }

    @Override
    public int hashCode() {
        int hash = 0;
        for (int i = this.fromIndex; i < this.toIndex; ++i) {
            hash += this.elements[i].hashCode();
        }
        return hash;
    }

    @Override
    public E first() {
        return (E)this.elements[this.fromIndex];
    }

    @Override
    public E last() {
        return (E)this.elements[this.toIndex - 1];
    }

    @Override
    ImmutableSortedSet<E> headSetImpl(E toElement) {
        return this.createSubset(this.fromIndex, this.findSubsetIndex(toElement));
    }

    @Override
    ImmutableSortedSet<E> subSetImpl(E fromElement, E toElement) {
        return this.createSubset(this.findSubsetIndex(fromElement), this.findSubsetIndex(toElement));
    }

    @Override
    ImmutableSortedSet<E> tailSetImpl(E fromElement) {
        return this.createSubset(this.findSubsetIndex(fromElement), this.toIndex);
    }

    private int findSubsetIndex(E element) {
        int index = this.binarySearch(element);
        return index >= 0 ? index : -index - 1;
    }

    private ImmutableSortedSet<E> createSubset(int newFromIndex, int newToIndex) {
        if (newFromIndex < newToIndex) {
            return new RegularImmutableSortedSet<E>(this.elements, this.comparator, newFromIndex, newToIndex);
        }
        return RegularImmutableSortedSet.emptySet(this.comparator);
    }

    @Override
    boolean hasPartialArray() {
        return this.fromIndex != 0 || this.toIndex != this.elements.length;
    }
}

