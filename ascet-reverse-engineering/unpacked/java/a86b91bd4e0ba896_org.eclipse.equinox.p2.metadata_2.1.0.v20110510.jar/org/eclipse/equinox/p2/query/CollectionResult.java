/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
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
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CollectionResult<T>
implements IQueryResult<T> {
    private final Collection<T> collection;

    public CollectionResult(Collection<T> collection) {
        this.collection = collection == null ? CollectionUtils.emptySet() : collection;
    }

    @Override
    public IQueryResult<T> query(IQuery<T> query, IProgressMonitor monitor) {
        return query.perform(this.iterator());
    }

    @Override
    public boolean isEmpty() {
        return this.collection.isEmpty();
    }

    @Override
    public Iterator<T> iterator() {
        return this.collection.iterator();
    }

    @Override
    public T[] toArray(Class<T> clazz) {
        int size = this.collection.size();
        Object[] result = (Object[])Array.newInstance(clazz, size);
        if (size != 0) {
            this.collection.toArray(result);
        }
        return result;
    }

    @Override
    public Set<T> toSet() {
        return new HashSet<T>(this.collection);
    }

    @Override
    public Set<T> toUnmodifiableSet() {
        return this.collection instanceof Set ? Collections.unmodifiableSet((Set)this.collection) : this.toSet();
    }
}

