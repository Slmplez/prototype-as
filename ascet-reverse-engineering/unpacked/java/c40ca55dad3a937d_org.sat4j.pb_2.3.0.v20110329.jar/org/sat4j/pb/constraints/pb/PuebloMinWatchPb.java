/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.minisat.core.ILits
 *  org.sat4j.minisat.core.Propagatable
 *  org.sat4j.minisat.core.UnitPropagationListener
 *  org.sat4j.specs.ContradictionException
 */
package org.sat4j.pb.constraints.pb;

import java.math.BigInteger;
import org.sat4j.minisat.core.ILits;
import org.sat4j.minisat.core.Propagatable;
import org.sat4j.minisat.core.UnitPropagationListener;
import org.sat4j.pb.constraints.pb.IDataStructurePB;
import org.sat4j.pb.constraints.pb.MinWatchPb;
import org.sat4j.pb.constraints.pb.WatchPb;
import org.sat4j.specs.ContradictionException;

public final class PuebloMinWatchPb
extends MinWatchPb {
    private static final long serialVersionUID = 1L;
    static final /* synthetic */ boolean $assertionsDisabled;

    private PuebloMinWatchPb(ILits iLits, int[] nArray, BigInteger[] bigIntegerArray, BigInteger bigInteger) {
        super(iLits, nArray, bigIntegerArray, bigInteger);
    }

    private PuebloMinWatchPb(ILits iLits, IDataStructurePB iDataStructurePB) {
        super(iLits, iDataStructurePB);
    }

    public static PuebloMinWatchPb normalizedMinWatchPbNew(UnitPropagationListener unitPropagationListener, ILits iLits, int[] nArray, BigInteger[] bigIntegerArray, BigInteger bigInteger) throws ContradictionException {
        PuebloMinWatchPb puebloMinWatchPb = new PuebloMinWatchPb(iLits, nArray, bigIntegerArray, bigInteger);
        if (puebloMinWatchPb.degree.signum() <= 0) {
            return null;
        }
        puebloMinWatchPb.computeWatches();
        puebloMinWatchPb.computePropagation(unitPropagationListener);
        return puebloMinWatchPb;
    }

    public static WatchPb normalizedWatchPbNew(ILits iLits, IDataStructurePB iDataStructurePB) {
        return new PuebloMinWatchPb(iLits, iDataStructurePB);
    }

    protected BigInteger maximalCoefficient(int n) {
        return this.coefs[0];
    }

    protected BigInteger updateWatched(BigInteger bigInteger, int n) {
        BigInteger bigInteger2 = bigInteger;
        if (this.watchingCount < this.size()) {
            BigInteger bigInteger3 = this.watchCumul.subtract(this.coefs[n]);
            BigInteger bigInteger4 = this.degree.add(bigInteger2);
            for (int i = 0; i < this.lits.length && bigInteger3.compareTo(bigInteger4) < 0; ++i) {
                if (this.voc.isFalsified(this.lits[i]) || this.watched[i]) continue;
                bigInteger3 = bigInteger3.add(this.coefs[i]);
                this.watched[i] = true;
                if (!$assertionsDisabled && this.watchingCount >= this.size()) {
                    throw new AssertionError();
                }
                this.watching[this.watchingCount++] = i;
                this.voc.watch(this.lits[i] ^ 1, (Propagatable)this);
            }
            this.watchCumul = bigInteger3.add(this.coefs[n]);
        }
        return bigInteger2;
    }

    static {
        $assertionsDisabled = !PuebloMinWatchPb.class.desiredAssertionStatus();
    }
}

