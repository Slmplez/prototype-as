/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 */
package org.eclipse.equinox.p2.query;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.internal.p2.metadata.expression.CompoundIterator;
import org.eclipse.equinox.internal.p2.metadata.index.CompoundIndex;
import org.eclipse.equinox.internal.p2.metadata.index.IndexProvider;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.KeyWithLocale;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.index.IIndex;
import org.eclipse.equinox.p2.metadata.index.IIndexProvider;
import org.eclipse.equinox.p2.query.Collector;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.IQueryable;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class CompoundQueryable<T>
extends IndexProvider<T> {
    private IQueryable<T>[] queryables;

    public CompoundQueryable(IQueryable<T>[] queryables) {
        this.queryables = queryables;
    }

    CompoundQueryable(Collection<? extends IQueryable<T>> queryables) {
        this(queryables.toArray(new IQueryable[queryables.size()]));
    }

    CompoundQueryable(IQueryable<T> query1, IQueryable<T> query2) {
        this(new IQueryable[]{query1, query2});
    }

    @Override
    public IIndex<T> getIndex(String memberName) {
        boolean found = false;
        IQueryable<T>[] iQueryableArray = this.queryables;
        int n = this.queryables.length;
        int n2 = 0;
        while (n2 < n) {
            IIndexProvider ip;
            IQueryable<T> queryable = iQueryableArray[n2];
            if (queryable instanceof IIndexProvider && (ip = (IIndexProvider)((Object)queryable)).getIndex(memberName) != null) {
                found = true;
                break;
            }
            ++n2;
        }
        if (!found) {
            return null;
        }
        ArrayList indexes = new ArrayList(this.queryables.length);
        IQueryable<T>[] iQueryableArray2 = this.queryables;
        int n3 = this.queryables.length;
        n = 0;
        while (n < n3) {
            IQueryable<T> queryable = iQueryableArray2[n];
            if (queryable instanceof IIndexProvider) {
                IIndexProvider ip = (IIndexProvider)((Object)queryable);
                IIndex index = ip.getIndex(memberName);
                if (index != null) {
                    indexes.add(index);
                } else {
                    indexes.add(new PassThroughIndex(ip.everything()));
                }
            } else {
                indexes.add(new PassThroughIndex<T>(CompoundQueryable.getIteratorFromQueryable(queryable)));
            }
            ++n;
        }
        return indexes.size() == 1 ? (IIndex)indexes.get(0) : new CompoundIndex(indexes);
    }

    @Override
    public Iterator<T> everything() {
        if (this.queryables.length == 0) {
            return CollectionUtils.emptySet().iterator();
        }
        if (this.queryables.length == 1) {
            return CompoundQueryable.getIteratorFromQueryable(this.queryables[0]);
        }
        ArrayList<Iterator<T>> iterators = new ArrayList<Iterator<T>>(this.queryables.length);
        IQueryable<T>[] iQueryableArray = this.queryables;
        int n = this.queryables.length;
        int n2 = 0;
        while (n2 < n) {
            IQueryable<T> queryable = iQueryableArray[n2];
            iterators.add(CompoundQueryable.getIteratorFromQueryable(queryable));
            ++n2;
        }
        return new CompoundIterator(iterators.iterator());
    }

    @Override
    public Object getManagedProperty(Object client, String memberName, Object key) {
        IQueryable<T>[] iQueryableArray = this.queryables;
        int n = this.queryables.length;
        int n2 = 0;
        while (n2 < n) {
            IIndexProvider ip;
            Object value;
            IQueryable<T> queryable = iQueryableArray[n2];
            if (queryable instanceof IIndexProvider && (value = (ip = (IIndexProvider)((Object)queryable)).getManagedProperty(client, memberName, key)) != null) {
                return value;
            }
            ++n2;
        }
        if (client instanceof IInstallableUnit && memberName.equals("translatedProperties")) {
            IInstallableUnit iu = (IInstallableUnit)client;
            return key instanceof KeyWithLocale ? iu.getProperty(((KeyWithLocale)key).getKey()) : iu.getProperty(key.toString());
        }
        return null;
    }

    private static <T> Iterator<T> getIteratorFromQueryable(IQueryable<T> queryable) {
        if (queryable instanceof IIndexProvider) {
            IIndexProvider ip = (IIndexProvider)((Object)queryable);
            return ip.everything();
        }
        IteratorCapture capture = new IteratorCapture();
        queryable.query(capture, (IProgressMonitor)new NullProgressMonitor());
        return capture.getCapturedIterator();
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class IteratorCapture<T>
    implements IQuery<T> {
        private Iterator<T> capturedIterator;

        IteratorCapture() {
        }

        @Override
        public IQueryResult<T> perform(Iterator<T> iterator) {
            this.capturedIterator = iterator;
            return Collector.emptyCollector();
        }

        @Override
        public IExpression getExpression() {
            return null;
        }

        Iterator<T> getCapturedIterator() {
            return this.capturedIterator == null ? CollectionUtils.emptySet().iterator() : this.capturedIterator;
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class PassThroughIndex<T>
    implements IIndex<T> {
        private final Iterator<T> iterator;

        public PassThroughIndex(Iterator<T> iterator) {
            this.iterator = iterator;
        }

        @Override
        public Iterator<T> getCandidates(IEvaluationContext ctx, IExpression variable, IExpression booleanExpr) {
            return this.iterator;
        }
    }
}

