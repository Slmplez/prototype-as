/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.constraints;

import org.sat4j.minisat.constraints.AbstractDataStructureFactory;
import org.sat4j.minisat.constraints.card.AtLeast;
import org.sat4j.minisat.constraints.cnf.Clauses;
import org.sat4j.minisat.constraints.cnf.LearntWLClause;
import org.sat4j.minisat.constraints.cnf.Lits;
import org.sat4j.minisat.constraints.cnf.OriginalWLClause;
import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.ILits;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IVecInt;

public class MixedDataStructureSingleWL
extends AbstractDataStructureFactory {
    private static final long serialVersionUID = 1L;

    public Constr createCardinalityConstraint(IVecInt iVecInt, int n) throws ContradictionException {
        return AtLeast.atLeastNew(this.solver, this.getVocabulary(), iVecInt, n);
    }

    public Constr createClause(IVecInt iVecInt) throws ContradictionException {
        IVecInt iVecInt2 = Clauses.sanityCheck(iVecInt, this.getVocabulary(), this.solver);
        if (iVecInt2 == null) {
            return null;
        }
        return OriginalWLClause.brandNewClause(this.solver, this.getVocabulary(), iVecInt2);
    }

    public Constr createUnregisteredClause(IVecInt iVecInt) {
        return new LearntWLClause(iVecInt, this.getVocabulary());
    }

    protected ILits createLits() {
        return new Lits();
    }
}

