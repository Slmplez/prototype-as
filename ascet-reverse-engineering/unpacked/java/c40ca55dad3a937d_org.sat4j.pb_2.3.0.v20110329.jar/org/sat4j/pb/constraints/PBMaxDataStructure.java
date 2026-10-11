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
import org.sat4j.pb.constraints.AbstractPBDataStructureFactory;
import org.sat4j.pb.constraints.pb.IDataStructurePB;
import org.sat4j.pb.constraints.pb.MaxWatchPb;
import org.sat4j.pb.constraints.pb.WatchPb;
import org.sat4j.specs.ContradictionException;

public class PBMaxDataStructure
extends AbstractPBDataStructureFactory {
    private static final long serialVersionUID = 1L;

    protected Constr constraintFactory(int[] nArray, BigInteger[] bigIntegerArray, BigInteger bigInteger) throws ContradictionException {
        return MaxWatchPb.normalizedMaxWatchPbNew(this.solver, this.getVocabulary(), nArray, bigIntegerArray, bigInteger);
    }

    protected WatchPb learntConstraintFactory(IDataStructurePB iDataStructurePB) {
        return MaxWatchPb.normalizedWatchPbNew(this.getVocabulary(), iDataStructurePB);
    }

    protected /* synthetic */ Constr learntConstraintFactory(IDataStructurePB iDataStructurePB) {
        return this.learntConstraintFactory(iDataStructurePB);
    }
}

