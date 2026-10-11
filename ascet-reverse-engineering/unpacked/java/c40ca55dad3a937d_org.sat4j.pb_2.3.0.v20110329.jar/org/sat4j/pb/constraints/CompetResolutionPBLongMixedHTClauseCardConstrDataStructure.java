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
import org.sat4j.pb.constraints.CompetResolutionPBMixedHTClauseCardConstrDataStructure;
import org.sat4j.pb.constraints.pb.IDataStructurePB;
import org.sat4j.pb.constraints.pb.MaxWatchPbLong;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;

public class CompetResolutionPBLongMixedHTClauseCardConstrDataStructure
extends CompetResolutionPBMixedHTClauseCardConstrDataStructure {
    private static final long serialVersionUID = 1L;
    static final /* synthetic */ boolean $assertionsDisabled;

    protected Constr constraintFactory(int[] nArray, BigInteger[] bigIntegerArray, BigInteger bigInteger) throws ContradictionException {
        if (bigInteger.equals(BigInteger.ONE)) {
            IVecInt iVecInt = Clauses.sanityCheck((IVecInt)new VecInt(nArray), (ILits)this.getVocabulary(), (UnitPropagationListener)this.solver);
            if (iVecInt == null) {
                return null;
            }
            return this.constructClause(iVecInt);
        }
        if (CompetResolutionPBLongMixedHTClauseCardConstrDataStructure.coefficientsEqualToOne(bigIntegerArray)) {
            if (!$assertionsDisabled && bigInteger.compareTo(MAX_INT_VALUE) >= 0) {
                throw new AssertionError();
            }
            return this.constructCard((IVecInt)new VecInt(nArray), bigInteger.intValue());
        }
        if (CompetResolutionPBLongMixedHTClauseCardConstrDataStructure.isLongSufficient(bigIntegerArray, bigInteger)) {
            return this.constructLongPB(nArray, bigIntegerArray, bigInteger);
        }
        return this.constructPB(nArray, bigIntegerArray, bigInteger);
    }

    protected Constr learntConstraintFactory(IDataStructurePB iDataStructurePB) {
        if (iDataStructurePB.getDegree().equals(BigInteger.ONE)) {
            VecInt vecInt = new VecInt();
            Vec vec = new Vec();
            iDataStructurePB.buildConstraintFromConflict((IVecInt)vecInt, (IVec<BigInteger>)vec);
            int n = iDataStructurePB.getAssertiveLiteral();
            if (n > -1) {
                int n2 = vecInt.get(n);
                vecInt.set(n, vecInt.get(0));
                vecInt.set(0, n2);
            }
            return this.constructLearntClause((IVecInt)vecInt);
        }
        if (iDataStructurePB.isCardinality()) {
            return this.constructLearntCard(iDataStructurePB);
        }
        if (iDataStructurePB.isLongSufficient()) {
            return this.constructLearntLongPB(iDataStructurePB);
        }
        return this.constructLearntPB(iDataStructurePB);
    }

    protected Constr constructLongPB(int[] nArray, BigInteger[] bigIntegerArray, BigInteger bigInteger) throws ContradictionException {
        return MaxWatchPbLong.normalizedMaxWatchPbNew(this.solver, this.getVocabulary(), nArray, bigIntegerArray, bigInteger);
    }

    protected Constr constructLearntLongPB(IDataStructurePB iDataStructurePB) {
        return MaxWatchPbLong.normalizedWatchPbNew(this.getVocabulary(), iDataStructurePB);
    }

    public static boolean isLongSufficient(BigInteger[] bigIntegerArray, BigInteger bigInteger) {
        BigInteger bigInteger2 = BigInteger.ZERO;
        for (int i = 0; bigInteger2.bitLength() < 64 && i < bigIntegerArray.length; ++i) {
            bigInteger2 = bigInteger2.add(bigIntegerArray[i]);
        }
        return bigInteger2.bitLength() < 64;
    }

    static {
        $assertionsDisabled = !CompetResolutionPBLongMixedHTClauseCardConstrDataStructure.class.desiredAssertionStatus();
    }
}

