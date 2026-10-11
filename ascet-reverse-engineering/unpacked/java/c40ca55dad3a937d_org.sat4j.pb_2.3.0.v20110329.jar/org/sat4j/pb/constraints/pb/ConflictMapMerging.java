/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.pb.constraints.pb;

import java.math.BigInteger;
import org.sat4j.pb.constraints.pb.ConflictMap;
import org.sat4j.pb.constraints.pb.IConflict;
import org.sat4j.pb.constraints.pb.IWatchPb;
import org.sat4j.pb.constraints.pb.PBConstr;

public final class ConflictMapMerging
extends ConflictMap {
    public ConflictMapMerging(PBConstr pBConstr, int n) {
        super(pBConstr, n);
    }

    public static IConflict createConflict(PBConstr pBConstr, int n) {
        return new ConflictMapMerging(pBConstr, n);
    }

    protected BigInteger reduceUntilConflict(int n, int n2, BigInteger[] bigIntegerArray, IWatchPb iWatchPb) {
        BigInteger bigInteger = bigIntegerArray[n2].subtract(BigInteger.ONE);
        bigIntegerArray[n2] = BigInteger.ONE;
        this.coefMultCons = this.weightedLits.get(n ^ 1);
        this.coefMult = BigInteger.ONE;
        return ConflictMapMerging.saturation(bigIntegerArray, iWatchPb.getDegree().subtract(bigInteger));
    }
}

