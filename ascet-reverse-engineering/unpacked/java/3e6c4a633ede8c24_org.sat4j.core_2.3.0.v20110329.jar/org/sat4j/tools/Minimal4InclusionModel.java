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
public class Minimal4InclusionModel
extends SolverDecorator<ISolver> {
    private static final long serialVersionUID = 1L;

    public Minimal4InclusionModel(ISolver iSolver) {
        super(iSolver);
    }

    @Override
    public int[] model() {
        int[] nArray = null;
        VecInt vecInt = new VecInt();
        VecInt vecInt2 = new VecInt();
        try {
            do {
                nArray = super.model();
                vecInt.clear();
                vecInt2.clear();
                for (int n : nArray) {
                    if (n < 0) {
                        vecInt.push(-n);
                        continue;
                    }
                    vecInt2.push(n);
                }
                this.addClause(vecInt);
            } while (this.isSatisfiable(vecInt2));
        }
        catch (TimeoutException timeoutException) {
            throw new IllegalStateException("Solver timed out");
        }
        catch (ContradictionException contradictionException) {
            // empty catch block
        }
        int[] nArray2 = new int[vecInt.size()];
        int n = 0;
        for (int i = 0; i < nArray.length; ++i) {
            if (nArray[i] >= 0) continue;
            nArray2[n++] = nArray[i];
        }
        return nArray2;
    }
}

