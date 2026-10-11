/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.constraints;

import org.sat4j.minisat.constraints.AbstractCardinalityDataStructure;
import org.sat4j.minisat.constraints.card.MinWatchCard;
import org.sat4j.minisat.constraints.cnf.LearntWLClause;
import org.sat4j.minisat.core.Constr;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IVecInt;

public class CardinalityDataStructureYanMin
extends AbstractCardinalityDataStructure {
    private static final long serialVersionUID = 1L;

    public Constr createClause(IVecInt iVecInt) throws ContradictionException {
        return MinWatchCard.minWatchCardNew(this.solver, this.getVocabulary(), iVecInt, true, 1);
    }

    public Constr createUnregisteredClause(IVecInt iVecInt) {
        return new LearntWLClause(iVecInt, this.getVocabulary());
    }

    public Constr createCardinalityConstraint(IVecInt iVecInt, int n) throws ContradictionException {
        return MinWatchCard.minWatchCardNew(this.solver, this.getVocabulary(), iVecInt, true, n);
    }
}

