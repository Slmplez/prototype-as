/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.core.Vec
 *  org.sat4j.core.VecInt
 *  org.sat4j.minisat.constraints.cnf.Clauses
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
import org.sat4j.minisat.constraints.cnf.Clauses;
import org.sat4j.minisat.core.Constr;
import org.sat4j.minisat.core.ILits;
import org.sat4j.minisat.core.UnitPropagationListener;
import org.sat4j.pb.constraints.AbstractPBClauseCardConstrDataStructure;
import org.sat4j.pb.constraints.pb.IDataStructurePB;
import org.sat4j.pb.constraints.pb.LearntBinaryClausePB;
import org.sat4j.pb.constraints.pb.LearntHTClausePB;
import org.sat4j.pb.constraints.pb.MinWatchCardPB;
import org.sat4j.pb.constraints.pb.OriginalBinaryClausePB;
import org.sat4j.pb.constraints.pb.OriginalHTClausePB;
import org.sat4j.pb.constraints.pb.PuebloMinWatchPb;
import org.sat4j.pb.constraints.pb.UnitClausePB;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;

public class PuebloPBMinClauseCardConstrDataStructure
extends AbstractPBClauseCardConstrDataStructure {
    private static final long serialVersionUID = 1L;

    public Constr createClause(IVecInt iVecInt) throws ContradictionException {
        IVecInt iVecInt2 = Clauses.sanityCheck((IVecInt)iVecInt, (ILits)this.getVocabulary(), (UnitPropagationListener)this.solver);
        if (iVecInt2 == null) {
            return new UnitClausePB(iVecInt.last(), this.getVocabulary());
        }
        if (iVecInt2.size() == 2) {
            return OriginalBinaryClausePB.brandNewClause(this.solver, this.getVocabulary(), iVecInt2);
        }
        return OriginalHTClausePB.brandNewClause(this.solver, this.getVocabulary(), iVecInt2);
    }

    protected Constr constructClause(IVecInt iVecInt) {
        if (iVecInt.size() == 2) {
            return OriginalBinaryClausePB.brandNewClause(this.solver, this.getVocabulary(), iVecInt);
        }
        return OriginalHTClausePB.brandNewClause(this.solver, this.getVocabulary(), iVecInt);
    }

    protected Constr constructCard(IVecInt iVecInt, int n) throws ContradictionException {
        return MinWatchCardPB.normalizedMinWatchCardPBNew(this.solver, this.getVocabulary(), iVecInt, n);
    }

    protected Constr constructPB(int[] nArray, BigInteger[] bigIntegerArray, BigInteger bigInteger) throws ContradictionException {
        return PuebloMinWatchPb.normalizedMinWatchPbNew(this.solver, this.getVocabulary(), nArray, bigIntegerArray, bigInteger);
    }

    protected Constr constructLearntClause(IVecInt iVecInt) {
        if (iVecInt.size() == 1) {
            return new UnitClausePB(iVecInt.last(), this.getVocabulary());
        }
        if (iVecInt.size() == 2) {
            return new LearntBinaryClausePB(iVecInt, this.getVocabulary());
        }
        return new LearntHTClausePB(iVecInt, this.getVocabulary());
    }

    protected Constr constructLearntCard(IDataStructurePB iDataStructurePB) {
        VecInt vecInt = new VecInt();
        Vec vec = new Vec();
        iDataStructurePB.buildConstraintFromConflict((IVecInt)vecInt, (IVec<BigInteger>)vec);
        return new MinWatchCardPB(this.getVocabulary(), (IVecInt)vecInt, true, iDataStructurePB.getDegree().intValue());
    }

    protected Constr constructLearntPB(IDataStructurePB iDataStructurePB) {
        return PuebloMinWatchPb.normalizedWatchPbNew(this.getVocabulary(), iDataStructurePB);
    }
}

