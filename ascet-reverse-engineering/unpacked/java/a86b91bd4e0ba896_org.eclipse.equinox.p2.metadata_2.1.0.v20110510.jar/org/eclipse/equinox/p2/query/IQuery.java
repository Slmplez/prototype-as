/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.query;

import java.util.Iterator;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.query.IQueryResult;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IQuery<T> {
    public IQueryResult<T> perform(Iterator<T> var1);

    public IExpression getExpression();
}

