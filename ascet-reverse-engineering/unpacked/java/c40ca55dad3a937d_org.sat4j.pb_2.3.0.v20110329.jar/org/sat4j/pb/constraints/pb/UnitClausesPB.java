/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.minisat.constraints.cnf.UnitClauses
 *  org.sat4j.minisat.core.ILits
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb.constraints.pb;

import java.math.BigInteger;
import org.sat4j.minisat.constraints.cnf.UnitClauses;
import org.sat4j.minisat.core.ILits;
import org.sat4j.pb.constraints.pb.PBConstr;
import org.sat4j.specs.IVecInt;

public class UnitClausesPB
extends UnitClauses
implements PBConstr {
    public UnitClausesPB(IVecInt iVecInt) {
        super(iVecInt);
    }

    public BigInteger getCoef(int n) {
        return BigInteger.ONE;
    }

    public BigInteger getDegree() {
        return BigInteger.ONE;
    }

    public ILits getVocabulary() {
        throw new UnsupportedOperationException();
    }

    public int[] getLits() {
        throw new UnsupportedOperationException();
    }

    public BigInteger[] getCoefs() {
        throw new UnsupportedOperationException();
    }

    public IVecInt computeAnImpliedClause() {
        throw new UnsupportedOperationException();
    }
}

