/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ForwardingCollection;
import com.google.common.collect.ForwardingMultiset;
import com.google.common.collect.ForwardingSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.Multiset;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible
public final class Multisets {
    private Multisets() {
    }

    public static <E> Multiset<E> unmodifiableMultiset(Multiset<? extends E> multiset) {
        return new UnmodifiableMultiset<E>(multiset);
    }

    public static <E> Multiset.Entry<E> immutableEntry(final @Nullable E e, final int n) {
        Preconditions.checkArgument(n >= 0);
        return new AbstractEntry<E>(){

            @Override
            public E getElement() {
                return e;
            }

            @Override
            public int getCount() {
                return n;
            }
        };
    }

    static <E> Multiset<E> forSet(Set<E> set) {
        return new SetMultiset<E>(set);
    }

    static int inferDistinctElements(Iterable<?> elements) {
        if (elements instanceof Multiset) {
            return ((Multiset)elements).elementSet().size();
        }
        return 11;
    }

    static <E> int setCountImpl(Multiset<E> self, E element, int count) {
        Multisets.checkNonnegative(count, "count");
        int oldCount = self.count(element);
        int delta = count - oldCount;
        if (delta > 0) {
            self.add(element, delta);
        } else if (delta < 0) {
            self.remove(element, -delta);
        }
        return oldCount;
    }

    static <E> boolean setCountImpl(Multiset<E> self, E element, int oldCount, int newCount) {
        Multisets.checkNonnegative(oldCount, "oldCount");
        Multisets.checkNonnegative(newCount, "newCount");
        if (self.count(element) == oldCount) {
            self.setCount(element, newCount);
            return true;
        }
        return false;
    }

    static void checkNonnegative(int count, String name) {
        Preconditions.checkArgument(count >= 0, "%s cannot be negative: %s", name, count);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static abstract class AbstractEntry<E>
    implements Multiset.Entry<E> {
        AbstractEntry() {
        }

        @Override
        public boolean equals(@Nullable Object object) {
            if (object instanceof Multiset.Entry) {
                Multiset.Entry that = (Multiset.Entry)object;
                return this.getCount() == that.getCount() && Objects.equal(this.getElement(), that.getElement());
            }
            return false;
        }

        @Override
        public int hashCode() {
            Object e = this.getElement();
            return (e == null ? 0 : e.hashCode()) ^ this.getCount();
        }

        @Override
        public String toString() {
            String text = String.valueOf(this.getElement());
            int n = this.getCount();
            return n == 1 ? text : text + " x " + n;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class SetMultiset<E>
    extends ForwardingCollection<E>
    implements Multiset<E>,
    Serializable {
        final Set<E> delegate;
        transient Set<E> elementSet;
        transient Set<Multiset.Entry<E>> entrySet;
        private static final long serialVersionUID = 0L;

        SetMultiset(Set<E> set) {
            this.delegate = Preconditions.checkNotNull(set);
        }

        @Override
        protected Set<E> delegate() {
            return this.delegate;
        }

        @Override
        public int count(Object element) {
            return this.delegate.contains(element) ? 1 : 0;
        }

        @Override
        public int add(E element, int occurrences) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int remove(Object element, int occurrences) {
            if (occurrences == 0) {
                return this.count(element);
            }
            Preconditions.checkArgument(occurrences > 0);
            return this.delegate.remove(element) ? 1 : 0;
        }

        @Override
        public Set<E> elementSet() {
            ElementSet es = this.elementSet;
            return es == null ? (this.elementSet = new ElementSet()) : es;
        }

        @Override
        public Set<Multiset.Entry<E>> entrySet() {
            EntrySet es = this.entrySet;
            return es == null ? (this.entrySet = new EntrySet()) : es;
        }

        @Override
        public boolean add(E o) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends E> c) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int setCount(E element, int count) {
            Multisets.checkNonnegative(count, "count");
            if (count == this.count(element)) {
                return count;
            }
            if (count == 0) {
                this.remove(element);
                return 1;
            }
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean setCount(E element, int oldCount, int newCount) {
            return Multisets.setCountImpl(this, element, oldCount, newCount);
        }

        @Override
        public boolean equals(@Nullable Object object) {
            if (object instanceof Multiset) {
                Multiset that = (Multiset)object;
                return this.size() == that.size() && ((Object)this.delegate).equals(that.elementSet());
            }
            return false;
        }

        @Override
        public int hashCode() {
            int sum = 0;
            for (Object e : this) {
                sum += (e == null ? 0 : e.hashCode()) ^ 1;
            }
            return sum;
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        class ElementSet
        extends ForwardingSet<E> {
            ElementSet() {
            }

            @Override
            protected Set<E> delegate() {
                return SetMultiset.this.delegate;
            }

            @Override
            public boolean add(E o) {
                throw new UnsupportedOperationException();
            }

            @Override
            public boolean addAll(Collection<? extends E> c) {
                throw new UnsupportedOperationException();
            }
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        class EntrySet
        extends AbstractSet<Multiset.Entry<E>> {
            EntrySet() {
            }

            @Override
            public int size() {
                return SetMultiset.this.delegate.size();
            }

            @Override
            public Iterator<Multiset.Entry<E>> iterator() {
                return new Iterator<Multiset.Entry<E>>(){
                    final Iterator<E> elements;
                    {
                        this.elements = SetMultiset.this.delegate.iterator();
                    }

                    @Override
                    public boolean hasNext() {
                        return this.elements.hasNext();
                    }

                    @Override
                    public Multiset.Entry<E> next() {
                        return Multisets.immutableEntry(this.elements.next(), 1);
                    }

                    @Override
                    public void remove() {
                        this.elements.remove();
                    }
                };
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class UnmodifiableMultiset<E>
    extends ForwardingMultiset<E>
    implements Serializable {
        final Multiset<? extends E> delegate;
        transient Set<E> elementSet;
        transient Set<Multiset.Entry<E>> entrySet;
        private static final long serialVersionUID = 0L;

        UnmodifiableMultiset(Multiset<? extends E> delegate) {
            this.delegate = delegate;
        }

        @Override
        protected Multiset<E> delegate() {
            return this.delegate;
        }

        @Override
        public Set<E> elementSet() {
            Set<E> es = this.elementSet;
            return es == null ? (this.elementSet = Collections.unmodifiableSet(this.delegate.elementSet())) : es;
        }

        @Override
        public Set<Multiset.Entry<E>> entrySet() {
            Set<Multiset.Entry<Multiset.Entry<E>>> es = this.entrySet;
            return es == null ? (this.entrySet = Collections.unmodifiableSet(this.delegate.entrySet())) : es;
        }

        @Override
        public Iterator<E> iterator() {
            return Iterators.unmodifiableIterator(this.delegate.iterator());
        }

        @Override
        public boolean add(E element) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int add(E element, int occurences) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends E> elementsToAdd) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean remove(Object element) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int remove(Object element, int occurrences) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean removeAll(Collection<?> elementsToRemove) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean retainAll(Collection<?> elementsToRetain) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override
        public int setCount(E element, int count) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean setCount(E element, int oldCount, int newCount) {
            throw new UnsupportedOperationException();
        }
    }
}

