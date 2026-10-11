/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.learning;

import org.sat4j.minisat.constraints.cnf.WLClause;
import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.DataStructureFactory;
import org.sat4j.minisat.learning.LimitedLearning;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class ClauseOnlyLearning<D extends DataStructureFactory>
extends LimitedLearning<D> {
    private static final long serialVersionUID = 1L;

    @Override
    protected boolean learningCondition(Constr constr) {
        return constr instanceof WLClause;
    }

    public String toString() {
        return "Limit learning to clauses using watched literals only";
    }
}

