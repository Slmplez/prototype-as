/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.minisat.constraints.cnf.UnitClause
 *  org.sat4j.minisat.core.ILits
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb.constraints.pb;

import java.math.BigInteger;
import org.sat4j.minisat.constraints.cnf.UnitClause;
import org.sat4j.minisat.core.ILits;
import org.sat4j.pb.constraints.pb.PBConstr;
import org.sat4j.specs.IVecInt;

public final class UnitClausePB
extends UnitClause
implements PBConstr {
    private final ILits voc;
    private static final long serialVersionUID = 1L;

    public UnitClausePB(int n, ILits iLits) {
        super(n);
        this.voc = iLits;
    }

    public IVecInt computeAnImpliedClause() {
        return null;
    }

    public BigInteger getCoef(int n) {
        return BigInteger.ONE;
    }

    public BigInteger[] getCoefs() {
        return new BigInteger[]{BigInteger.ONE};
    }

    public BigInteger getDegree() {
        return BigInteger.ONE;
    }

    public int[] getLits() {
        return new int[]{this.literal};
    }

    public ILits getVocabulary() {
        return this.voc;
    }
}

