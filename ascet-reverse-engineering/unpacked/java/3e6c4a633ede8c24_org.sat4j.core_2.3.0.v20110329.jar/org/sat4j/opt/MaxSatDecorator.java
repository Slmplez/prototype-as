/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.opt;

import org.sat4j.core.VecInt;
import org.sat4j.opt.AbstractSelectorVariablesDecorator;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.IVecInt;
import org.sat4j.specs.TimeoutException;

public final class MaxSatDecorator
extends AbstractSelectorVariablesDecorator {
    private static final long serialVersionUID = 1L;
    private final IVecInt lits = new VecInt();
    private int counter;
    private IConstr prevConstr;

    public MaxSatDecorator(ISolver iSolver) {
        super(iSolver);
    }

    public void setExpectedNumberOfClauses(int n) {
        super.setExpectedNumberOfClauses(n);
        this.lits.ensure(n);
    }

    public IConstr addClause(IVecInt iVecInt) throws ContradictionException {
        int n = this.nborigvars + ++this.nbnewvar;
        this.lits.push(n);
        iVecInt.push(n);
        return super.addClause(iVecInt);
    }

    public void reset() {
        this.nbnewvar = 0;
        this.lits.clear();
        super.reset();
        this.prevConstr = null;
    }

    public boolean hasNoObjectiveFunction() {
        return false;
    }

    public boolean nonOptimalMeansSatisfiable() {
        return false;
    }

    public Number calculateObjective() {
        this.calculateObjectiveValue();
        return new Integer(this.counter);
    }

    public void discardCurrentSolution() throws ContradictionException {
        if (this.prevConstr != null) {
            super.removeSubsumedConstr(this.prevConstr);
        }
        try {
            this.prevConstr = super.addAtMost(this.lits, this.counter - 1);
        }
        catch (ContradictionException contradictionException) {
            this.isSolutionOptimal = true;
            throw contradictionException;
        }
    }

    public boolean admitABetterSolution(IVecInt iVecInt) throws TimeoutException {
        boolean bl = super.admitABetterSolution(iVecInt);
        if (!bl && this.prevConstr != null) {
            super.removeConstr(this.prevConstr);
            this.prevConstr = null;
        }
        return bl;
    }

    public void discard() throws ContradictionException {
        this.discardCurrentSolution();
    }

    public Number getObjectiveValue() {
        return new Integer(this.counter);
    }

    void calculateObjectiveValue() {
        this.counter = 0;
        int[] nArray = this.prevfullmodel;
        int n = nArray.length;
        for (int i = 0; i < n; ++i) {
            int n2 = nArray[i];
            if (n2 <= this.nborigvars) continue;
            ++this.counter;
        }
    }

    public void forceObjectiveValueTo(Number number) throws ContradictionException {
        super.addAtMost(this.lits, number.intValue());
    }
}

