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
public class Minimal4CardinalityModel
extends SolverDecorator<ISolver> {
    private static final long serialVersionUID = 1L;

    public Minimal4CardinalityModel(ISolver iSolver) {
        super(iSolver);
    }

    @Override
    public int[] model() {
        int[] nArray = null;
        VecInt vecInt = new VecInt();
        try {
            do {
                int n;
                nArray = super.model();
                vecInt.clear();
                for (n = 1; n <= this.nVars(); ++n) {
                    vecInt.push(-n);
                }
                n = 0;
                for (int n2 : nArray) {
                    if (n2 >= 0) continue;
                    ++n;
                }
                this.addAtMost(vecInt, n - 1);
            } while (this.isSatisfiable());
        }
        catch (TimeoutException timeoutException) {
            throw new IllegalStateException("Solver timed out");
        }
        catch (ContradictionException contradictionException) {
            // empty catch block
        }
        return nArray;
    }
}

