/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.core.VecInt
 *  org.sat4j.specs.ContradictionException
 *  org.sat4j.specs.IOptimizationProblem
 *  org.sat4j.specs.IVecInt
 *  org.sat4j.specs.TimeoutException
 */
package org.sat4j.pb;

import org.sat4j.core.VecInt;
import org.sat4j.pb.IPBSolver;
import org.sat4j.pb.PBSolverDecorator;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IOptimizationProblem;
import org.sat4j.specs.IVecInt;
import org.sat4j.specs.TimeoutException;

public class OptToPBSATAdapter
extends PBSolverDecorator {
    private static final long serialVersionUID = 1L;
    IOptimizationProblem problem;
    boolean modelComputed = false;
    private final IVecInt assumps = new VecInt();
    private long begin;
    static final /* synthetic */ boolean $assertionsDisabled;

    public OptToPBSATAdapter(IOptimizationProblem iOptimizationProblem) {
        super((IPBSolver)iOptimizationProblem);
        this.problem = iOptimizationProblem;
    }

    public boolean isSatisfiable() throws TimeoutException {
        this.modelComputed = false;
        this.assumps.clear();
        this.begin = System.currentTimeMillis();
        if (this.problem.hasNoObjectiveFunction()) {
            this.modelComputed = this.problem.isSatisfiable();
            return this.modelComputed;
        }
        return this.problem.admitABetterSolution();
    }

    public boolean isSatisfiable(boolean bl) throws TimeoutException {
        return this.isSatisfiable();
    }

    public boolean isSatisfiable(IVecInt iVecInt, boolean bl) throws TimeoutException {
        return this.isSatisfiable(iVecInt);
    }

    public boolean isSatisfiable(IVecInt iVecInt) throws TimeoutException {
        this.modelComputed = false;
        this.assumps.clear();
        iVecInt.copyTo(this.assumps);
        this.begin = System.currentTimeMillis();
        if (this.problem.hasNoObjectiveFunction()) {
            this.modelComputed = this.problem.isSatisfiable(iVecInt);
            return this.modelComputed;
        }
        return this.problem.admitABetterSolution(iVecInt);
    }

    public int[] model() {
        if (this.modelComputed) {
            return this.problem.model();
        }
        try {
            if (!$assertionsDisabled && !this.problem.admitABetterSolution(this.assumps)) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && this.problem.hasNoObjectiveFunction()) {
                throw new AssertionError();
            }
            do {
                this.problem.discardCurrentSolution();
                if (!this.isVerbose()) continue;
                System.out.println(this.getLogPrefix() + "Current objective function value: " + this.problem.getObjectiveValue() + "(" + (double)(System.currentTimeMillis() - this.begin) / 1000.0 + "s)");
            } while (this.problem.admitABetterSolution(this.assumps));
        }
        catch (TimeoutException timeoutException) {
            if (this.isVerbose()) {
                System.out.println(this.getLogPrefix() + "Solver timed out after " + (double)(System.currentTimeMillis() - this.begin) / 1000.0 + "s)");
            }
        }
        catch (ContradictionException contradictionException) {
            // empty catch block
        }
        this.modelComputed = true;
        return this.problem.model();
    }

    public boolean model(int n) {
        if (!this.modelComputed) {
            this.model();
        }
        return this.problem.model(n);
    }

    public String toString(String string) {
        return string + "Optimization to Pseudo Boolean adapter\n" + super.toString(string);
    }

    public boolean isOptimal() {
        return this.problem.isOptimal();
    }

    static {
        $assertionsDisabled = !OptToPBSATAdapter.class.desiredAssertionStatus();
    }
}

