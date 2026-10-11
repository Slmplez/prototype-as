/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.minisat.core.ILits
 */
package org.sat4j.pb.constraints.pb;

import java.math.BigInteger;
import org.sat4j.minisat.core.ILits;
import org.sat4j.pb.constraints.pb.IDataStructurePB;
import org.sat4j.pb.constraints.pb.MinWatchPbLong;
import org.sat4j.pb.constraints.pb.PBConstr;

public class MinWatchPbLongPB
extends MinWatchPbLong
implements PBConstr {
    private static final long serialVersionUID = 1L;
    private final BigInteger[] bigCoefs;
    private final BigInteger bigDegree;

    public MinWatchPbLongPB(ILits iLits, IDataStructurePB iDataStructurePB) {
        super(iLits, iDataStructurePB);
        this.bigCoefs = new BigInteger[iDataStructurePB.size()];
        iDataStructurePB.buildConstraintFromMapPb(this.lits, this.bigCoefs);
        this.bigDegree = iDataStructurePB.getDegree();
    }

    public MinWatchPbLongPB(ILits iLits, int[] nArray, BigInteger[] bigIntegerArray, BigInteger bigInteger) {
        super(iLits, nArray, bigIntegerArray, bigInteger);
        this.bigCoefs = bigIntegerArray;
        this.bigDegree = bigInteger;
    }

    public BigInteger getCoef(int n) {
        return this.bigCoefs[n];
    }

    public BigInteger getDegree() {
        return this.bigDegree;
    }

    public BigInteger[] getCoefs() {
        BigInteger[] bigIntegerArray = new BigInteger[this.bigCoefs.length];
        System.arraycopy(this.bigCoefs, 0, bigIntegerArray, 0, this.bigCoefs.length);
        return bigIntegerArray;
    }
}

