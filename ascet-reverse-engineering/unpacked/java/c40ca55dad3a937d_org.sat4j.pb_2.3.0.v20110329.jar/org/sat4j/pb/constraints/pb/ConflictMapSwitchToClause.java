/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.pb.constraints.pb;

import java.math.BigInteger;
import org.sat4j.pb.constraints.pb.ConflictMap;
import org.sat4j.pb.constraints.pb.IConflict;
import org.sat4j.pb.constraints.pb.IWatchPb;
import org.sat4j.pb.constraints.pb.PBConstr;

public final class ConflictMapSwitchToClause
extends ConflictMap {
    public static int UPPERBOUND;

    public ConflictMapSwitchToClause(PBConstr pBConstr, int n) {
        super(pBConstr, n);
    }

    public static IConflict createConflict(PBConstr pBConstr, int n) {
        return new ConflictMapSwitchToClause(pBConstr, n);
    }

    protected BigInteger reduceUntilConflict(int n, int n2, BigInteger[] bigIntegerArray, IWatchPb iWatchPb) {
        int n3;
        BigInteger bigInteger = super.reduceUntilConflict(n, n2, bigIntegerArray, iWatchPb);
        for (n3 = 0; n3 < bigIntegerArray.length && bigIntegerArray[n3].equals(BigInteger.ZERO) && n3 != n2; ++n3) {
        }
        if (n3 < bigIntegerArray.length) {
            BigInteger bigInteger2 = bigIntegerArray[n3].multiply(this.coefMultCons);
            if (this.weightedLits.containsKey(iWatchPb.get(n3))) {
                bigInteger2 = bigInteger2.add(this.weightedLits.get(iWatchPb.get(n3)).multiply(this.coefMult));
            }
            if (bigInteger2.toString().length() > UPPERBOUND) {
                ++this.numberOfReductions;
                this.hasBeenReduced = true;
                bigInteger = this.reduceToClause(n2, iWatchPb, bigIntegerArray);
                this.coefMultCons = this.weightedLits.get(n ^ 1);
                this.coefMult = BigInteger.ONE;
            }
        }
        return bigInteger;
    }

    private BigInteger reduceToClause(int n, IWatchPb iWatchPb, BigInteger[] bigIntegerArray) {
        for (int i = 0; i < bigIntegerArray.length; ++i) {
            bigIntegerArray[i] = i == n || iWatchPb.getVocabulary().isFalsified(iWatchPb.get(i)) ? BigInteger.ONE : BigInteger.ZERO;
        }
        return BigInteger.ONE;
    }
}

