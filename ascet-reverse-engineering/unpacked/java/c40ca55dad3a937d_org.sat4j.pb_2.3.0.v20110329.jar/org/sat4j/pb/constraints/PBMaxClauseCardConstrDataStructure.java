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
import org.sat4j.pb.constraints.pb.MaxWatchPb;
import org.sat4j.specs.ContradictionException;

public class PBMaxClauseCardConstrDataStructure
extends PuebloPBMinClauseCardConstrDataStructure {
    private static final long serialVersionUID = 1L;

    protected Constr constructPB(int[] nArray, BigInteger[] bigIntegerArray, BigInteger bigInteger) throws ContradictionException {
        return MaxWatchPb.normalizedMaxWatchPbNew(this.solver, this.getVocabulary(), nArray, bigIntegerArray, bigInteger);
    }

    protected Constr constructLearntPB(IDataStructurePB iDataStructurePB) {
        return MaxWatchPb.normalizedWatchPbNew(this.getVocabulary(), iDataStructurePB);
    }
}

