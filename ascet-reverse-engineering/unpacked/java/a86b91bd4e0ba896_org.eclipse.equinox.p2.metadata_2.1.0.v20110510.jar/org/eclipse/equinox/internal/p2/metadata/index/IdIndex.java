/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.index;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import org.eclipse.equinox.internal.p2.metadata.IUMap;
import org.eclipse.equinox.internal.p2.metadata.index.Index;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.expression.IExpression;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class IdIndex
extends Index<IInstallableUnit> {
    private final IUMap iuMap;

    public IdIndex(IUMap iuMap) {
        this.iuMap = iuMap;
    }

    public IdIndex(Iterator<IInstallableUnit> ius) {
        this.iuMap = new IUMap();
        while (ius.hasNext()) {
            this.iuMap.add(ius.next());
        }
    }

    @Override
    public Iterator<IInstallableUnit> getCandidates(IEvaluationContext ctx, IExpression variable, IExpression booleanExpr) {
        Object queriedKeys = this.getQueriedIDs(ctx, variable, "id", booleanExpr, null);
        if (queriedKeys == null) {
            return null;
        }
        if (queriedKeys instanceof Collection) {
            HashSet<IInstallableUnit> collector = new HashSet<IInstallableUnit>();
            for (Object key : (Collection)queriedKeys) {
                collector.addAll(this.iuMap.getUnits((String)key));
            }
            return collector.iterator();
        }
        return this.iuMap.getUnits((String)queriedKeys).iterator();
    }
}

