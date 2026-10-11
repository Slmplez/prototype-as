/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.minisat.constraints.cnf.OriginalHTClause
 *  org.sat4j.minisat.core.ILits
 *  org.sat4j.minisat.core.UnitPropagationListener
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb.constraints.pb;

import java.math.BigInteger;
import org.sat4j.minisat.constraints.cnf.OriginalHTClause;
import org.sat4j.minisat.core.ILits;
import org.sat4j.minisat.core.UnitPropagationListener;
import org.sat4j.pb.constraints.pb.PBConstr;
import org.sat4j.specs.IVecInt;

public final class OriginalHTClausePB
extends OriginalHTClause
implements PBConstr {
    private static final long serialVersionUID = 1L;

    public OriginalHTClausePB(IVecInt iVecInt, ILits iLits) {
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

    public static OriginalHTClausePB brandNewClause(UnitPropagationListener unitPropagationListener, ILits iLits, IVecInt iVecInt) {
        OriginalHTClausePB originalHTClausePB = new OriginalHTClausePB(iVecInt, iLits);
        originalHTClausePB.register();
        return originalHTClausePB;
    }
}

