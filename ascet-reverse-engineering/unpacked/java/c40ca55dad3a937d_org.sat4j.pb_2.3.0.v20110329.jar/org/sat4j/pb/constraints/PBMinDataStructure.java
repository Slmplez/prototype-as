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
import org.sat4j.pb.constraints.pb.MinWatchPb;
import org.sat4j.pb.constraints.pb.PBConstr;
import org.sat4j.specs.ContradictionException;

public class PBMinDataStructure
extends AbstractPBDataStructureFactory {
    private static final long serialVersionUID = 1L;

    protected PBConstr constraintFactory(int[] nArray, BigInteger[] bigIntegerArray, BigInteger bigInteger) throws ContradictionException {
        return MinWatchPb.normalizedMinWatchPbNew(this.solver, this.getVocabulary(), nArray, bigIntegerArray, bigInteger);
    }

    protected Constr learntConstraintFactory(IDataStructurePB iDataStructurePB) {
        return MinWatchPb.normalizedWatchPbNew(this.getVocabulary(), iDataStructurePB);
    }

    protected /* synthetic */ Constr constraintFactory(int[] nArray, BigInteger[] bigIntegerArray, BigInteger bigInteger) throws ContradictionException {
        return this.constraintFactory(nArray, bigIntegerArray, bigInteger);
    }
}

