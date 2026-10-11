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
import org.sat4j.pb.constraints.PuebloPBMinClauseCardConstrDataStructure;
import org.sat4j.pb.constraints.pb.IDataStructurePB;
import org.sat4j.pb.constraints.pb.MinWatchPb;
import org.sat4j.pb.constraints.pb.PBConstr;
import org.sat4j.specs.ContradictionException;

public class PBMinClauseCardConstrDataStructure
extends PuebloPBMinClauseCardConstrDataStructure {
    private static final long serialVersionUID = 1L;

    protected PBConstr constructPB(int[] nArray, BigInteger[] bigIntegerArray, BigInteger bigInteger) throws ContradictionException {
        return MinWatchPb.normalizedMinWatchPbNew(this.solver, this.getVocabulary(), nArray, bigIntegerArray, bigInteger);
    }

    protected PBConstr constructLearntPB(IDataStructurePB iDataStructurePB) {
        return MinWatchPb.normalizedWatchPbNew(this.getVocabulary(), iDataStructurePB);
    }

    protected /* synthetic */ Constr constructLearntPB(IDataStructurePB iDataStructurePB) {
        return this.constructLearntPB(iDataStructurePB);
    }

    protected /* synthetic */ Constr constructPB(int[] nArray, BigInteger[] bigIntegerArray, BigInteger bigInteger) throws ContradictionException {
        return this.constructPB(nArray, bigIntegerArray, bigInteger);
    }
}

