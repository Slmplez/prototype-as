/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.constraints.cnf;

import org.sat4j.minisat.core.ILits;
import org.sat4j.minisat.core.UnitPropagationListener;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IVecInt;

public abstract class Clauses {
    public static IVecInt sanityCheck(IVecInt iVecInt, ILits iLits, UnitPropagationListener unitPropagationListener) throws ContradictionException {
        int n = 0;
        while (n < iVecInt.size()) {
            if (iLits.isUnassigned(iVecInt.get(n))) {
                ++n;
                continue;
            }
            if (iLits.isSatisfied(iVecInt.get(n))) {
                return null;
            }
            iVecInt.delete(n);
        }
        iVecInt.sortUnique();
        for (n = 0; n < iVecInt.size() - 1; ++n) {
            if (iVecInt.get(n) != (iVecInt.get(n + 1) ^ 1)) continue;
            return null;
        }
        if (Clauses.propagationCheck(iVecInt, unitPropagationListener)) {
            return null;
        }
        return iVecInt;
    }

    static boolean propagationCheck(IVecInt iVecInt, UnitPropagationListener unitPropagationListener) throws ContradictionException {
        if (iVecInt.size() == 0) {
            throw new ContradictionException("Creating Empty clause ?");
        }
        if (iVecInt.size() == 1) {
            if (!unitPropagationListener.enqueue(iVecInt.get(0))) {
                throw new ContradictionException("Contradictory Unit Clauses");
            }
            return true;
        }
        return false;
    }
}

