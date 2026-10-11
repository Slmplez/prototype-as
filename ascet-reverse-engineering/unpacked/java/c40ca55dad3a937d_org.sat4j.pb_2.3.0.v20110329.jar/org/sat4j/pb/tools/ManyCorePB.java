/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.core.ASolverFactory
 *  org.sat4j.specs.ContradictionException
 *  org.sat4j.specs.IConstr
 *  org.sat4j.specs.IVec
 *  org.sat4j.specs.IVecInt
 *  org.sat4j.tools.ConstrGroup
 *  org.sat4j.tools.ManyCore
 */
package org.sat4j.pb.tools;

import java.math.BigInteger;
import org.sat4j.core.ASolverFactory;
import org.sat4j.pb.IPBSolver;
import org.sat4j.pb.ObjectiveFunction;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;
import org.sat4j.tools.ConstrGroup;
import org.sat4j.tools.ManyCore;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ManyCorePB
extends ManyCore<IPBSolver>
implements IPBSolver {
    private static final long serialVersionUID = 1L;

    public ManyCorePB(ASolverFactory<IPBSolver> aSolverFactory, String[] stringArray) {
        super(aSolverFactory, stringArray);
    }

    @Override
    public IConstr addPseudoBoolean(IVecInt iVecInt, IVec<BigInteger> iVec, boolean bl, BigInteger bigInteger) throws ContradictionException {
        ConstrGroup constrGroup = new ConstrGroup(false);
        for (int i = 0; i < this.numberOfSolvers; ++i) {
            constrGroup.add(((IPBSolver)this.solvers.get(i)).addPseudoBoolean(iVecInt, iVec, bl, bigInteger));
        }
        return constrGroup;
    }

    @Override
    public void setObjectiveFunction(ObjectiveFunction objectiveFunction) {
        for (int i = 0; i < this.numberOfSolvers; ++i) {
            ((IPBSolver)this.solvers.get(i)).setObjectiveFunction(objectiveFunction);
        }
    }

    @Override
    public ObjectiveFunction getObjectiveFunction() {
        return ((IPBSolver)this.solvers.get(0)).getObjectiveFunction();
    }
}

