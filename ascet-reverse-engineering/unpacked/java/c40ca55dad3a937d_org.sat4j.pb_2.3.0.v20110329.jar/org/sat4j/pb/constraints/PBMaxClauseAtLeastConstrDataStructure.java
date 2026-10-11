/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.core.Vec
 *  org.sat4j.core.VecInt
 *  org.sat4j.minisat.core.Constr
 *  org.sat4j.specs.ContradictionException
 *  org.sat4j.specs.IVec
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb.constraints;

import java.math.BigInteger;
import org.sat4j.core.Vec;
import org.sat4j.core.VecInt;
import org.sat4j.minisat.core.Constr;
import org.sat4j.pb.constraints.PBMaxClauseCardConstrDataStructure;
import org.sat4j.pb.constraints.pb.AtLeastPB;
import org.sat4j.pb.constraints.pb.IDataStructurePB;
import org.sat4j.pb.constraints.pb.PBConstr;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;

public class PBMaxClauseAtLeastConstrDataStructure
extends PBMaxClauseCardConstrDataStructure {
    private static final long serialVersionUID = 1L;

    protected PBConstr constructCard(IVecInt iVecInt, int n) throws ContradictionException {
        return AtLeastPB.atLeastNew(this.solver, this.getVocabulary(), iVecInt, n);
    }

    protected Constr constructLearntCard(IDataStructurePB iDataStructurePB) {
        VecInt vecInt = new VecInt();
        Vec vec = new Vec();
        iDataStructurePB.buildConstraintFromConflict((IVecInt)vecInt, (IVec<BigInteger>)vec);
        return AtLeastPB.atLeastNew(this.getVocabulary(), (IVecInt)vecInt, iDataStructurePB.getDegree().intValue());
    }

    protected /* synthetic */ Constr constructCard(IVecInt iVecInt, int n) throws ContradictionException {
        return this.constructCard(iVecInt, n);
    }
}

