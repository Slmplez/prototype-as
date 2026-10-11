/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.tools;

import java.io.ObjectInputStream;
import java.io.PrintWriter;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.IVecInt;
import org.sat4j.specs.IteratorInt;
import org.sat4j.tools.AbstractOutputSolver;

public class DimacsOutputSolver
extends AbstractOutputSolver {
    private static final long serialVersionUID = 1L;
    private transient PrintWriter out;
    static final /* synthetic */ boolean $assertionsDisabled;

    public DimacsOutputSolver() {
        this(new PrintWriter(System.out, true));
    }

    public DimacsOutputSolver(PrintWriter printWriter) {
        this.out = printWriter;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        this.out = new PrintWriter(System.out, true);
    }

    public int newVar() {
        return 0;
    }

    public int newVar(int n) {
        this.out.print("p cnf " + n);
        this.nbvars = n;
        return 0;
    }

    public void setExpectedNumberOfClauses(int n) {
        this.out.println(" " + n);
        this.nbclauses = n;
        this.fixedNbClauses = true;
    }

    public IConstr addClause(IVecInt iVecInt) throws ContradictionException {
        if (this.firstConstr) {
            if (!this.fixedNbClauses) {
                this.out.println(" XXXXXX");
            }
            this.firstConstr = false;
        }
        IteratorInt iteratorInt = iVecInt.iterator();
        while (iteratorInt.hasNext()) {
            this.out.print(iteratorInt.next() + " ");
        }
        this.out.println("0");
        return null;
    }

    public IConstr addAtMost(IVecInt iVecInt, int n) throws ContradictionException {
        if (n > 1) {
            throw new UnsupportedOperationException("Not a clausal problem! degree " + n);
        }
        if (!$assertionsDisabled && n != 1) {
            throw new AssertionError();
        }
        if (this.firstConstr) {
            if (!this.fixedNbClauses) {
                this.out.println("XXXXXX");
            }
            this.firstConstr = false;
        }
        for (int i = 0; i <= iVecInt.size(); ++i) {
            for (int j = i + 1; j < iVecInt.size(); ++j) {
                this.out.println("" + -iVecInt.get(i) + " " + -iVecInt.get(j) + " 0");
            }
        }
        return null;
    }

    public IConstr addAtLeast(IVecInt iVecInt, int n) throws ContradictionException {
        if (n > 1) {
            throw new UnsupportedOperationException("Not a clausal problem! degree " + n);
        }
        if (!$assertionsDisabled && n != 1) {
            throw new AssertionError();
        }
        return this.addClause(iVecInt);
    }

    public void reset() {
        this.fixedNbClauses = false;
        this.firstConstr = true;
    }

    public String toString(String string) {
        return "Dimacs output solver";
    }

    public int nConstraints() {
        return this.nbclauses;
    }

    public int nVars() {
        return this.nbvars;
    }

    public int nextFreeVarId(boolean bl) {
        throw new UnsupportedOperationException();
    }

    static {
        $assertionsDisabled = !DimacsOutputSolver.class.desiredAssertionStatus();
    }
}

