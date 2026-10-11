/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.orders;

import java.io.PrintWriter;
import java.io.Serializable;
import org.sat4j.core.LiteralsUtils;
import org.sat4j.minisat.core.Heap;
import org.sat4j.minisat.core.ILits;
import org.sat4j.minisat.core.IOrder;
import org.sat4j.minisat.core.IPhaseSelectionStrategy;
import org.sat4j.minisat.orders.PhaseInLastLearnedClauseSelectionStrategy;

public class VarOrderHeap
implements IOrder,
Serializable {
    private static final long serialVersionUID = 1L;
    private static final double VAR_RESCALE_FACTOR = 1.0E-100;
    private static final double VAR_RESCALE_BOUND = 1.0E100;
    protected double[] activity = new double[1];
    private double varDecay = 1.0;
    private double varInc = 1.0;
    protected ILits lits;
    private long nullchoice = 0L;
    protected Heap heap;
    protected IPhaseSelectionStrategy phaseStrategy;
    static final /* synthetic */ boolean $assertionsDisabled;

    public VarOrderHeap() {
        this(new PhaseInLastLearnedClauseSelectionStrategy());
    }

    public VarOrderHeap(IPhaseSelectionStrategy iPhaseSelectionStrategy) {
        this.phaseStrategy = iPhaseSelectionStrategy;
    }

    public void setPhaseSelectionStrategy(IPhaseSelectionStrategy iPhaseSelectionStrategy) {
        this.phaseStrategy = iPhaseSelectionStrategy;
    }

    public IPhaseSelectionStrategy getPhaseSelectionStrategy() {
        return this.phaseStrategy;
    }

    public void setLits(ILits iLits) {
        this.lits = iLits;
    }

    public int select() {
        while (!this.heap.empty()) {
            int n = this.heap.getmin();
            int n2 = this.phaseStrategy.select(n);
            if (!this.lits.isUnassigned(n2)) continue;
            if (this.activity[n] < 1.0E-4) {
                ++this.nullchoice;
            }
            return n2;
        }
        return -1;
    }

    public void setVarDecay(double d) {
        this.varDecay = d;
    }

    public void undo(int n) {
        if (!this.heap.inHeap(n)) {
            this.heap.insert(n);
        }
    }

    public void updateVar(int n) {
        int n2 = LiteralsUtils.var(n);
        this.updateActivity(n2);
        this.phaseStrategy.updateVar(n);
        if (this.heap.inHeap(n2)) {
            this.heap.increase(n2);
        }
    }

    protected void updateActivity(int n) {
        int n2 = n;
        double d = this.activity[n2] = this.activity[n2] + this.varInc;
        if (d > 1.0E100) {
            this.varRescaleActivity();
        }
    }

    public void varDecayActivity() {
        this.varInc *= this.varDecay;
    }

    private void varRescaleActivity() {
        int n = 1;
        while (n < this.activity.length) {
            int n2 = n++;
            this.activity[n2] = this.activity[n2] * 1.0E-100;
        }
        this.varInc *= 1.0E-100;
    }

    public double varActivity(int n) {
        return this.activity[LiteralsUtils.var(n)];
    }

    public int numberOfInterestingVariables() {
        int n = 0;
        for (int i = 1; i < this.activity.length; ++i) {
            if (!(this.activity[i] > 1.0)) continue;
            ++n;
        }
        return n;
    }

    public void init() {
        int n = this.lits.nVars() + 1;
        if (this.activity == null || this.activity.length < n) {
            this.activity = new double[n];
        }
        this.phaseStrategy.init(n);
        this.activity[0] = -1.0;
        this.heap = new Heap(this.activity);
        this.heap.setBounds(n);
        for (int i = 1; i < n; ++i) {
            if (!$assertionsDisabled && i <= 0) {
                throw new AssertionError();
            }
            if (!$assertionsDisabled && i > this.lits.nVars()) {
                throw new AssertionError((Object)("" + this.lits.nVars() + "/" + i));
            }
            this.activity[i] = 0.0;
            if (!this.lits.belongsToPool(i)) continue;
            this.heap.insert(i);
        }
    }

    public String toString() {
        return "VSIDS like heuristics from MiniSAT using a heap " + this.phaseStrategy;
    }

    public ILits getVocabulary() {
        return this.lits;
    }

    public void printStat(PrintWriter printWriter, String string) {
        printWriter.println(string + "non guided choices\t" + this.nullchoice);
    }

    public void assignLiteral(int n) {
    }

    public void updateVarAtDecisionLevel(int n) {
        this.phaseStrategy.updateVarAtDecisionLevel(n);
    }

    static {
        $assertionsDisabled = !VarOrderHeap.class.desiredAssertionStatus();
    }
}

