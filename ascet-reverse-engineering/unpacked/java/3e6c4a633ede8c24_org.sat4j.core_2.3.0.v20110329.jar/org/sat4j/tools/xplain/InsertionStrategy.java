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
public class InsertionStrategy
implements MinimizationStrategy {
    private boolean computationCanceled;
    static final /* synthetic */ boolean $assertionsDisabled;
    static /* synthetic */ Class class$org$sat4j$tools$xplain$InsertionStrategy;

    @Override
    public void cancelExplanationComputation() {
        this.computationCanceled = true;
    }

    @Override
    public IVecInt explain(ISolver iSolver, Map<Integer, ?> map, IVecInt iVecInt) throws TimeoutException {
        int n;
        boolean bl;
        this.computationCanceled = false;
        VecInt vecInt = new VecInt(map.size() + iVecInt.size());
        iVecInt.copyTo(vecInt);
        IVecInt iVecInt2 = iSolver.unsatExplanation();
        if (iVecInt2.size() == 1) {
            VecInt vecInt2 = new VecInt();
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
        int n2 = 0;
        while (n2 < iVecInt2.size()) {
            if (iVecInt.contains(iVecInt2.get(n2))) {
                iVecInt2.delete(n2);
                continue;
            }
            ++n2;
        }
        Set<Integer> set = map.keySet();
        VecInt vecInt3 = new VecInt(set.size());
        for (Integer object2 : set) {
            vecInt3.push(object2);
        }
        IteratorInt bl2 = iVecInt2.iterator();
        while (bl2.hasNext()) {
            int n3 = bl2.next();
            if (n3 < 0) {
                n3 = -n3;
            }
            vecInt3.remove(n3);
            vecInt.push(n3);
        }
        vecInt3.copyTo(vecInt);
        int n3 = iVecInt.size();
        do {
            boolean bl3 = false;
            int n4 = n3;
            vecInt.set(n4, -vecInt.get(n4));
            if (!$assertionsDisabled && vecInt.get(n4) >= 0) {
                throw new AssertionError();
            }
            while (!this.computationCanceled && iSolver.isSatisfiable(vecInt)) {
                if (!$assertionsDisabled && vecInt.get(++n4) <= 0) {
                    throw new AssertionError();
                }
                vecInt.set(n4, -vecInt.get(n4));
            }
            if (!this.computationCanceled && n4 > n3) {
                if (!$assertionsDisabled && iSolver.isSatisfiable(vecInt)) {
                    throw new AssertionError();
                }
                if (n4 < vecInt.size()) {
                    n = vecInt.get(n4);
                    for (int i = n4; i > n3; --i) {
                        vecInt.set(i, -vecInt.get(i - 1));
                    }
                    vecInt.set(n3, n);
                    if (iSolver.isVerbose()) {
                        System.out.println(new StringBuffer().append(iSolver.getLogPrefix()).append(map.get(new Integer(n))).append(" is mandatory ").toString());
                    }
                }
                bl = true;
            }
            ++n3;
        } while (!this.computationCanceled && bl && iSolver.isSatisfiable(vecInt));
        if (this.computationCanceled) {
            throw new TimeoutException();
        }
        VecInt vecInt2 = new VecInt(n3);
        for (n = iVecInt.size(); n < n3; ++n) {
            vecInt2.push(-vecInt.get(n));
        }
        return vecInt2;
    }

    public String toString() {
        return "Replay (Insertion-based) minimization strategy";
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
        $assertionsDisabled = !(class$org$sat4j$tools$xplain$InsertionStrategy == null ? (class$org$sat4j$tools$xplain$InsertionStrategy = InsertionStrategy.class$("org.sat4j.tools.xplain.InsertionStrategy")) : class$org$sat4j$tools$xplain$InsertionStrategy).desiredAssertionStatus();
    }
}

