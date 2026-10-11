/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.services;

import java.util.Comparator;
import org.eclipse.ui.internal.services.IEvaluationResultCache;
import org.eclipse.ui.internal.util.Util;

public final class EvaluationResultCacheComparator
implements Comparator {
    public final int compare(Object object1, Object object2) {
        int comparison;
        if (Util.equals(object2, object1)) {
            return 0;
        }
        IEvaluationResultCache cache1 = (IEvaluationResultCache)object1;
        IEvaluationResultCache cache2 = (IEvaluationResultCache)object2;
        if (object1 instanceof Comparable && object2 instanceof Comparable && (comparison = Util.compare((Comparable)object2, (Comparable)object1)) != 0) {
            return comparison;
        }
        return Util.compareIdentity(cache2, cache1);
    }
}

