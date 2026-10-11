/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.expression.IMatchExpression
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.query.IQueryable
 *  org.eclipse.equinox.p2.query.QueryUtil
 */
package org.eclipse.equinox.p2.publisher.actions;

import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;
import org.eclipse.equinox.p2.publisher.actions.IFilterAdvice;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.IQueryable;
import org.eclipse.equinox.p2.query.QueryUtil;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class QueryableFilterAdvice
implements IFilterAdvice {
    private IQueryable<IInstallableUnit> queryable;

    public QueryableFilterAdvice(IQueryable<IInstallableUnit> queryable) {
        this.queryable = queryable;
    }

    @Override
    public IMatchExpression<IInstallableUnit> getFilter(String id, Version version, boolean exact) {
        IQuery query = QueryUtil.createIUQuery((String)id, (Version)version);
        IQueryResult result = this.queryable.query(query, null);
        if (!result.isEmpty()) {
            return ((IInstallableUnit)result.iterator().next()).getFilter();
        }
        if (exact) {
            return null;
        }
        query = QueryUtil.createIUQuery((String)id);
        result = this.queryable.query(query, null);
        if (!result.isEmpty()) {
            return ((IInstallableUnit)result.iterator().next()).getFilter();
        }
        return null;
    }

    @Override
    public boolean isApplicable(String configSpec, boolean includeDefault, String id, Version version) {
        return true;
    }
}

