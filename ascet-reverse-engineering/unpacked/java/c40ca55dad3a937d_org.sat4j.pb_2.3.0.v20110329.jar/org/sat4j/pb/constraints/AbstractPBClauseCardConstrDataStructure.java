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
import org.sat4j.pb.constraints.AbstractPBDataStructureFactory;
import org.sat4j.pb.constraints.pb.IDataStructurePB;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;

public abstract class AbstractPBClauseCardConstrDataStructure
extends AbstractPBDataStructureFactory {
    private static final long serialVersionUID = 1L;
    static final BigInteger MAX_INT_VALUE;
    static final /* synthetic */ boolean $assertionsDisabled;

    protected Constr constraintFactory(int[] nArray, BigInteger[] bigIntegerArray, BigInteger bigInteger) throws ContradictionException {
        if (bigInteger.equals(BigInteger.ONE)) {
            IVecInt iVecInt = Clauses.sanityCheck((IVecInt)new VecInt(nArray), (ILits)this.getVocabulary(), (UnitPropagationListener)this.solver);
            if (iVecInt == null) {
                return null;
            }
            return this.constructClause(iVecInt);
        }
        if (AbstractPBClauseCardConstrDataStructure.coefficientsEqualToOne(bigIntegerArray)) {
            if (!$assertionsDisabled && bigInteger.compareTo(MAX_INT_VALUE) >= 0) {
                throw new AssertionError();
            }
            return this.constructCard((IVecInt)new VecInt(nArray), bigInteger.intValue());
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
        return this.constructLearntPB(iDataStructurePB);
    }

    static boolean coefficientsEqualToOne(BigInteger[] bigIntegerArray) {
        for (int i = 0; i < bigIntegerArray.length; ++i) {
            if (bigIntegerArray[i].equals(BigInteger.ONE)) continue;
            return false;
        }
        return true;
    }

    protected abstract Constr constructClause(IVecInt var1);

    protected abstract Constr constructCard(IVecInt var1, int var2) throws ContradictionException;

    protected abstract Constr constructPB(int[] var1, BigInteger[] var2, BigInteger var3) throws ContradictionException;

    protected abstract Constr constructLearntClause(IVecInt var1);

    protected abstract Constr constructLearntCard(IDataStructurePB var1);

    protected abstract Constr constructLearntPB(IDataStructurePB var1);

    static {
        $assertionsDisabled = !AbstractPBClauseCardConstrDataStructure.class.desiredAssertionStatus();
        MAX_INT_VALUE = BigInteger.valueOf(Integer.MAX_VALUE);
    }
}

