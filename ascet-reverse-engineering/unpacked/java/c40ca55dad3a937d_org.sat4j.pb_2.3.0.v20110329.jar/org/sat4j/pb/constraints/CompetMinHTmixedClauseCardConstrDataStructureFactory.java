/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.core.Vec
 *  org.sat4j.core.VecInt
 *  org.sat4j.minisat.constraints.card.MinWatchCard
 *  org.sat4j.minisat.constraints.cnf.LearntBinaryClause
 *  org.sat4j.minisat.constraints.cnf.LearntHTClause
 *  org.sat4j.minisat.constraints.cnf.OriginalBinaryClause
 *  org.sat4j.minisat.constraints.cnf.OriginalHTClause
 *  org.sat4j.minisat.constraints.cnf.UnitClause
 *  org.sat4j.minisat.core.Constr
 *  org.sat4j.minisat.core.ILits
 *  org.sat4j.minisat.core.UnitPropagationListener
 *  org.sat4j.specs.ContradictionException
 *  org.sat4j.specs.IVec
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb.constraints;

import java.math.BigInteger;
import org.sat4j.core.Vec;
import org.sat4j.core.VecInt;
import org.sat4j.minisat.constraints.card.MinWatchCard;
import org.sat4j.minisat.constraints.cnf.LearntBinaryClause;
import org.sat4j.minisat.constraints.cnf.LearntHTClause;
import org.sat4j.minisat.constraints.cnf.OriginalBinaryClause;
import org.sat4j.minisat.constraints.cnf.OriginalHTClause;
import org.sat4j.minisat.constraints.cnf.UnitClause;
import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.ILits;
import org.sat4j.minisat.core.UnitPropagationListener;
import org.sat4j.pb.constraints.PBMinClauseCardConstrDataStructure;
import org.sat4j.pb.constraints.pb.IDataStructurePB;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;

public class CompetMinHTmixedClauseCardConstrDataStructureFactory
extends PBMinClauseCardConstrDataStructure {
    private static final long serialVersionUID = 1L;

    protected Constr constructClause(IVecInt iVecInt) {
        if (iVecInt == null) {
            return null;
        }
        if (iVecInt.size() == 2) {
            return OriginalBinaryClause.brandNewClause((UnitPropagationListener)this.solver, (ILits)this.getVocabulary(), (IVecInt)iVecInt);
        }
        return OriginalHTClause.brandNewClause((UnitPropagationListener)this.solver, (ILits)this.getVocabulary(), (IVecInt)iVecInt);
    }

    protected Constr constructLearntClause(IVecInt iVecInt) {
        if (iVecInt.size() == 1) {
            return new UnitClause(iVecInt.last());
        }
        if (iVecInt.size() == 2) {
            return new LearntBinaryClause(iVecInt, this.getVocabulary());
        }
        return new LearntHTClause(iVecInt, this.getVocabulary());
    }

    protected Constr constructCard(IVecInt iVecInt, int n) throws ContradictionException {
        return MinWatchCard.minWatchCardNew((UnitPropagationListener)this.solver, (ILits)this.getVocabulary(), (IVecInt)iVecInt, (boolean)true, (int)n);
    }

    protected Constr constructLearntCard(IDataStructurePB iDataStructurePB) {
        VecInt vecInt = new VecInt();
        Vec vec = new Vec();
        iDataStructurePB.buildConstraintFromConflict((IVecInt)vecInt, (IVec<BigInteger>)vec);
        return new MinWatchCard(this.getVocabulary(), (IVecInt)vecInt, true, iDataStructurePB.getDegree().intValue());
    }
}

