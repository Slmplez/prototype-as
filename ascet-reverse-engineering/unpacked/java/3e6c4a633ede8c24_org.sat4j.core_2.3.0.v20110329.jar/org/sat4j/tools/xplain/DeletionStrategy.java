/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.tools.xplain;

import java.io.PrintWriter;
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
public class DeletionStrategy
implements MinimizationStrategy {
    private boolean computationCanceled;
    static final /* synthetic */ boolean $assertionsDisabled;
    static /* synthetic */ Class class$org$sat4j$tools$xplain$DeletionStrategy;

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
            iSolver.printStat(new PrintWriter(System.out, true), "c ");
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
        }
        vecInt3.copyTo(vecInt);
        int n2 = vecInt.size();
        iVecInt2.copyTo(vecInt);
        if (!$assertionsDisabled && iSolver.isSatisfiable(vecInt)) {
            throw new AssertionError();
        }
        int n4 = vecInt.size() - 1;
        for (int i = n2; i < n4; ++i) {
            if (this.computationCanceled) {
                throw new TimeoutException();
            }
            vecInt.set(i, -vecInt.get(i));
            if (iSolver.isVerbose()) {
                System.out.println(new StringBuffer().append(iSolver.getLogPrefix()).append("checking ").append(map.get(new Integer(vecInt.get(i)))).append(" ...").toString());
            }
            if (iSolver.isSatisfiable(vecInt)) {
                vecInt.set(i, -vecInt.get(i));
                vecInt2.push(-vecInt.get(i));
                if (iSolver.isVerbose()) {
                    System.out.println(new StringBuffer().append(iSolver.getLogPrefix()).append("mandatory.").toString());
                }
            } else if (iSolver.isVerbose()) {
                System.out.println(new StringBuffer().append(iSolver.getLogPrefix()).append("not needed.").toString());
            }
            iSolver.printStat(new PrintWriter(System.out, true), "c ");
        }
        if (vecInt2.size() == 0) {
            vecInt2.push(-vecInt.get(n4));
            if (iSolver.isVerbose()) {
                System.out.println(new StringBuffer().append(iSolver.getLogPrefix()).append("skipping last test,the remaining element ").append(map.get(new Integer(vecInt.get(n4)))).append(" is causing the inconsistency!").toString());
            }
        } else {
            vecInt.set(n4, -vecInt.get(n4));
            if (iSolver.isVerbose()) {
                System.out.println(new StringBuffer().append(iSolver.getLogPrefix()).append("checking ").append(map.get(new Integer(vecInt.get(n4)))).append(" ...").toString());
            }
            if (iSolver.isSatisfiable(vecInt)) {
                vecInt.set(n4, -vecInt.get(n4));
                vecInt2.push(-vecInt.get(n4));
                if (iSolver.isVerbose()) {
                    System.out.println(new StringBuffer().append(iSolver.getLogPrefix()).append("mandatory.").toString());
                }
            } else if (iSolver.isVerbose()) {
                System.out.println(new StringBuffer().append(iSolver.getLogPrefix()).append("not needed.").toString());
            }
            iSolver.printStat(new PrintWriter(System.out, true), "c ");
        }
        return vecInt2;
    }

    public String toString() {
        return "Deletion based minimization strategy";
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
        $assertionsDisabled = !(class$org$sat4j$tools$xplain$DeletionStrategy == null ? (class$org$sat4j$tools$xplain$DeletionStrategy = DeletionStrategy.class$("org.sat4j.tools.xplain.DeletionStrategy")) : class$org$sat4j$tools$xplain$DeletionStrategy).desiredAssertionStatus();
    }
}

