/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.equinox.internal.p2.metadata.expression.IRepeatableIterator;
import org.eclipse.equinox.internal.p2.metadata.expression.RepeatableIterator;
import org.eclipse.equinox.p2.metadata.index.IIndexProvider;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class QueryResult<T>
implements IQueryResult<T> {
    private final IRepeatableIterator<T> iterator;
    private boolean firstUse = true;

    public QueryResult(Iterator<T> iterator) {
        this.iterator = iterator instanceof IRepeatableIterator ? (IRepeatableIterator<T>)iterator : RepeatableIterator.create(iterator);
    }

    public QueryResult(Collection<T> collection) {
        this.iterator = RepeatableIterator.create(collection);
    }

    @Override
    public boolean isEmpty() {
        return !this.iterator.hasNext();
    }

    @Override
    public Iterator<T> iterator() {
        if (this.firstUse) {
            this.firstUse = false;
            return this.iterator;
        }
        return this.iterator.getCopy();
    }

    @Override
    public T[] toArray(Class<T> clazz) {
        Object provider = this.iterator.getIteratorProvider();
        if (provider.getClass().isArray()) {
            return (Object[])provider;
        }
        Set<Object> c = this.toUnmodifiableSet();
        return c.toArray((Object[])Array.newInstance(clazz, c.size()));
    }

    @Override
    public Set<T> toSet() {
        Object provider = this.iterator.getIteratorProvider();
        if (provider instanceof Collection) {
            return new HashSet((Collection)provider);
        }
        if (provider instanceof IIndexProvider) {
            return this.iteratorToSet(((IIndexProvider)provider).everything());
        }
        if (provider.getClass().isArray()) {
            Object[] elems = (Object[])provider;
            int idx = elems.length;
            HashSet<Object> copy = new HashSet<Object>(idx);
            while (--idx >= 0) {
                copy.add(elems[idx]);
            }
            return copy;
        }
        if (provider instanceof Map) {
            return new HashSet(((Map)provider).entrySet());
        }
        return this.iteratorToSet(this.iterator());
    }

    @Override
    public IQueryResult<T> query(IQuery<T> query, IProgressMonitor monitor) {
        return query.perform(this.iterator());
    }

    @Override
    public Set<T> toUnmodifiableSet() {
        Object provider = this.iterator.getIteratorProvider();
        if (provider instanceof Set) {
            return Collections.unmodifiableSet((Set)provider);
        }
        if (provider instanceof Map) {
            return Collections.unmodifiableSet(((Map)provider).entrySet());
        }
        return this.toSet();
    }

    private Set<T> iteratorToSet(Iterator<T> iter) {
        HashSet<T> set = new HashSet<T>();
        while (iter.hasNext()) {
            set.add(iter.next());
        }
        return set;
    }
}

