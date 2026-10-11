/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.tools;

import org.sat4j.core.VecInt;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.IVecInt;
import org.sat4j.specs.TimeoutException;
import org.sat4j.tools.SolverDecorator;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ModelIterator
extends SolverDecorator<ISolver> {
    private static final long serialVersionUID = 1L;
    private boolean trivialfalsity = false;
    private final long bound;
    private long nbModelFound = 0L;

    public ModelIterator(ISolver iSolver) {
        this(iSolver, Long.MAX_VALUE);
    }

    public ModelIterator(ISolver iSolver, long l) {
        super(iSolver);
        this.bound = l;
    }

    @Override
    public int[] model() {
        int[] nArray = super.model();
        ++this.nbModelFound;
        VecInt vecInt = new VecInt(nArray.length);
        for (int n : nArray) {
            vecInt.push(-n);
        }
        try {
            this.addBlockingClause(vecInt);
        }
        catch (ContradictionException contradictionException) {
            this.trivialfalsity = true;
        }
        return nArray;
    }

    @Override
    public boolean isSatisfiable() throws TimeoutException {
        if (this.trivialfalsity || this.nbModelFound >= this.bound) {
            return false;
        }
        this.trivialfalsity = false;
        return super.isSatisfiable(true);
    }

    @Override
    public boolean isSatisfiable(IVecInt iVecInt) throws TimeoutException {
        if (this.trivialfalsity || this.nbModelFound >= this.bound) {
            return false;
        }
        this.trivialfalsity = false;
        return super.isSatisfiable(iVecInt, true);
    }

    @Override
    public void reset() {
        this.trivialfalsity = false;
        this.nbModelFound = 0L;
        super.reset();
    }

    @Override
    public int[] primeImplicant() {
        int[] nArray = super.primeImplicant();
        this.nbModelFound = (long)((double)this.nbModelFound + Math.pow(2.0, this.nVars() - nArray.length));
        VecInt vecInt = new VecInt(nArray.length);
        for (int n : nArray) {
            vecInt.push(-n);
        }
        try {
            this.addBlockingClause(vecInt);
        }
        catch (ContradictionException contradictionException) {
            this.trivialfalsity = true;
        }
        return nArray;
    }

    public long numberOfModelsFoundSoFar() {
        return this.nbModelFound;
    }
}

