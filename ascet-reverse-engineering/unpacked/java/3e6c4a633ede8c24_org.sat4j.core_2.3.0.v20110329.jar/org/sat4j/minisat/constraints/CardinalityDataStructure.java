/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.constraints;

import org.sat4j.minisat.constraints.AbstractCardinalityDataStructure;
import org.sat4j.minisat.constraints.card.AtLeast;
import org.sat4j.minisat.constraints.cnf.LearntWLClause;
import org.sat4j.minisat.core.Constr;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IVecInt;

public class CardinalityDataStructure
extends AbstractCardinalityDataStructure {
    private static final long serialVersionUID = 1L;

    public Constr createUnregisteredClause(IVecInt iVecInt) {
        return new LearntWLClause(iVecInt, this.getVocabulary());
    }

    public Constr createClause(IVecInt iVecInt) throws ContradictionException {
        return AtLeast.atLeastNew(this.solver, this.getVocabulary(), iVecInt, 1);
    }

    public Constr createCardinalityConstraint(IVecInt iVecInt, int n) throws ContradictionException {
        return AtLeast.atLeastNew(this.solver, this.getVocabulary(), iVecInt, n);
    }
}

