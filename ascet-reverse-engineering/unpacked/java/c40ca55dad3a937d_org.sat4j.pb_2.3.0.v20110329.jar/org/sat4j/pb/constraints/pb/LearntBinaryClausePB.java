/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.minisat.constraints.cnf.LearntBinaryClause
 *  org.sat4j.minisat.core.ILits
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb.constraints.pb;

import java.math.BigInteger;
import org.sat4j.minisat.constraints.cnf.LearntBinaryClause;
import org.sat4j.minisat.core.ILits;
import org.sat4j.pb.constraints.pb.PBConstr;
import org.sat4j.specs.IVecInt;

public final class LearntBinaryClausePB
extends LearntBinaryClause
implements PBConstr {
    private static final long serialVersionUID = 1L;

    public LearntBinaryClausePB(IVecInt iVecInt, ILits iLits) {
        super(iVecInt, iLits);
    }

    public IVecInt computeAnImpliedClause() {
        return null;
    }

    public BigInteger getCoef(int n) {
        return BigInteger.ONE;
    }

    public BigInteger[] getCoefs() {
        BigInteger[] bigIntegerArray = new BigInteger[this.size()];
        for (int i = 0; i < bigIntegerArray.length; ++i) {
            bigIntegerArray[i] = BigInteger.ONE;
        }
        return bigIntegerArray;
    }

    public BigInteger getDegree() {
        return BigInteger.ONE;
    }
}

