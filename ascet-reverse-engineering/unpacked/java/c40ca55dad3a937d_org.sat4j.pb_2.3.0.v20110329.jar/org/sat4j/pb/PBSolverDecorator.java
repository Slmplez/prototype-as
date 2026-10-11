/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.specs.ContradictionException
 *  org.sat4j.specs.IConstr
 *  org.sat4j.specs.ISolver
 *  org.sat4j.specs.IVec
 *  org.sat4j.specs.IVecInt
 *  org.sat4j.tools.SolverDecorator
 */
package org.sat4j.pb;

import java.math.BigInteger;
import org.sat4j.pb.IPBSolver;
import org.sat4j.pb.ObjectiveFunction;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;
import org.sat4j.tools.SolverDecorator;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PBSolverDecorator
extends SolverDecorator<IPBSolver>
implements IPBSolver {
    private static final long serialVersionUID = 1L;

    public PBSolverDecorator(IPBSolver iPBSolver) {
        super((ISolver)iPBSolver);
    }

    @Override
    public IConstr addPseudoBoolean(IVecInt iVecInt, IVec<BigInteger> iVec, boolean bl, BigInteger bigInteger) throws ContradictionException {
        return ((IPBSolver)this.decorated()).addPseudoBoolean(iVecInt, iVec, bl, bigInteger);
    }

    @Override
    public void setObjectiveFunction(ObjectiveFunction objectiveFunction) {
        ((IPBSolver)this.decorated()).setObjectiveFunction(objectiveFunction);
    }

    @Override
    public ObjectiveFunction getObjectiveFunction() {
        return ((IPBSolver)this.decorated()).getObjectiveFunction();
    }
}

