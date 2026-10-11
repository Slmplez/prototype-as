/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.opt;

import org.sat4j.core.VecInt;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.IOptimizationProblem;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.IVecInt;
import org.sat4j.specs.TimeoutException;
import org.sat4j.tools.SolverDecorator;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class MinOneDecorator
extends SolverDecorator<ISolver>
implements IOptimizationProblem {
    private static final long serialVersionUID = 1L;
    private int[] prevmodel;
    private boolean isSolutionOptimal;
    private int counter;
    private final IVecInt literals = new VecInt();
    private IConstr previousConstr;

    public MinOneDecorator(ISolver iSolver) {
        super(iSolver);
    }

    @Override
    public boolean admitABetterSolution() throws TimeoutException {
        return this.admitABetterSolution(VecInt.EMPTY);
    }

    @Override
    public boolean admitABetterSolution(IVecInt iVecInt) throws TimeoutException {
        this.isSolutionOptimal = false;
        boolean bl = this.isSatisfiable(iVecInt, true);
        if (bl) {
            this.prevmodel = super.model();
            this.calculateObjectiveValue();
        } else {
            this.isSolutionOptimal = true;
        }
        return bl;
    }

    @Override
    public boolean hasNoObjectiveFunction() {
        return false;
    }

    @Override
    public boolean nonOptimalMeansSatisfiable() {
        return true;
    }

    @Override
    public Number calculateObjective() {
        this.calculateObjectiveValue();
        return new Integer(this.counter);
    }

    private void calculateObjectiveValue() {
        this.counter = 0;
        for (int n : this.prevmodel) {
            if (n <= 0) continue;
            ++this.counter;
        }
    }

    @Override
    public void discardCurrentSolution() throws ContradictionException {
        if (this.literals.isEmpty()) {
            for (int i = 1; i <= this.nVars(); ++i) {
                this.literals.push(i);
            }
        }
        if (this.previousConstr != null) {
            super.removeConstr(this.previousConstr);
        }
        this.previousConstr = this.addAtMost(this.literals, this.counter - 1);
    }

    @Override
    public int[] model() {
        return this.prevmodel;
    }

    @Override
    public void reset() {
        this.literals.clear();
        this.previousConstr = null;
        super.reset();
    }

    @Override
    public Number getObjectiveValue() {
        return new Integer(this.counter);
    }

    @Override
    public void discard() throws ContradictionException {
        this.discardCurrentSolution();
    }

    @Override
    public void forceObjectiveValueTo(Number number) throws ContradictionException {
        try {
            this.addAtMost(this.literals, number.intValue());
        }
        catch (ContradictionException contradictionException) {
            this.isSolutionOptimal = true;
            throw contradictionException;
        }
    }

    @Override
    public boolean isOptimal() {
        return this.isSolutionOptimal;
    }
}

