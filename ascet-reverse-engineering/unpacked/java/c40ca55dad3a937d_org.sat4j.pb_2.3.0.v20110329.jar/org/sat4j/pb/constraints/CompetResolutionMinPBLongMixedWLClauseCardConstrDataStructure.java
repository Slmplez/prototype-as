/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.minisat.core.Constr
 *  org.sat4j.specs.ContradictionException
 */
package org.sat4j.pb.constraints;

import java.math.BigInteger;
import org.sat4j.minisat.core.Constr;
import org.sat4j.pb.constraints.CompetResolutionPBLongMixedWLClauseCardConstrDataStructure;
import org.sat4j.pb.constraints.pb.IDataStructurePB;
import org.sat4j.pb.constraints.pb.MinWatchPb;
import org.sat4j.pb.constraints.pb.MinWatchPbLong;
import org.sat4j.specs.ContradictionException;

public class CompetResolutionMinPBLongMixedWLClauseCardConstrDataStructure
extends CompetResolutionPBLongMixedWLClauseCardConstrDataStructure {
    private static final long serialVersionUID = 1L;

    protected Constr constructPB(int[] nArray, BigInteger[] bigIntegerArray, BigInteger bigInteger) throws ContradictionException {
        return MinWatchPb.normalizedMinWatchPbNew(this.solver, this.getVocabulary(), nArray, bigIntegerArray, bigInteger);
    }

    protected Constr constructLearntPB(IDataStructurePB iDataStructurePB) {
        return MinWatchPb.normalizedWatchPbNew(this.getVocabulary(), iDataStructurePB);
    }

    protected Constr constructLongPB(int[] nArray, BigInteger[] bigIntegerArray, BigInteger bigInteger) throws ContradictionException {
        return MinWatchPbLong.normalizedMinWatchPbNew(this.solver, this.getVocabulary(), nArray, bigIntegerArray, bigInteger);
    }

    protected Constr constructLearntLongPB(IDataStructurePB iDataStructurePB) {
        return MinWatchPbLong.normalizedWatchPbNew(this.getVocabulary(), iDataStructurePB);
    }

    public static boolean isLongSufficient(BigInteger[] bigIntegerArray, BigInteger bigInteger) {
        return bigInteger.add(bigIntegerArray[0].add(bigIntegerArray[1])).bitLength() < 64;
    }
}

