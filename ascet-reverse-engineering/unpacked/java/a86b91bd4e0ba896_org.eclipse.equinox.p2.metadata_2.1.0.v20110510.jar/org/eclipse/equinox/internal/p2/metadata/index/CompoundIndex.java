/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 */
package org.eclipse.equinox.internal.p2.metadata.index;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.index.IIndex;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CompoundIndex<T>
implements IIndex<T> {
    private final Collection<IIndex<T>> indexes;

    public CompoundIndex(Collection<IIndex<T>> indexes) {
        this.indexes = indexes;
    }

    @Override
    public Iterator<T> getCandidates(IEvaluationContext ctx, IExpression variable, IExpression booleanExpr) {
        HashSet<T> result = null;
        for (IIndex<T> index : this.indexes) {
            Iterator<T> indexResult = index.getCandidates(ctx, variable, booleanExpr);
            if (indexResult == null) {
                return null;
            }
            if (!indexResult.hasNext()) continue;
            if (result == null) {
                result = new HashSet<T>();
            }
            do {
                result.add(indexResult.next());
            } while (indexResult.hasNext());
        }
        if (result == null) {
            result = CollectionUtils.emptySet();
        }
        return result.iterator();
    }
}

