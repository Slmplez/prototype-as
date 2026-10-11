/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.tools;

import java.io.Serializable;
import org.sat4j.core.VecInt;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.ISolver;

public class DimacsArrayReader
implements Serializable {
    private static final long serialVersionUID = 1L;
    protected final ISolver solver;

    public DimacsArrayReader(ISolver iSolver) {
        this.solver = iSolver;
    }

    protected boolean handleConstr(int n, int n2, int[] nArray) throws ContradictionException {
        VecInt vecInt = new VecInt(nArray);
        this.solver.addClause(vecInt);
        return true;
    }

    public ISolver parseInstance(int[] nArray, int[] nArray2, int[][] nArray3, int n) throws ContradictionException {
        this.solver.reset();
        this.solver.newVar(n);
        this.solver.setExpectedNumberOfClauses(nArray2.length);
        for (int i = 0; i < nArray2.length; ++i) {
            this.handleConstr(nArray[i], nArray2[i], nArray3[i]);
        }
        return this.solver;
    }

    public String decode(int[] nArray) {
        StringBuffer stringBuffer = new StringBuffer(4 * nArray.length);
        for (int i = 0; i < nArray.length; ++i) {
            stringBuffer.append(nArray[i]);
            stringBuffer.append(" ");
        }
        stringBuffer.append("0");
        return stringBuffer.toString();
    }

    protected ISolver getSolver() {
        return this.solver;
    }
}

