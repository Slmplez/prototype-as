/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.core.LiteralsUtils
 *  org.sat4j.minisat.core.IPhaseSelectionStrategy
 *  org.sat4j.minisat.orders.PhaseInLastLearnedClauseSelectionStrategy
 *  org.sat4j.minisat.orders.VarOrderHeap
 *  org.sat4j.specs.IVec
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb.orders;

import java.math.BigInteger;
import org.sat4j.core.LiteralsUtils;
import org.sat4j.minisat.core.IPhaseSelectionStrategy;
import org.sat4j.minisat.orders.PhaseInLastLearnedClauseSelectionStrategy;
import org.sat4j.minisat.orders.VarOrderHeap;
import org.sat4j.pb.ObjectiveFunction;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;

public class VarOrderHeapObjective
extends VarOrderHeap {
    private static final long serialVersionUID = 1L;
    private ObjectiveFunction obj;

    public VarOrderHeapObjective() {
        this((IPhaseSelectionStrategy)new PhaseInLastLearnedClauseSelectionStrategy());
    }

    public VarOrderHeapObjective(IPhaseSelectionStrategy iPhaseSelectionStrategy) {
        super(iPhaseSelectionStrategy);
    }

    public void setObjectiveFunction(ObjectiveFunction objectiveFunction) {
        this.obj = objectiveFunction;
    }

    public void init() {
        super.init();
        if (this.obj != null) {
            IVecInt iVecInt = this.obj.getVars();
            IVec<BigInteger> iVec = this.obj.getCoeffs();
            for (int i = 0; i < iVecInt.size(); ++i) {
                int n = iVecInt.get(i);
                if (!this.lits.belongsToPool(Math.abs(n))) continue;
                int n2 = this.lits.getFromPool(n);
                BigInteger bigInteger = (BigInteger)iVec.get(i);
                if (bigInteger.signum() < 0) {
                    n2 = LiteralsUtils.neg((int)n2);
                }
                int n3 = LiteralsUtils.var((int)n2);
                double d = this.activity[n3] = bigInteger.bitLength() < 64 ? (double)bigInteger.abs().longValue() : 9.223372036854776E18;
                if (this.heap.inHeap(n3)) {
                    this.heap.increase(n3);
                } else {
                    this.heap.insert(n3);
                }
                this.phaseStrategy.init(n3, LiteralsUtils.neg((int)n2));
            }
        }
    }

    public String toString() {
        return super.toString() + " taking into account the objective function";
    }
}

