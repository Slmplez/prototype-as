/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.equinox.p2.query;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IQueryable<T> {
    public IQueryResult<T> query(IQuery<T> var1, IProgressMonitor var2);
}

