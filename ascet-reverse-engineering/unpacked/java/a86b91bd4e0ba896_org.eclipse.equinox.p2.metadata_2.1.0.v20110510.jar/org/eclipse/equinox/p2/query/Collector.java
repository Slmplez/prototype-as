/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 */
package org.eclipse.equinox.p2.query;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.internal.p2.metadata.Messages;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Collector<T>
implements IQueryResult<T> {
    private Set<T> collected = null;
    public static final Collector<?> EMPTY_COLLECTOR = new Collector<Object>(){

        @Override
        public boolean accept(Object val) {
            return false;
        }
    };

    public static final <T> Collector<T> emptyCollector() {
        return EMPTY_COLLECTOR;
    }

    public boolean accept(T object) {
        this.getCollection().add(object);
        return true;
    }

    public void addAll(IQueryResult<T> queryResult) {
        boolean keepGoing = true;
        Iterator<T> iter = queryResult.iterator();
        while (iter.hasNext() && keepGoing) {
            keepGoing = this.accept(iter.next());
        }
    }

    protected Collection<T> getCollection() {
        if (this.collected == null) {
            this.collected = new HashSet<T>();
        }
        return this.collected;
    }

    @Override
    public boolean isEmpty() {
        return this.collected == null || this.collected.isEmpty();
    }

    @Override
    public Iterator<T> iterator() {
        return this.collected == null ? CollectionUtils.emptyList().iterator() : this.collected.iterator();
    }

    public int size() {
        return this.collected == null ? 0 : this.collected.size();
    }

    @Override
    public T[] toArray(Class<T> clazz) {
        int size = this.collected == null ? 0 : this.collected.size();
        Object[] result = (Object[])Array.newInstance(clazz, size);
        if (size != 0) {
            this.collected.toArray(result);
        }
        return result;
    }

    @Override
    public Set<T> toSet() {
        return this.collected == null ? new HashSet() : new HashSet<T>(this.collected);
    }

    @Override
    public IQueryResult<T> query(IQuery<T> query, IProgressMonitor monitor) {
        IQueryResult<T> result;
        if (monitor == null) {
            monitor = new NullProgressMonitor();
        }
        try {
            monitor.beginTask(Messages.performing_subquery, 1);
            result = query.perform(this.iterator());
            monitor.worked(1);
        }
        finally {
            monitor.done();
        }
        return result;
    }

    @Override
    public Set<T> toUnmodifiableSet() {
        return this.collected == null ? Collections.EMPTY_SET : Collections.unmodifiableSet(this.collected);
    }
}

