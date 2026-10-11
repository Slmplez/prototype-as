/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.tools;

import org.sat4j.core.VecInt;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.TimeoutException;
import org.sat4j.tools.SolverDecorator;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SolutionCounter
extends SolverDecorator<ISolver> {
    private static final long serialVersionUID = 1L;
    private int lowerBound;

    public SolutionCounter(ISolver iSolver) {
        super(iSolver);
    }

    public int lowerBound() {
        return this.lowerBound;
    }

    public long countSolutions() throws TimeoutException {
        this.lowerBound = 0;
        boolean bl = false;
        while (!bl && this.isSatisfiable(true)) {
            ++this.lowerBound;
            int[] nArray = this.model();
            VecInt vecInt = new VecInt(nArray.length);
            for (int n : nArray) {
                vecInt.push(-n);
            }
            try {
                this.addClause(vecInt);
            }
            catch (ContradictionException contradictionException) {
                bl = true;
            }
        }
        return this.lowerBound;
    }
}

