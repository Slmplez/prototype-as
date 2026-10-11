/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.tools;

import org.sat4j.core.VecInt;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.IVecInt;
import org.sat4j.specs.TimeoutException;
import org.sat4j.tools.SolverDecorator;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SingleSolutionDetector
extends SolverDecorator<ISolver> {
    private static final long serialVersionUID = 1L;
    static final /* synthetic */ boolean $assertionsDisabled;
    static /* synthetic */ Class class$org$sat4j$tools$SingleSolutionDetector;

    public SingleSolutionDetector(ISolver iSolver) {
        super(iSolver);
    }

    public boolean hasASingleSolution() throws TimeoutException {
        return this.hasASingleSolution(new VecInt());
    }

    public boolean hasASingleSolution(IVecInt iVecInt) throws TimeoutException {
        int[] nArray = this.model();
        if (!$assertionsDisabled && nArray == null) {
            throw new AssertionError();
        }
        VecInt vecInt = new VecInt(nArray.length);
        for (int n : nArray) {
            vecInt.push(-n);
        }
        boolean bl = false;
        try {
            IConstr iConstr = this.addClause(vecInt);
            bl = !this.isSatisfiable(iVecInt);
            this.removeConstr(iConstr);
        }
        catch (ContradictionException contradictionException) {
            bl = true;
        }
        return bl;
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
        $assertionsDisabled = !(class$org$sat4j$tools$SingleSolutionDetector == null ? (class$org$sat4j$tools$SingleSolutionDetector = SingleSolutionDetector.class$("org.sat4j.tools.SingleSolutionDetector")) : class$org$sat4j$tools$SingleSolutionDetector).desiredAssertionStatus();
    }
}

