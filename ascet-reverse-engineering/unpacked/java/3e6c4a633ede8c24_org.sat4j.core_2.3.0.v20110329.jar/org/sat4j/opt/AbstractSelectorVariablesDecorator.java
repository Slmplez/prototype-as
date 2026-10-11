/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.opt;

import org.sat4j.core.VecInt;
import org.sat4j.specs.IOptimizationProblem;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.IVecInt;
import org.sat4j.specs.TimeoutException;
import org.sat4j.tools.SolverDecorator;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractSelectorVariablesDecorator
extends SolverDecorator<ISolver>
implements IOptimizationProblem {
    private static final long serialVersionUID = 1L;
    protected int nborigvars;
    private int nbexpectedclauses;
    protected int nbnewvar;
    protected int[] prevfullmodel;
    protected int[] prevmodel;
    protected boolean[] prevboolmodel;
    protected boolean isSolutionOptimal;

    public AbstractSelectorVariablesDecorator(ISolver iSolver) {
        super(iSolver);
    }

    @Override
    public int newVar(int n) {
        this.nborigvars = super.newVar(n);
        return this.nborigvars;
    }

    @Override
    public void setExpectedNumberOfClauses(int n) {
        this.nbexpectedclauses = n;
        super.setExpectedNumberOfClauses(n);
        super.newVar(this.nborigvars + this.nbexpectedclauses);
    }

    public int getExpectedNumberOfClauses() {
        return this.nbexpectedclauses;
    }

    @Override
    public void reset() {
        super.reset();
        this.nbnewvar = 0;
    }

    @Override
    public boolean admitABetterSolution() throws TimeoutException {
        return this.admitABetterSolution(VecInt.EMPTY);
    }

    @Override
    public boolean admitABetterSolution(IVecInt iVecInt) throws TimeoutException {
        this.isSolutionOptimal = false;
        boolean bl = super.isSatisfiable(iVecInt, true);
        if (bl) {
            int n;
            this.prevboolmodel = new boolean[this.nVars()];
            for (n = 0; n < this.nVars(); ++n) {
                this.prevboolmodel[n] = this.decorated().model(n + 1);
            }
            this.prevfullmodel = super.model();
            n = Math.min(this.prevfullmodel.length, this.nborigvars) - 1;
            while (Math.abs(this.prevfullmodel[n]) > this.nborigvars) {
                --n;
            }
            this.prevmodel = new int[n + 1];
            for (int i = 0; i <= n; ++i) {
                this.prevmodel[i] = this.prevfullmodel[i];
            }
            this.calculateObjectiveValue();
        } else {
            this.isSolutionOptimal = true;
        }
        return bl;
    }

    abstract void calculateObjectiveValue();

    @Override
    public int[] model() {
        return this.prevmodel;
    }

    @Override
    public boolean model(int n) {
        return this.prevboolmodel[n - 1];
    }

    @Override
    public boolean isOptimal() {
        return this.isSolutionOptimal;
    }
}

