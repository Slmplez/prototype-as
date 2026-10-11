/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.tools.xplain;

import java.util.Map;
import org.sat4j.core.VecInt;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.IVecInt;
import org.sat4j.specs.TimeoutException;
import org.sat4j.tools.xplain.MinimizationStrategy;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class QuickXplain2001Strategy
implements MinimizationStrategy {
    private boolean computationCanceled;
    static final /* synthetic */ boolean $assertionsDisabled;
    static /* synthetic */ Class class$org$sat4j$tools$xplain$QuickXplain2001Strategy;

    @Override
    public void cancelExplanationComputation() {
        this.computationCanceled = true;
    }

    @Override
    public IVecInt explain(ISolver iSolver, Map<Integer, ?> map, IVecInt iVecInt) throws TimeoutException {
        Object object;
        this.computationCanceled = false;
        VecInt vecInt = new VecInt(map.size() + iVecInt.size());
        iVecInt.copyTo(vecInt);
        IVecInt iVecInt2 = iSolver.unsatExplanation();
        if (iSolver.isVerbose()) {
            System.out.print(new StringBuffer().append(iSolver.getLogPrefix()).append("initial unsat core ").toString());
            iVecInt2.sort();
            object = iVecInt2.iterator();
            while (object.hasNext()) {
                System.out.print(map.get(new Integer(-object.next())));
                System.out.print(" ");
            }
            System.out.println();
        }
        object = map.keySet();
        for (int i = 0; i < iVecInt2.size(); ++i) {
            int n = -iVecInt2.get(i);
            if (!object.contains(new Integer(n))) continue;
            vecInt.push(n);
        }
        VecInt vecInt2 = new VecInt(vecInt.size());
        this.computeExplanation(iSolver, vecInt, iVecInt.size(), vecInt.size() - 1, vecInt2);
        return vecInt2;
    }

    private void computeExplanation(ISolver iSolver, IVecInt iVecInt, int n, int n2, IVecInt iVecInt2) throws TimeoutException {
        int n3;
        if (!iSolver.isSatisfiable(iVecInt)) {
            return;
        }
        int n4 = n;
        iVecInt.set(n4, -iVecInt.get(n4));
        if (!$assertionsDisabled && iVecInt.get(n4) >= 0) {
            throw new AssertionError();
        }
        while (!this.computationCanceled && iSolver.isSatisfiable(iVecInt)) {
            if (n4 == n2) {
                for (int i = n; i <= n2; ++i) {
                    iVecInt.set(i, -iVecInt.get(i));
                }
                return;
            }
            if (!$assertionsDisabled && iVecInt.get(++n4) <= 0) {
                throw new AssertionError();
            }
            iVecInt.set(n4, -iVecInt.get(n4));
        }
        iVecInt2.push(-iVecInt.get(n4));
        if (n == n4) {
            return;
        }
        int n5 = n4 - 1;
        int n6 = (n5 + n) / 2;
        if (n6 < n5) {
            for (n3 = n6 + 1; n3 < n4; ++n3) {
                iVecInt.set(n3, -iVecInt.get(n3));
            }
            this.computeExplanation(iSolver, iVecInt, n6 + 1, n5, iVecInt2);
        }
        if (n <= n6) {
            for (n3 = n; n3 <= n6; ++n3) {
                iVecInt.set(n3, -iVecInt.get(n3));
            }
            this.computeExplanation(iSolver, iVecInt, n, n6, iVecInt2);
        }
        if (this.computationCanceled) {
            throw new TimeoutException();
        }
    }

    public String toString() {
        return "QuickXplain (IJCAI WS 2001 version) minimization strategy";
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
        $assertionsDisabled = !(class$org$sat4j$tools$xplain$QuickXplain2001Strategy == null ? (class$org$sat4j$tools$xplain$QuickXplain2001Strategy = QuickXplain2001Strategy.class$("org.sat4j.tools.xplain.QuickXplain2001Strategy")) : class$org$sat4j$tools$xplain$QuickXplain2001Strategy).desiredAssertionStatus();
    }
}

