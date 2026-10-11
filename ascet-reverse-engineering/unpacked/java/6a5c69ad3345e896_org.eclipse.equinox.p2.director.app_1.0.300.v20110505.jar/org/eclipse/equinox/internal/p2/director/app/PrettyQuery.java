/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.expression.IExpression
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 */
package org.eclipse.equinox.internal.p2.director.app;

import java.util.Iterator;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PrettyQuery<T>
implements IQuery<T> {
    private IQuery<T> decorated;
    private String userString;

    public PrettyQuery(IQuery<T> toDecorate, String userReadable) {
        this.decorated = toDecorate;
        this.userString = userReadable;
    }

    public IQueryResult<T> perform(Iterator<T> iterator) {
        return this.decorated.perform(iterator);
    }

    public IExpression getExpression() {
        return this.decorated.getExpression();
    }

    public String toString() {
        if (this.userString != null) {
            return this.userString;
        }
        return this.decorated.toString();
    }
}

