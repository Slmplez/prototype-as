/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.core.VecInt
 *  org.sat4j.specs.ContradictionException
 *  org.sat4j.specs.IConstr
 *  org.sat4j.specs.IOptimizationProblem
 *  org.sat4j.specs.IVecInt
 *  org.sat4j.specs.TimeoutException
 */
package org.sat4j.pb;

import java.math.BigInteger;
import org.sat4j.core.VecInt;
import org.sat4j.pb.IPBSolver;
import org.sat4j.pb.ObjectiveFunction;
import org.sat4j.pb.PBSolverDecorator;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.IOptimizationProblem;
import org.sat4j.specs.IVecInt;
import org.sat4j.specs.TimeoutException;

public class PseudoOptDecorator
extends PBSolverDecorator
implements IOptimizationProblem {
    private static final long serialVersionUID = 1L;
    private ObjectiveFunction objfct;
    private BigInteger objectiveValue;
    private int[] prevmodel;
    private boolean[] prevfullmodel;
    private IConstr previousPBConstr;
    private boolean isSolutionOptimal;

    public PseudoOptDecorator(IPBSolver iPBSolver) {
        super(iPBSolver);
    }

    public boolean isSatisfiable() throws TimeoutException {
        return this.isSatisfiable(VecInt.EMPTY);
    }

    public boolean isSatisfiable(boolean bl) throws TimeoutException {
        return this.isSatisfiable(VecInt.EMPTY, bl);
    }

    public boolean isSatisfiable(IVecInt iVecInt, boolean bl) throws TimeoutException {
        boolean bl2 = super.isSatisfiable(iVecInt, true);
        if (bl2) {
            this.prevmodel = super.model();
            this.prevfullmodel = new boolean[this.nVars()];
            for (int i = 0; i < this.nVars(); ++i) {
                this.prevfullmodel[i] = ((IPBSolver)this.decorated()).model(i + 1);
            }
        } else if (this.previousPBConstr != null) {
            ((IPBSolver)this.decorated()).removeConstr(this.previousPBConstr);
            this.previousPBConstr = null;
        }
        return bl2;
    }

    public boolean isSatisfiable(IVecInt iVecInt) throws TimeoutException {
        return this.isSatisfiable(iVecInt, true);
    }

    public void setObjectiveFunction(ObjectiveFunction objectiveFunction) {
        this.objfct = objectiveFunction;
        ((IPBSolver)this.decorated()).setObjectiveFunction(objectiveFunction);
    }

    public boolean admitABetterSolution() throws TimeoutException {
        return this.admitABetterSolution(VecInt.EMPTY);
    }

    public boolean admitABetterSolution(IVecInt iVecInt) throws TimeoutException {
        try {
            this.isSolutionOptimal = false;
            boolean bl = super.isSatisfiable(iVecInt, true);
            if (bl) {
                this.prevmodel = super.model();
                this.prevfullmodel = new boolean[this.nVars()];
                for (int i = 0; i < this.nVars(); ++i) {
                    this.prevfullmodel[i] = ((IPBSolver)this.decorated()).model(i + 1);
                }
                if (this.objfct != null) {
                    this.calculateObjective();
                }
            } else {
                this.isSolutionOptimal = true;
                if (this.previousPBConstr != null) {
                    ((IPBSolver)this.decorated()).removeConstr(this.previousPBConstr);
                    this.previousPBConstr = null;
                }
            }
            return bl;
        }
        catch (TimeoutException timeoutException) {
            if (this.previousPBConstr != null) {
                ((IPBSolver)this.decorated()).removeConstr(this.previousPBConstr);
                this.previousPBConstr = null;
            }
            throw timeoutException;
        }
    }

    public boolean hasNoObjectiveFunction() {
        return this.objfct == null;
    }

    public boolean nonOptimalMeansSatisfiable() {
        return true;
    }

    public Number calculateObjective() {
        if (this.objfct == null) {
            throw new UnsupportedOperationException("The problem does not contain an objective function");
        }
        this.objectiveValue = this.objfct.calculateDegree(this.prevmodel);
        return this.objectiveValue;
    }

    public void discardCurrentSolution() throws ContradictionException {
        if (this.previousPBConstr != null) {
            super.removeSubsumedConstr(this.previousPBConstr);
        }
        if (this.objfct != null && this.objectiveValue != null) {
            this.previousPBConstr = super.addPseudoBoolean(this.objfct.getVars(), this.objfct.getCoeffs(), false, this.objectiveValue.subtract(BigInteger.ONE));
        }
    }

    public void reset() {
        this.previousPBConstr = null;
        super.reset();
    }

    public int[] model() {
        return this.prevmodel;
    }

    public boolean model(int n) {
        return this.prevfullmodel[n - 1];
    }

    public String toString(String string) {
        return string + "Pseudo Boolean Optimization\n" + super.toString(string);
    }

    public Number getObjectiveValue() {
        return this.objectiveValue;
    }

    public void discard() throws ContradictionException {
        this.discardCurrentSolution();
    }

    public void forceObjectiveValueTo(Number number) throws ContradictionException {
        super.addPseudoBoolean(this.objfct.getVars(), this.objfct.getCoeffs(), false, (BigInteger)number);
    }

    public boolean isOptimal() {
        return this.isSolutionOptimal;
    }
}

