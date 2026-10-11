/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.constraints;

import org.sat4j.minisat.constraints.AbstractDataStructureFactory;
import org.sat4j.minisat.constraints.card.AtLeast;
import org.sat4j.minisat.constraints.cnf.Clauses;
import org.sat4j.minisat.constraints.cnf.LearntBinaryClause;
import org.sat4j.minisat.constraints.cnf.LearntHTClause;
import org.sat4j.minisat.constraints.cnf.Lits;
import org.sat4j.minisat.constraints.cnf.OriginalBinaryClause;
import org.sat4j.minisat.constraints.cnf.OriginalHTClause;
import org.sat4j.minisat.constraints.cnf.UnitClause;
import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.ILits;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IVecInt;

public class MixedDataStructureDanielHT
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
        if (iVecInt2.size() == 2) {
            return OriginalBinaryClause.brandNewClause(this.solver, this.getVocabulary(), iVecInt2);
        }
        return OriginalHTClause.brandNewClause(this.solver, this.getVocabulary(), iVecInt2);
    }

    public Constr createUnregisteredClause(IVecInt iVecInt) {
        if (iVecInt.size() == 1) {
            return new UnitClause(iVecInt.last());
        }
        if (iVecInt.size() == 2) {
            return new LearntBinaryClause(iVecInt, this.getVocabulary());
        }
        return new LearntHTClause(iVecInt, this.getVocabulary());
    }

    protected ILits createLits() {
        return new Lits();
    }
}

