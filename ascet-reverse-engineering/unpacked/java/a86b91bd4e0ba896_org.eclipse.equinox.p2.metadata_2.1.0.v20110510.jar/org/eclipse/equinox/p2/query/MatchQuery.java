/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.query;

import java.util.Iterator;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.query.Collector;
import org.eclipse.equinox.p2.query.IMatchQuery;
import org.eclipse.equinox.p2.query.IQueryResult;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class MatchQuery<T>
implements IMatchQuery<T> {
    @Override
    public abstract boolean isMatch(T var1);

    @Override
    public final IQueryResult<T> perform(Iterator<T> iterator) {
        Collector<T> result = new Collector<T>();
        while (iterator.hasNext()) {
            T candidate = iterator.next();
            if (candidate != null && this.isMatch(candidate) && !result.accept(candidate)) break;
        }
        return result;
    }

    public void prePerform() {
    }

    public void postPerform() {
    }

    @Override
    public IExpression getExpression() {
        return null;
    }
}

