/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.core.Vec
 *  org.sat4j.core.VecInt
 *  org.sat4j.minisat.constraints.card.MinWatchCard
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
 *  org.sat4j.specs.IVec
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb.constraints;

import java.math.BigInteger;
import org.sat4j.core.Vec;
import org.sat4j.core.VecInt;
import org.sat4j.minisat.constraints.card.MinWatchCard;
import org.sat4j.minisat.constraints.cnf.Clauses;
import org.sat4j.minisat.constraints.cnf.LearntBinaryClause;
import org.sat4j.minisat.constraints.cnf.LearntWLClause;
import org.sat4j.minisat.constraints.cnf.OriginalBinaryClause;
import org.sat4j.minisat.constraints.cnf.OriginalWLClause;
import org.sat4j.minisat.constraints.cnf.UnitClause;
import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.ILits;
import org.sat4j.minisat.core.UnitPropagationListener;
import org.sat4j.pb.constraints.AbstractPBClauseCardConstrDataStructure;
import org.sat4j.pb.constraints.pb.IDataStructurePB;
import org.sat4j.pb.constraints.pb.MaxWatchPb;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;

public class CompetResolutionPBMixedWLClauseCardConstrDataStructure
extends AbstractPBClauseCardConstrDataStructure {
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

    protected Constr constructCard(IVecInt iVecInt, int n) throws ContradictionException {
        return MinWatchCard.minWatchCardNew((UnitPropagationListener)this.solver, (ILits)this.getVocabulary(), (IVecInt)iVecInt, (boolean)true, (int)n);
    }

    protected Constr constructLearntCard(IDataStructurePB iDataStructurePB) {
        VecInt vecInt = new VecInt();
        Vec vec = new Vec();
        iDataStructurePB.buildConstraintFromConflict((IVecInt)vecInt, (IVec<BigInteger>)vec);
        return new MinWatchCard(this.getVocabulary(), (IVecInt)vecInt, true, iDataStructurePB.getDegree().intValue());
    }

    protected Constr constructPB(int[] nArray, BigInteger[] bigIntegerArray, BigInteger bigInteger) throws ContradictionException {
        return MaxWatchPb.normalizedMaxWatchPbNew(this.solver, this.getVocabulary(), nArray, bigIntegerArray, bigInteger);
    }

    protected Constr constructLearntPB(IDataStructurePB iDataStructurePB) {
        return MaxWatchPb.normalizedWatchPbNew(this.getVocabulary(), iDataStructurePB);
    }
}

