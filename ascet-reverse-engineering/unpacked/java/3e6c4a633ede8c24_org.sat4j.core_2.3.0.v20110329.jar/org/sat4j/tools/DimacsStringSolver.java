/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.tools;

import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.IVecInt;
import org.sat4j.specs.IteratorInt;
import org.sat4j.tools.AbstractOutputSolver;

public class DimacsStringSolver
extends AbstractOutputSolver {
    private static final long serialVersionUID = 1L;
    private StringBuffer out;
    private int firstCharPos;
    private final int initBuilderSize;
    private int maxvarid = 0;
    static final /* synthetic */ boolean $assertionsDisabled;

    public DimacsStringSolver() {
        this(16);
    }

    public DimacsStringSolver(int n) {
        this.out = new StringBuffer(n);
        this.initBuilderSize = n;
    }

    public StringBuffer getOut() {
        return this.out;
    }

    public int newVar() {
        return 0;
    }

    public int newVar(int n) {
        this.setNbVars(n);
        return n;
    }

    protected void setNbVars(int n) {
        this.nbvars = n;
        this.maxvarid = n;
    }

    public void setExpectedNumberOfClauses(int n) {
        this.out.append(" ");
        this.out.append(n);
        this.nbclauses = n;
        this.fixedNbClauses = true;
    }

    public IConstr addClause(IVecInt iVecInt) throws ContradictionException {
        if (this.firstConstr) {
            if (!this.fixedNbClauses) {
                this.firstCharPos = 7 + Integer.toString(this.nbvars).length();
                this.out.append("                    ");
                this.out.append("\n");
                this.nbclauses = 0;
            }
            this.firstConstr = false;
        }
        if (!this.fixedNbClauses) {
            ++this.nbclauses;
        }
        IteratorInt iteratorInt = iVecInt.iterator();
        while (iteratorInt.hasNext()) {
            this.out.append(iteratorInt.next()).append(" ");
        }
        this.out.append("0\n");
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
            this.firstCharPos = 0;
            this.out.append("                    ");
            this.out.append("\n");
            this.nbclauses = 0;
            this.firstConstr = false;
        }
        for (int i = 0; i <= iVecInt.size(); ++i) {
            for (int j = i + 1; j < iVecInt.size(); ++j) {
                if (!this.fixedNbClauses) {
                    ++this.nbclauses;
                }
                this.out.append(-iVecInt.get(i));
                this.out.append(" ");
                this.out.append(-iVecInt.get(j));
                this.out.append(" 0\n");
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
        this.out = new StringBuffer(this.initBuilderSize);
        this.maxvarid = 0;
    }

    public String toString(String string) {
        return "Dimacs output solver";
    }

    public int nConstraints() {
        return this.nbclauses;
    }

    public int nVars() {
        return this.maxvarid;
    }

    public String toString() {
        this.out.insert(this.firstCharPos, "p cnf " + this.maxvarid + " " + this.nbclauses);
        return this.out.toString();
    }

    public int nextFreeVarId(boolean bl) {
        if (bl) {
            ++this.maxvarid;
            return this.maxvarid;
        }
        return this.maxvarid;
    }

    static {
        $assertionsDisabled = !DimacsStringSolver.class.desiredAssertionStatus();
    }
}

