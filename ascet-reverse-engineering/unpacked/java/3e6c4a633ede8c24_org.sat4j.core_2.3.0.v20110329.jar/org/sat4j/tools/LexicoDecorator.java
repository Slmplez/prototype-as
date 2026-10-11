/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.tools;

import java.util.ArrayList;
import java.util.List;
import org.sat4j.core.VecInt;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.IOptimizationProblem;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.IVecInt;
import org.sat4j.specs.IteratorInt;
import org.sat4j.specs.TimeoutException;
import org.sat4j.tools.SolverDecorator;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class LexicoDecorator<T extends ISolver>
extends SolverDecorator<T>
implements IOptimizationProblem {
    protected final List<IVecInt> criteria = new ArrayList<IVecInt>();
    protected int currentCriterion = 0;
    private IConstr prevConstr;
    private int currentValue = -1;
    protected int[] prevfullmodel;
    protected boolean[] prevboolmodel;
    private boolean isSolutionOptimal;
    private static final long serialVersionUID = 1L;

    public LexicoDecorator(T t) {
        super(t);
    }

    public void addCriterion(IVecInt iVecInt) {
        VecInt vecInt = new VecInt(iVecInt.size());
        iVecInt.copyTo(vecInt);
        this.criteria.add(vecInt);
    }

    @Override
    public boolean admitABetterSolution() throws TimeoutException {
        return this.admitABetterSolution(VecInt.EMPTY);
    }

    @Override
    public boolean admitABetterSolution(IVecInt iVecInt) throws TimeoutException {
        this.isSolutionOptimal = false;
        if (this.decorated().isSatisfiable(iVecInt, true)) {
            this.prevboolmodel = new boolean[this.nVars()];
            for (int i = 0; i < this.nVars(); ++i) {
                this.prevboolmodel[i] = this.decorated().model(i + 1);
            }
            this.calculateObjective();
            this.prevfullmodel = this.decorated().model();
            return true;
        }
        return this.manageUnsatCase();
    }

    private boolean manageUnsatCase() {
        if (this.currentCriterion < this.criteria.size() - 1) {
            if (this.prevConstr != null) {
                super.removeConstr(this.prevConstr);
                this.prevConstr = null;
            }
            try {
                super.addAtMost(this.criteria.get(this.currentCriterion), this.currentValue);
                super.addAtLeast(this.criteria.get(this.currentCriterion), this.currentValue);
            }
            catch (ContradictionException contradictionException) {
                throw new IllegalStateException(contradictionException);
            }
            if (this.isVerbose()) {
                System.out.println(new StringBuffer().append(this.getLogPrefix()).append("Found optimal criterion number ").append(this.currentCriterion + 1).toString());
            }
            ++this.currentCriterion;
            this.calculateObjective();
            return true;
        }
        if (this.isVerbose()) {
            System.out.println(new StringBuffer().append(this.getLogPrefix()).append("Found optimal solution for the last criterion ").toString());
        }
        this.isSolutionOptimal = true;
        if (this.prevConstr != null) {
            super.removeConstr(this.prevConstr);
            this.prevConstr = null;
        }
        return false;
    }

    @Override
    public int[] model() {
        return this.prevfullmodel;
    }

    @Override
    public boolean model(int n) {
        return this.prevboolmodel[n - 1];
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
        this.currentValue = this.evaluate();
        return new Integer(this.currentValue);
    }

    @Override
    public Number getObjectiveValue() {
        return new Integer(this.currentValue);
    }

    @Override
    public void forceObjectiveValueTo(Number number) throws ContradictionException {
        throw new UnsupportedOperationException();
    }

    @Override
    public void discard() throws ContradictionException {
        this.discardCurrentSolution();
    }

    @Override
    public void discardCurrentSolution() throws ContradictionException {
        block3: {
            if (this.prevConstr != null) {
                super.removeSubsumedConstr(this.prevConstr);
            }
            try {
                this.prevConstr = super.addAtMost(this.criteria.get(this.currentCriterion), this.currentValue - 1);
            }
            catch (ContradictionException contradictionException) {
                this.prevConstr = null;
                if (this.manageUnsatCase()) break block3;
                throw contradictionException;
            }
        }
    }

    private int evaluate() {
        int n = 0;
        IteratorInt iteratorInt = this.criteria.get(this.currentCriterion).iterator();
        while (iteratorInt.hasNext()) {
            int n2 = iteratorInt.next();
            if ((n2 <= 0 || !this.prevboolmodel[n2 - 1]) && (n2 >= 0 || this.prevboolmodel[-n2 - 1])) continue;
            ++n;
        }
        return n;
    }

    @Override
    public boolean isOptimal() {
        return this.isSolutionOptimal;
    }
}

