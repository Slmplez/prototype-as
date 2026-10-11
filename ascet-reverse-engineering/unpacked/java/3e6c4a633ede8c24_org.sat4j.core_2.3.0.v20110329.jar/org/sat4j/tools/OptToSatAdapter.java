/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.tools;

import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IOptimizationProblem;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.IVecInt;
import org.sat4j.specs.TimeoutException;
import org.sat4j.tools.SolverDecorator;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class OptToSatAdapter
extends SolverDecorator<ISolver> {
    private static final long serialVersionUID = 1L;
    IOptimizationProblem problem;
    boolean modelComputed = false;
    boolean optimalValueForced = false;
    static final /* synthetic */ boolean $assertionsDisabled;
    static /* synthetic */ Class class$org$sat4j$tools$OptToSatAdapter;

    public OptToSatAdapter(IOptimizationProblem iOptimizationProblem) {
        super((ISolver)((Object)iOptimizationProblem));
        this.problem = iOptimizationProblem;
    }

    @Override
    public boolean isSatisfiable() throws TimeoutException {
        this.modelComputed = false;
        return this.problem.admitABetterSolution();
    }

    @Override
    public void reset() {
        super.reset();
        this.optimalValueForced = false;
    }

    @Override
    public boolean isSatisfiable(boolean bl) throws TimeoutException {
        this.modelComputed = false;
        return this.problem.admitABetterSolution();
    }

    @Override
    public boolean isSatisfiable(IVecInt iVecInt, boolean bl) throws TimeoutException {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isSatisfiable(IVecInt iVecInt) throws TimeoutException {
        throw new UnsupportedOperationException();
    }

    @Override
    public int[] model() {
        block10: {
            if (this.modelComputed) {
                return this.problem.model();
            }
            try {
                if (!$assertionsDisabled && !this.problem.admitABetterSolution()) {
                    throw new AssertionError();
                }
                do {
                    this.problem.discardCurrentSolution();
                } while (this.problem.admitABetterSolution());
                if (this.optimalValueForced) break block10;
                try {
                    this.problem.forceObjectiveValueTo(this.problem.getObjectiveValue());
                }
                catch (ContradictionException contradictionException) {
                    throw new IllegalStateException();
                }
                this.optimalValueForced = true;
            }
            catch (TimeoutException timeoutException) {
            }
            catch (ContradictionException contradictionException) {
                if (this.optimalValueForced) break block10;
                try {
                    this.problem.forceObjectiveValueTo(this.problem.getObjectiveValue());
                }
                catch (ContradictionException contradictionException2) {
                    throw new IllegalStateException();
                }
                this.optimalValueForced = true;
            }
        }
        this.modelComputed = true;
        return this.problem.model();
    }

    @Override
    public boolean model(int n) {
        if (!this.modelComputed) {
            this.model();
        }
        return this.problem.model(n);
    }

    @Override
    public String toString(String string) {
        return new StringBuffer().append(string).append("Optimization to SAT adapter\n").append(super.toString(string)).toString();
    }

    public boolean isOptimal() {
        return this.problem.isOptimal();
    }

    static /* synthetic */ Class class$(String string) {
        try {
            return Class.forName(string);
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError().initCause(classNotFoundException);
        }
    }

    static {
        $assertionsDisabled = !(class$org$sat4j$tools$OptToSatAdapter == null ? (class$org$sat4j$tools$OptToSatAdapter = OptToSatAdapter.class$("org.sat4j.tools.OptToSatAdapter")) : class$org$sat4j$tools$OptToSatAdapter).desiredAssertionStatus();
    }
}

