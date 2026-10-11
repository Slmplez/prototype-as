/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.pb.constraints.pb;

import java.math.BigInteger;
import org.sat4j.pb.constraints.pb.ConflictMap;
import org.sat4j.pb.constraints.pb.IConflict;
import org.sat4j.pb.constraints.pb.IWatchPb;
import org.sat4j.pb.constraints.pb.PBConstr;

public final class ConflictMapClause
extends ConflictMap {
    public ConflictMapClause(PBConstr pBConstr, int n) {
        super(pBConstr, n);
    }

    public static IConflict createConflict(PBConstr pBConstr, int n) {
        return new ConflictMapClause(pBConstr, n);
    }

    protected BigInteger reduceUntilConflict(int n, int n2, BigInteger[] bigIntegerArray, IWatchPb iWatchPb) {
        for (int i = 0; i < bigIntegerArray.length; ++i) {
            bigIntegerArray[i] = i == n2 || iWatchPb.getVocabulary().isFalsified(iWatchPb.get(i)) ? BigInteger.ONE : BigInteger.ZERO;
        }
        this.coefMultCons = this.weightedLits.get(n ^ 1);
        this.coefMult = BigInteger.ONE;
        return BigInteger.ONE;
    }
}

