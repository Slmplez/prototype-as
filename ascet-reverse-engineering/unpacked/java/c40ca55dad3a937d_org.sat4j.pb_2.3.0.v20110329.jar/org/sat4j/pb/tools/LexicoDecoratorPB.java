/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.core.Vec
 *  org.sat4j.specs.ContradictionException
 *  org.sat4j.specs.IConstr
 *  org.sat4j.specs.ISolver
 *  org.sat4j.specs.IVec
 *  org.sat4j.specs.IVecInt
 *  org.sat4j.specs.TimeoutException
 *  org.sat4j.tools.LexicoDecorator
 */
package org.sat4j.pb.tools;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import org.sat4j.core.Vec;
import org.sat4j.pb.IPBSolver;
import org.sat4j.pb.ObjectiveFunction;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;
import org.sat4j.specs.TimeoutException;
import org.sat4j.tools.LexicoDecorator;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class LexicoDecoratorPB
extends LexicoDecorator<IPBSolver>
implements IPBSolver {
    private static final long serialVersionUID = 1L;
    private final List<ObjectiveFunction> objs = new ArrayList<ObjectiveFunction>();

    public LexicoDecoratorPB(IPBSolver iPBSolver) {
        super((ISolver)iPBSolver);
    }

    @Override
    public IConstr addPseudoBoolean(IVecInt iVecInt, IVec<BigInteger> iVec, boolean bl, BigInteger bigInteger) throws ContradictionException {
        return ((IPBSolver)this.decorated()).addPseudoBoolean(iVecInt, iVec, bl, bigInteger);
    }

    @Override
    public void setObjectiveFunction(ObjectiveFunction objectiveFunction) {
        throw new UnsupportedOperationException();
    }

    @Override
    public ObjectiveFunction getObjectiveFunction() {
        throw new UnsupportedOperationException();
    }

    public boolean admitABetterSolution(IVecInt iVecInt) throws TimeoutException {
        ((IPBSolver)this.decorated()).setObjectiveFunction(this.objs.get(this.currentCriterion));
        return super.admitABetterSolution(iVecInt);
    }

    public void addCriterion(IVecInt iVecInt) {
        this.objs.add(new ObjectiveFunction(iVecInt, (IVec<BigInteger>)new Vec(iVecInt.size(), (Object)BigInteger.TEN)));
        super.addCriterion(iVecInt);
    }
}

