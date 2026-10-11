/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.metadata.index;

import org.eclipse.equinox.p2.metadata.index.IIndexProvider;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IQueryWithIndex<T>
extends IQuery<T> {
    @Override
    public IQueryResult<T> perform(IIndexProvider<T> var1);
}

