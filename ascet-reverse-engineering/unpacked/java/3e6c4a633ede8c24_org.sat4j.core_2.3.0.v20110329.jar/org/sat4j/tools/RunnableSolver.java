/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.tools;

import org.sat4j.specs.ISolver;
import org.sat4j.specs.IVecInt;
import org.sat4j.tools.OutcomeListener;

class RunnableSolver
implements Runnable {
    private final int index;
    private final ISolver solver;
    private final OutcomeListener ol;
    private final IVecInt assumps;
    private final boolean globalTimeout;

    public RunnableSolver(int n, ISolver iSolver, IVecInt iVecInt, boolean bl, OutcomeListener outcomeListener) {
        this.index = n;
        this.solver = iSolver;
        this.ol = outcomeListener;
        this.assumps = iVecInt;
        this.globalTimeout = bl;
    }

    public void run() {
        try {
            boolean bl = this.solver.isSatisfiable(this.assumps, this.globalTimeout);
            this.ol.onFinishWithAnswer(true, bl, this.index);
        }
        catch (Exception exception) {
            this.ol.onFinishWithAnswer(false, false, this.index);
        }
    }
}

