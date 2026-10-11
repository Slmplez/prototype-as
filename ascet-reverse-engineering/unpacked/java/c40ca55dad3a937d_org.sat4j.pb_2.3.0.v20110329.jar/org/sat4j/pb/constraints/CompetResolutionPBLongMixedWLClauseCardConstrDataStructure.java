/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.minisat.constraints.cnf.Clauses
 *  org.sat4j.minisat.constraints.cnf.LearntBinaryClause
 *  org.sat4j.minisat.constraints.cnf.LearntWLClause
 *  org.sat4j.minisat.constraints.cnf.OriginalBinaryClause
 *  org.sat4j.minisat.constraints.cnf.OriginalWLClause
 *  org.sat4j.minisat.constraints.cnf.UnitClause
 *  org.sat4j.minisat.core.Constr
 *  org.sat4j.minisat.core.ILits
 *  org.sat4j.minisat.core.UnitPropagationListener
 *  org.sat4j.specs.ContradictionException
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb.constraints;

import org.sat4j.minisat.constraints.cnf.Clauses;
import org.sat4j.minisat.constraints.cnf.LearntBinaryClause;
import org.sat4j.minisat.constraints.cnf.LearntWLClause;
import org.sat4j.minisat.constraints.cnf.OriginalBinaryClause;
import org.sat4j.minisat.constraints.cnf.OriginalWLClause;
import org.sat4j.minisat.constraints.cnf.UnitClause;
import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.ILits;
import org.sat4j.minisat.core.UnitPropagationListener;
import org.sat4j.pb.constraints.CompetResolutionPBLongMixedHTClauseCardConstrDataStructure;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IVecInt;

public class CompetResolutionPBLongMixedWLClauseCardConstrDataStructure
extends CompetResolutionPBLongMixedHTClauseCardConstrDataStructure {
    private static final long serialVersionUID = 1L;

    public Constr createClause(IVecInt iVecInt) throws ContradictionException {
        IVecInt iVecInt2 = Clauses.sanityCheck((IVecInt)iVecInt, (ILits)this.getVocabulary(), (UnitPropagationListener)this.solver);
        if (iVecInt2 == null) {
            return new UnitClause(iVecInt.last());
        }
        if (iVecInt2.size() == 2) {
            return OriginalBinaryClause.brandNewClause((UnitPropagationListener)this.solver, (ILits)this.getVocabulary(), (IVecInt)iVecInt2);
        }
        return OriginalWLClause.brandNewClause((UnitPropagationListener)this.solver, (ILits)this.getVocabulary(), (IVecInt)iVecInt2);
    }

    public Constr createUnregisteredClause(IVecInt iVecInt) {
        if (iVecInt.size() == 1) {
            return new UnitClause(iVecInt.last());
        }
        if (iVecInt.size() == 2) {
            return new LearntBinaryClause(iVecInt, this.getVocabulary());
        }
        return new LearntWLClause(iVecInt, this.getVocabulary());
    }

    protected Constr constructClause(IVecInt iVecInt) {
        if (iVecInt == null) {
            return null;
        }
        if (iVecInt.size() == 2) {
            return OriginalBinaryClause.brandNewClause((UnitPropagationListener)this.solver, (ILits)this.getVocabulary(), (IVecInt)iVecInt);
        }
        return OriginalWLClause.brandNewClause((UnitPropagationListener)this.solver, (ILits)this.getVocabulary(), (IVecInt)iVecInt);
    }

    protected Constr constructLearntClause(IVecInt iVecInt) {
        if (iVecInt.size() == 1) {
            return new UnitClause(iVecInt.last());
        }
        if (iVecInt.size() == 2) {
            return new LearntBinaryClause(iVecInt, this.getVocabulary());
        }
        return new LearntWLClause(iVecInt, this.getVocabulary());
    }
}

