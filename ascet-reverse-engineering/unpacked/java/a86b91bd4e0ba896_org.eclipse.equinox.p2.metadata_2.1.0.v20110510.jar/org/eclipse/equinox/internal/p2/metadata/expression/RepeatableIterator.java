/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import org.eclipse.equinox.internal.p2.metadata.expression.IRepeatableIterator;
import org.eclipse.equinox.p2.metadata.index.IIndexProvider;
import org.eclipse.equinox.p2.query.IQueryResult;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class RepeatableIterator<T>
implements IRepeatableIterator<T> {
    private final Collection<T> values;
    private final Iterator<T> iterator;

    public static <T> IRepeatableIterator<T> create(Object unknown) {
        if (unknown.getClass().isArray()) {
            return RepeatableIterator.create((Object[])unknown);
        }
        if (unknown instanceof Iterator) {
            return RepeatableIterator.create((Iterator)unknown);
        }
        if (unknown instanceof List) {
            return RepeatableIterator.create((List)unknown);
        }
        if (unknown instanceof Collection) {
            return RepeatableIterator.create((Collection)unknown);
        }
        if (unknown instanceof Map) {
            return RepeatableIterator.create(((Map)unknown).entrySet());
        }
        if (unknown instanceof IQueryResult) {
            return RepeatableIterator.create((IQueryResult)unknown);
        }
        if (unknown instanceof IIndexProvider) {
            return RepeatableIterator.create((IIndexProvider)unknown);
        }
        throw new IllegalArgumentException(new StringBuffer("Cannot convert a ").append(unknown.getClass().getName()).append(" into an iterator").toString());
    }

    public static <T> IRepeatableIterator<T> create(Iterator<T> iterator) {
        return iterator instanceof IRepeatableIterator ? ((IRepeatableIterator)iterator).getCopy() : new RepeatableIterator<T>(iterator);
    }

    public static <T> IRepeatableIterator<T> create(Collection<T> values) {
        return new RepeatableIterator<T>(values);
    }

    public static <T> IRepeatableIterator<T> create(IQueryResult<T> values) {
        return new QueryResultIterator<T>(values);
    }

    public static <T> IRepeatableIterator<T> create(T[] values) {
        return new ArrayIterator<T>(values);
    }

    public static <T> IRepeatableIterator<T> create(IIndexProvider<T> values) {
        return new IndexProviderIterator<T>(values);
    }

    RepeatableIterator(Iterator<T> iterator) {
        HashSet<T> v = new HashSet<T>();
        while (iterator.hasNext()) {
            v.add(iterator.next());
        }
        this.values = v;
        this.iterator = v.iterator();
    }

    RepeatableIterator(Collection<T> values) {
        this.values = values;
        this.iterator = values.iterator();
    }

    @Override
    public IRepeatableIterator<T> getCopy() {
        return new RepeatableIterator<T>(this.values);
    }

    @Override
    public boolean hasNext() {
        return this.iterator.hasNext();
    }

    @Override
    public T next() {
        return this.iterator.next();
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException();
    }

    @Override
    public Object getIteratorProvider() {
        return this.values;
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class ArrayIterator<T>
    implements IRepeatableIterator<T> {
        private final T[] array;
        private int position = -1;

        public ArrayIterator(T[] array) {
            this.array = array;
        }

        @Override
        public Object getIteratorProvider() {
            return this.array;
        }

        @Override
        public boolean hasNext() {
            return this.position + 1 < this.array.length;
        }

        @Override
        public T next() {
            if (++this.position >= this.array.length) {
                throw new NoSuchElementException();
            }
            return this.array[this.position];
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public IRepeatableIterator<T> getCopy() {
            return new ArrayIterator<T>(this.array);
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class IndexProviderIterator<T>
    implements IRepeatableIterator<T> {
        private final IIndexProvider<T> indexProvider;
        private final Iterator<T> iterator;

        IndexProviderIterator(IIndexProvider<T> indexProvider) {
            this.iterator = indexProvider.everything();
            this.indexProvider = indexProvider;
        }

        @Override
        public IRepeatableIterator<T> getCopy() {
            return new IndexProviderIterator<T>(this.indexProvider);
        }

        @Override
        public Object getIteratorProvider() {
            return this.indexProvider;
        }

        @Override
        public boolean hasNext() {
            return this.iterator.hasNext();
        }

        @Override
        public T next() {
            return this.iterator.next();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class QueryResultIterator<T>
    implements IRepeatableIterator<T> {
        private final IQueryResult<T> queryResult;
        private final Iterator<T> iterator;

        QueryResultIterator(IQueryResult<T> queryResult) {
            this.queryResult = queryResult;
            this.iterator = queryResult.iterator();
        }

        @Override
        public IRepeatableIterator<T> getCopy() {
            return new QueryResultIterator<T>(this.queryResult);
        }

        @Override
        public Object getIteratorProvider() {
            return this.queryResult;
        }

        @Override
        public boolean hasNext() {
            return this.iterator.hasNext();
        }

        @Override
        public T next() {
            return this.iterator.next();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }
}

