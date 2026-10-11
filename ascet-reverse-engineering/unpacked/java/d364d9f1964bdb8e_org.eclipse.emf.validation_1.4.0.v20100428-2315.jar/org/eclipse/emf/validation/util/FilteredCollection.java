/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.validation.util;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FilteredCollection<E>
extends AbstractCollection<E> {
    private static final Object END_TOKEN = new Object();
    private final Collection<? extends E> filteree;
    private final Filter<? super E> filter;

    public FilteredCollection(Collection<? extends E> collection, Filter<? super E> filter) {
        this.filteree = collection;
        this.filter = filter;
    }

    public final Filter<? super E> getFilter() {
        return this.filter;
    }

    @Override
    public Iterator<E> iterator() {
        return new Iter();
    }

    @Override
    public int size() {
        int result = 0;
        Iterator<E> iter = this.iterator();
        while (iter.hasNext()) {
            ++result;
            iter.next();
        }
        return result;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static interface Filter<E> {
        public boolean accept(E var1);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Iter
    implements Iterator<E> {
        private final Iterator<? extends E> filteredIterator;
        private E next;

        private Iter() {
            this.filteredIterator = FilteredCollection.this.filteree.iterator();
            this.next = END_TOKEN;
        }

        @Override
        public boolean hasNext() {
            if (this.next == END_TOKEN) {
                while (this.filteredIterator.hasNext()) {
                    this.next = this.filteredIterator.next();
                    if (FilteredCollection.this.getFilter().accept(this.next)) break;
                    this.next = END_TOKEN;
                }
            }
            return this.next != END_TOKEN;
        }

        @Override
        public E next() {
            if (!this.hasNext()) {
                throw new NoSuchElementException();
            }
            Object result = this.next;
            this.next = END_TOKEN;
            return result;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }
}

