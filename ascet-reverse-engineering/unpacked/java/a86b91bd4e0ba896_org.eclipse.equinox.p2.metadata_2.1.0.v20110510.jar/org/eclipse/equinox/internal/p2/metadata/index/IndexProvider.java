/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.equinox.internal.p2.metadata.index;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.equinox.p2.metadata.index.IIndexProvider;
import org.eclipse.equinox.p2.metadata.index.IQueryWithIndex;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.IQueryable;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class IndexProvider<T>
implements IIndexProvider<T>,
IQueryable<T> {
    public static <Q> IQueryResult<Q> query(IIndexProvider<Q> indexProvider, IQuery<Q> query, IProgressMonitor monitor) {
        IQueryResult<Q> result;
        if (monitor != null) {
            monitor.beginTask(null, -1);
        }
        IQueryResult<Q> iQueryResult = result = query instanceof IQueryWithIndex ? ((IQueryWithIndex)query).perform(indexProvider) : query.perform(indexProvider.everything());
        if (monitor != null) {
            monitor.worked(1);
            monitor.done();
        }
        return result;
    }

    @Override
    public IQueryResult<T> query(IQuery<T> query, IProgressMonitor monitor) {
        return IndexProvider.query(this, query, monitor);
    }
}

