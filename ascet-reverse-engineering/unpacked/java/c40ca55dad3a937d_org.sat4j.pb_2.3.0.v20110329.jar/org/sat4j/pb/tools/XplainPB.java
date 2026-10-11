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
 *  org.sat4j.tools.xplain.Xplain
 */
package org.sat4j.pb.tools;

import java.math.BigInteger;
import java.util.Iterator;
import org.sat4j.core.Vec;
import org.sat4j.pb.IPBSolver;
import org.sat4j.pb.ObjectiveFunction;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;
import org.sat4j.tools.xplain.Xplain;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class XplainPB
extends Xplain<IPBSolver>
implements IPBSolver {
    private static final long serialVersionUID = 1L;

    public XplainPB(IPBSolver iPBSolver) {
        super((ISolver)iPBSolver);
    }

    public IConstr addAtLeast(IVecInt iVecInt, int n) throws ContradictionException {
        Vec vec = new Vec();
        vec.growTo(iVecInt.size(), (Object)BigInteger.ONE);
        int n2 = this.createNewVar(iVecInt);
        iVecInt.push(n2);
        BigInteger bigInteger = BigInteger.valueOf(vec.size() - n);
        vec.push((Object)bigInteger);
        IConstr iConstr = ((IPBSolver)this.decorated()).addPseudoBoolean(iVecInt, (IVec<BigInteger>)vec, true, BigInteger.valueOf(n));
        if (iConstr == null) {
            this.discardLastestVar();
        } else {
            this.constrs.put(new Integer(n2), iConstr);
        }
        return iConstr;
    }

    public IConstr addAtMost(IVecInt iVecInt, int n) throws ContradictionException {
        Vec vec = new Vec();
        vec.growTo(iVecInt.size(), (Object)BigInteger.ONE);
        int n2 = this.createNewVar(iVecInt);
        iVecInt.push(n2);
        BigInteger bigInteger = BigInteger.valueOf(n - vec.size());
        vec.push((Object)bigInteger);
        IConstr iConstr = ((IPBSolver)this.decorated()).addPseudoBoolean(iVecInt, (IVec<BigInteger>)vec, false, BigInteger.valueOf(n));
        if (iConstr == null) {
            this.discardLastestVar();
        } else {
            this.constrs.put(new Integer(n2), iConstr);
        }
        return iConstr;
    }

    @Override
    public IConstr addPseudoBoolean(IVecInt iVecInt, IVec<BigInteger> iVec, boolean bl, BigInteger bigInteger) throws ContradictionException {
        BigInteger bigInteger2;
        int n = this.createNewVar(iVecInt);
        iVecInt.push(n);
        if (bl && bigInteger.signum() >= 0) {
            iVec.push((Object)bigInteger);
        } else {
            bigInteger2 = BigInteger.ZERO;
            Iterator iterator = iVec.iterator();
            while (iterator.hasNext()) {
                bigInteger2 = bigInteger2.add((BigInteger)iterator.next());
            }
            bigInteger2 = bigInteger2.subtract(bigInteger);
            iVec.push((Object)bigInteger2.negate());
        }
        bigInteger2 = ((IPBSolver)this.decorated()).addPseudoBoolean(iVecInt, iVec, bl, bigInteger);
        if (bigInteger2 == null) {
            this.discardLastestVar();
        } else {
            this.constrs.put(new Integer(n), bigInteger2);
        }
        return bigInteger2;
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

