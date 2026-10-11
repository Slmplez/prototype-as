/*
 * Decompiled with CFR 0.152.
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.BoundType;
import com.google.common.collect.ForwardingMultiset;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.collect.Ordering;
import com.google.common.collect.SortedMultiset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedSet;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible
final class SortedMultisets {
    private SortedMultisets() {
    }

    private static <E> E getElementOrThrow(Multiset.Entry<E> entry) {
        if (entry == null) {
            throw new NoSuchElementException();
        }
        return entry.getElement();
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static abstract class DescendingMultiset<E>
    extends ForwardingMultiset<E>
    implements SortedMultiset<E> {
        private transient Comparator<? super E> comparator;
        private transient SortedSet<E> elementSet;
        private transient Set<Multiset.Entry<E>> entrySet;

        DescendingMultiset() {
        }

        abstract SortedMultiset<E> forwardMultiset();

        @Override
        public Comparator<? super E> comparator() {
            Comparator<? super E> result = this.comparator;
            if (result == null) {
                this.comparator = Ordering.from(this.forwardMultiset().comparator()).reverse();
                return this.comparator;
            }
            return result;
        }

        @Override
        public SortedSet<E> elementSet() {
            SortedSet<E> result = this.elementSet;
            if (result == null) {
                this.elementSet = new ElementSet<E>(){

                    @Override
                    SortedMultiset<E> multiset() {
                        return DescendingMultiset.this;
                    }
                };
                return this.elementSet;
            }
            return result;
        }

        @Override
        public Multiset.Entry<E> pollFirstEntry() {
            return this.forwardMultiset().pollLastEntry();
        }

        @Override
        public Multiset.Entry<E> pollLastEntry() {
            return this.forwardMultiset().pollFirstEntry();
        }

        @Override
        public SortedMultiset<E> headMultiset(E toElement, BoundType boundType) {
            return this.forwardMultiset().tailMultiset(toElement, boundType).descendingMultiset();
        }

        @Override
        public SortedMultiset<E> subMultiset(E fromElement, BoundType fromBoundType, E toElement, BoundType toBoundType) {
            return this.forwardMultiset().subMultiset(toElement, toBoundType, fromElement, fromBoundType).descendingMultiset();
        }

        @Override
        public SortedMultiset<E> tailMultiset(E fromElement, BoundType boundType) {
            return this.forwardMultiset().headMultiset(fromElement, boundType).descendingMultiset();
        }

        @Override
        protected Multiset<E> delegate() {
            return this.forwardMultiset();
        }

        @Override
        public SortedMultiset<E> descendingMultiset() {
            return this.forwardMultiset();
        }

        @Override
        public Multiset.Entry<E> firstEntry() {
            return this.forwardMultiset().lastEntry();
        }

        @Override
        public Multiset.Entry<E> lastEntry() {
            return this.forwardMultiset().firstEntry();
        }

        abstract Iterator<Multiset.Entry<E>> entryIterator();

        @Override
        public Set<Multiset.Entry<E>> entrySet() {
            Set<Multiset.Entry<Multiset.Entry<E>>> result = this.entrySet;
            return result == null ? (this.entrySet = this.createEntrySet()) : result;
        }

        Set<Multiset.Entry<E>> createEntrySet() {
            return new Multisets.EntrySet<E>(){

                @Override
                Multiset<E> multiset() {
                    return DescendingMultiset.this;
                }

                @Override
                public Iterator<Multiset.Entry<E>> iterator() {
                    return DescendingMultiset.this.entryIterator();
                }

                @Override
                public int size() {
                    return DescendingMultiset.this.forwardMultiset().entrySet().size();
                }
            };
        }

        @Override
        public Iterator<E> iterator() {
            return Multisets.iteratorImpl(this);
        }

        @Override
        public Object[] toArray() {
            return this.standardToArray();
        }

        @Override
        public <T> T[] toArray(T[] array) {
            return this.standardToArray(array);
        }

        @Override
        public String toString() {
            return this.entrySet().toString();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static abstract class ElementSet<E>
    extends Multisets.ElementSet<E>
    implements SortedSet<E> {
        ElementSet() {
        }

        @Override
        abstract SortedMultiset<E> multiset();

        @Override
        public Comparator<? super E> comparator() {
            return this.multiset().comparator();
        }

        @Override
        public SortedSet<E> subSet(E fromElement, E toElement) {
            return this.multiset().subMultiset(fromElement, BoundType.CLOSED, toElement, BoundType.OPEN).elementSet();
        }

        @Override
        public SortedSet<E> headSet(E toElement) {
            return this.multiset().headMultiset(toElement, BoundType.OPEN).elementSet();
        }

        @Override
        public SortedSet<E> tailSet(E fromElement) {
            return this.multiset().tailMultiset(fromElement, BoundType.CLOSED).elementSet();
        }

        @Override
        public E first() {
            return (E)SortedMultisets.getElementOrThrow(this.multiset().firstEntry());
        }

        @Override
        public E last() {
            return (E)SortedMultisets.getElementOrThrow(this.multiset().lastEntry());
        }
    }
}

