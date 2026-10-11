/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.tools;

import org.sat4j.core.VecInt;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.IVecInt;
import org.sat4j.specs.TimeoutException;

public final class RemiUtils {
    private RemiUtils() {
    }

    public static IVecInt backbone(ISolver iSolver) throws TimeoutException {
        VecInt vecInt = new VecInt();
        int n = iSolver.nVars();
        for (int i = 1; i <= n; ++i) {
            vecInt.push(i);
            if (iSolver.isSatisfiable(vecInt)) {
                vecInt.pop().push(-i);
                if (iSolver.isSatisfiable(vecInt)) {
                    vecInt.pop();
                    continue;
                }
                vecInt.pop().push(i);
                continue;
            }
            vecInt.pop().push(-i);
        }
        return vecInt;
    }
}

