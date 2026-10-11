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
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible
abstract class AbstractMultiset<E>
extends AbstractCollection<E>
implements Multiset<E> {
    private transient Set<E> elementSet;

    AbstractMultiset() {
    }

    @Override
    public abstract Set<Multiset.Entry<E>> entrySet();

    @Override
    public int size() {
        long sum = 0L;
        for (Multiset.Entry<E> entry : this.entrySet()) {
            sum += (long)entry.getCount();
        }
        return (int)Math.min(sum, Integer.MAX_VALUE);
    }

    @Override
    public boolean isEmpty() {
        return this.entrySet().isEmpty();
    }

    @Override
    public boolean contains(@Nullable Object element) {
        return this.elementSet().contains(element);
    }

    @Override
    public Iterator<E> iterator() {
        return new MultisetIterator();
    }

    @Override
    public int count(Object element) {
        for (Multiset.Entry<E> entry : this.entrySet()) {
            if (!Objects.equal(entry.getElement(), element)) continue;
            return entry.getCount();
        }
        return 0;
    }

    @Override
    public boolean add(@Nullable E element) {
        this.add(element, 1);
        return true;
    }

    @Override
    public int add(E element, int occurrences) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean remove(Object element) {
        return this.remove(element, 1) > 0;
    }

    @Override
    public int remove(Object element, int occurrences) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int setCount(E element, int count) {
        return Multisets.setCountImpl(this, element, count);
    }

    @Override
    public boolean setCount(E element, int oldCount, int newCount) {
        return Multisets.setCountImpl(this, element, oldCount, newCount);
    }

    @Override
    public boolean containsAll(Collection<?> elements) {
        return this.elementSet().containsAll(elements);
    }

    @Override
    public boolean addAll(Collection<? extends E> elementsToAdd) {
        if (elementsToAdd.isEmpty()) {
            return false;
        }
        if (elementsToAdd instanceof Multiset) {
            Multiset that = (Multiset)elementsToAdd;
            for (Multiset.Entry entry : that.entrySet()) {
                this.add(entry.getElement(), entry.getCount());
            }
        } else {
            super.addAll(elementsToAdd);
        }
        return true;
    }

    @Override
    public boolean removeAll(Collection<?> elementsToRemove) {
        Collection<?> collection = elementsToRemove instanceof Multiset ? ((Multiset)elementsToRemove).elementSet() : elementsToRemove;
        return this.elementSet().removeAll(collection);
    }

    @Override
    public boolean retainAll(Collection<?> elementsToRetain) {
        Preconditions.checkNotNull(elementsToRetain);
        Iterator<Multiset.Entry<E>> entries = this.entrySet().iterator();
        boolean modified = false;
        while (entries.hasNext()) {
            Multiset.Entry<E> entry = entries.next();
            if (elementsToRetain.contains(entry.getElement())) continue;
            entries.remove();
            modified = true;
        }
        return modified;
    }

    @Override
    public void clear() {
        this.entrySet().clear();
    }

    @Override
    public Set<E> elementSet() {
        Set<E> result = this.elementSet;
        if (result == null) {
            this.elementSet = result = this.createElementSet();
        }
        return result;
    }

    Set<E> createElementSet() {
        return new ElementSet();
    }

    @Override
    public boolean equals(@Nullable Object object) {
        if (object == this) {
            return true;
        }
        if (object instanceof Multiset) {
            Multiset that = (Multiset)object;
            if (this.size() != that.size()) {
                return false;
            }
            for (Multiset.Entry entry : that.entrySet()) {
                if (this.count(entry.getElement()) == entry.getCount()) continue;
                return false;
            }
            return true;
        }
        return false;
    }

    @Override
    public int hashCode() {
        return ((Object)this.entrySet()).hashCode();
    }

    @Override
    public String toString() {
        return this.entrySet().toString();
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class ElementSet
    extends AbstractSet<E> {
        private ElementSet() {
        }

        @Override
        public Iterator<E> iterator() {
            final Iterator entryIterator = AbstractMultiset.this.entrySet().iterator();
            return new Iterator<E>(){

                @Override
                public boolean hasNext() {
                    return entryIterator.hasNext();
                }

                @Override
                public E next() {
                    return ((Multiset.Entry)entryIterator.next()).getElement();
                }

                @Override
                public void remove() {
                    entryIterator.remove();
                }
            };
        }

        @Override
        public int size() {
            return AbstractMultiset.this.entrySet().size();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class MultisetIterator
    implements Iterator<E> {
        private final Iterator<Multiset.Entry<E>> entryIterator;
        private Multiset.Entry<E> currentEntry;
        private int laterCount;
        private int totalCount;
        private boolean canRemove;

        MultisetIterator() {
            this.entryIterator = AbstractMultiset.this.entrySet().iterator();
        }

        @Override
        public boolean hasNext() {
            return this.laterCount > 0 || this.entryIterator.hasNext();
        }

        @Override
        public E next() {
            if (!this.hasNext()) {
                throw new NoSuchElementException();
            }
            if (this.laterCount == 0) {
                this.currentEntry = this.entryIterator.next();
                this.totalCount = this.laterCount = this.currentEntry.getCount();
            }
            --this.laterCount;
            this.canRemove = true;
            return this.currentEntry.getElement();
        }

        @Override
        public void remove() {
            Preconditions.checkState(this.canRemove, "no calls to next() since the last call to remove()");
            if (this.totalCount == 1) {
                this.entryIterator.remove();
            } else {
                AbstractMultiset.this.remove(this.currentEntry.getElement());
            }
            --this.totalCount;
            this.canRemove = false;
        }
    }
}

