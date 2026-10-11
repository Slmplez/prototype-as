/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.tools.xplain;

import java.util.Map;
import java.util.Set;
import org.sat4j.core.VecInt;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.IVecInt;
import org.sat4j.specs.IteratorInt;
import org.sat4j.specs.TimeoutException;
import org.sat4j.tools.xplain.MinimizationStrategy;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class QuickXplainStrategy
implements MinimizationStrategy {
    private boolean computationCanceled;

    @Override
    public void cancelExplanationComputation() {
        this.computationCanceled = true;
    }

    @Override
    public IVecInt explain(ISolver iSolver, Map<Integer, ?> map, IVecInt iVecInt) throws TimeoutException {
        this.computationCanceled = false;
        VecInt vecInt = new VecInt(map.size() + iVecInt.size());
        iVecInt.copyTo(vecInt);
        IVecInt iVecInt2 = iSolver.unsatExplanation();
        VecInt vecInt2 = new VecInt(iVecInt2.size());
        if (iVecInt2.size() == 1) {
            vecInt2.push(-iVecInt2.get(0));
            return vecInt2;
        }
        if (iSolver.isVerbose()) {
            System.out.print(new StringBuffer().append(iSolver.getLogPrefix()).append("initial unsat core ").toString());
            iVecInt2.sort();
            IteratorInt iteratorInt = iVecInt2.iterator();
            while (iteratorInt.hasNext()) {
                System.out.print(map.get(new Integer(-iteratorInt.next())));
                System.out.print(" ");
            }
            System.out.println();
        }
        int n = 0;
        while (n < iVecInt2.size()) {
            if (iVecInt.contains(iVecInt2.get(n))) {
                iVecInt2.delete(n);
                continue;
            }
            ++n;
        }
        Set<Integer> set = map.keySet();
        VecInt vecInt3 = new VecInt(set.size());
        for (Integer object2 : set) {
            vecInt3.push(object2);
        }
        IteratorInt n3 = iVecInt2.iterator();
        while (n3.hasNext()) {
            int n2 = n3.next();
            if (n2 < 0) {
                n2 = -n2;
            }
            vecInt3.remove(n2);
            vecInt.push(n2);
        }
        int n2 = vecInt.size() - 1;
        vecInt3.copyTo(vecInt);
        this.computeExplanation(iSolver, map, vecInt, iVecInt.size(), n2, vecInt2);
        return vecInt2;
    }

    private void computeExplanation(ISolver iSolver, Map<Integer, ?> map, IVecInt iVecInt, int n, int n2, IVecInt iVecInt2) throws TimeoutException {
        int n3;
        if (iSolver.isVerbose()) {
            System.out.println(new StringBuffer().append(iSolver.getLogPrefix()).append("qxplain ").append(n).append("/").append(n2).toString());
        }
        if (!iSolver.isSatisfiable(iVecInt)) {
            return;
        }
        if (n == n2) {
            iVecInt2.push(iVecInt.get(n));
            iVecInt.set(n, -iVecInt.get(n));
            if (iSolver.isVerbose()) {
                System.out.println(new StringBuffer().append(iSolver.getLogPrefix()).append(map.get(new Integer(-iVecInt.get(n)))).append(" is mandatory ").toString());
            }
            return;
        }
        int n4 = (n2 + n) / 2;
        if (n4 < n2) {
            for (n3 = n; n3 <= n4; ++n3) {
                iVecInt.set(n3, -iVecInt.get(n3));
            }
            this.computeExplanation(iSolver, map, iVecInt, n4 + 1, n2, iVecInt2);
        }
        if (n <= n4) {
            for (n3 = n; n3 <= n4; ++n3) {
                iVecInt.set(n3, -iVecInt.get(n3));
            }
            this.computeExplanation(iSolver, map, iVecInt, n, n4, iVecInt2);
        }
        if (this.computationCanceled) {
            throw new TimeoutException();
        }
    }

    public String toString() {
        return "QuickXplain (AAAI 2004 version) minimization strategy";
    }
}

