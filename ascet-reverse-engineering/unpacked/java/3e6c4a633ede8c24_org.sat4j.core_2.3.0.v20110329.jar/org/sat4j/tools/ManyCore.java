/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.tools;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.sat4j.core.ASolverFactory;
import org.sat4j.core.VecInt;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;
import org.sat4j.specs.SearchListener;
import org.sat4j.specs.TimeoutException;
import org.sat4j.tools.ConstrGroup;
import org.sat4j.tools.OutcomeListener;
import org.sat4j.tools.RunnableSolver;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ManyCore<S extends ISolver>
implements ISolver,
OutcomeListener {
    private static final long MINIMAL_MEMORY_REQUIREMENT = 500000000L;
    private static final int NORMAL_SLEEP = 500;
    private static final int FAST_SLEEP = 50;
    private static final long serialVersionUID = 1L;
    private final String[] availableSolvers;
    protected final List<S> solvers;
    protected final int numberOfSolvers;
    private int winnerId;
    private boolean resultFound;
    private volatile int remainingSolvers;
    private volatile int sleepTime;
    private volatile boolean solved;
    static final /* synthetic */ boolean $assertionsDisabled;
    static /* synthetic */ Class class$org$sat4j$tools$ManyCore;

    public ManyCore(ASolverFactory<S> aSolverFactory, String[] stringArray) {
        this.availableSolvers = stringArray;
        Runtime runtime = Runtime.getRuntime();
        long l = runtime.maxMemory();
        int n = runtime.availableProcessors();
        this.numberOfSolvers = l > 500000000L ? (stringArray.length < n ? stringArray.length : n) : 1;
        this.solvers = new ArrayList<S>(this.numberOfSolvers);
        for (int i = 0; i < this.numberOfSolvers; ++i) {
            this.solvers.add(aSolverFactory.createSolverByName(this.availableSolvers[i]));
        }
    }

    @Override
    public void addAllClauses(IVec<IVecInt> iVec) throws ContradictionException {
        for (int i = 0; i < this.numberOfSolvers; ++i) {
            ((ISolver)this.solvers.get(i)).addAllClauses(iVec);
        }
    }

    @Override
    public IConstr addAtLeast(IVecInt iVecInt, int n) throws ContradictionException {
        ConstrGroup constrGroup = new ConstrGroup();
        for (int i = 0; i < this.numberOfSolvers; ++i) {
            constrGroup.add(((ISolver)this.solvers.get(i)).addAtLeast(iVecInt, n));
        }
        return constrGroup;
    }

    @Override
    public IConstr addAtMost(IVecInt iVecInt, int n) throws ContradictionException {
        ConstrGroup constrGroup = new ConstrGroup();
        for (int i = 0; i < this.numberOfSolvers; ++i) {
            constrGroup.add(((ISolver)this.solvers.get(i)).addAtMost(iVecInt, n));
        }
        return constrGroup;
    }

    @Override
    public IConstr addClause(IVecInt iVecInt) throws ContradictionException {
        ConstrGroup constrGroup = new ConstrGroup();
        for (int i = 0; i < this.numberOfSolvers; ++i) {
            constrGroup.add(((ISolver)this.solvers.get(i)).addClause(iVecInt));
        }
        return constrGroup;
    }

    @Override
    public void clearLearntClauses() {
        for (int i = 0; i < this.numberOfSolvers; ++i) {
            ((ISolver)this.solvers.get(i)).clearLearntClauses();
        }
    }

    @Override
    public void expireTimeout() {
        for (int i = 0; i < this.numberOfSolvers; ++i) {
            ((ISolver)this.solvers.get(i)).expireTimeout();
        }
        this.sleepTime = 50;
    }

    @Override
    public Map<String, Number> getStat() {
        return ((ISolver)this.solvers.get(this.winnerId)).getStat();
    }

    @Override
    public int getTimeout() {
        return ((ISolver)this.solvers.get(0)).getTimeout();
    }

    @Override
    public long getTimeoutMs() {
        return ((ISolver)this.solvers.get(0)).getTimeoutMs();
    }

    @Override
    public int newVar() {
        throw new UnsupportedOperationException();
    }

    @Override
    public int newVar(int n) {
        int n2 = 0;
        for (int i = 0; i < this.numberOfSolvers; ++i) {
            n2 = ((ISolver)this.solvers.get(i)).newVar(n);
        }
        return n2;
    }

    @Override
    @Deprecated
    public void printStat(PrintStream printStream, String string) {
        ((ISolver)this.solvers.get(this.winnerId)).printStat(printStream, string);
    }

    @Override
    public void printStat(PrintWriter printWriter, String string) {
        ((ISolver)this.solvers.get(this.winnerId)).printStat(printWriter, string);
    }

    @Override
    public boolean removeConstr(IConstr iConstr) {
        if (iConstr instanceof ConstrGroup) {
            ConstrGroup constrGroup = (ConstrGroup)iConstr;
            boolean bl = true;
            for (int i = 0; i < this.numberOfSolvers; ++i) {
                bl &= ((ISolver)this.solvers.get(i)).removeConstr(constrGroup.getConstr(i));
            }
            return bl;
        }
        throw new IllegalArgumentException("Can only remove a group of constraints!");
    }

    @Override
    public void reset() {
        for (int i = 0; i < this.numberOfSolvers; ++i) {
            ((ISolver)this.solvers.get(i)).reset();
        }
    }

    @Override
    public void setExpectedNumberOfClauses(int n) {
        for (int i = 0; i < this.numberOfSolvers; ++i) {
            ((ISolver)this.solvers.get(i)).setExpectedNumberOfClauses(n);
        }
    }

    @Override
    public void setTimeout(int n) {
        for (int i = 0; i < this.numberOfSolvers; ++i) {
            ((ISolver)this.solvers.get(i)).setTimeout(n);
        }
    }

    @Override
    public void setTimeoutMs(long l) {
        for (int i = 0; i < this.numberOfSolvers; ++i) {
            ((ISolver)this.solvers.get(i)).setTimeoutMs(l);
        }
    }

    @Override
    public void setTimeoutOnConflicts(int n) {
        for (int i = 0; i < this.numberOfSolvers; ++i) {
            ((ISolver)this.solvers.get(i)).setTimeoutOnConflicts(n);
        }
    }

    @Override
    public String toString(String string) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(string);
        stringBuffer.append("ManyCore solver with ");
        stringBuffer.append(this.numberOfSolvers);
        stringBuffer.append(" solvers running in parallel");
        stringBuffer.append("\n");
        for (int i = 0; i < this.numberOfSolvers; ++i) {
            stringBuffer.append(((ISolver)this.solvers.get(i)).toString(string));
            if (i >= this.numberOfSolvers - 1) continue;
            stringBuffer.append("\n");
        }
        return stringBuffer.toString();
    }

    @Override
    public int[] findModel() throws TimeoutException {
        throw new UnsupportedOperationException();
    }

    @Override
    public int[] findModel(IVecInt iVecInt) throws TimeoutException {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isSatisfiable() throws TimeoutException {
        return this.isSatisfiable(VecInt.EMPTY, false);
    }

    @Override
    public boolean isSatisfiable(IVecInt iVecInt, boolean bl) throws TimeoutException {
        this.remainingSolvers = this.numberOfSolvers;
        this.solved = false;
        for (int i = 0; i < this.numberOfSolvers; ++i) {
            new Thread(new RunnableSolver(i, (ISolver)this.solvers.get(i), iVecInt, bl, this)).start();
        }
        try {
            this.sleepTime = 500;
            do {
                Thread.sleep(this.sleepTime);
            } while (this.remainingSolvers > 0);
        }
        catch (InterruptedException interruptedException) {
            // empty catch block
        }
        if (!this.solved) {
            if (!$assertionsDisabled && this.remainingSolvers != 0) {
                throw new AssertionError();
            }
            throw new TimeoutException();
        }
        return this.resultFound;
    }

    @Override
    public boolean isSatisfiable(boolean bl) throws TimeoutException {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isSatisfiable(IVecInt iVecInt) throws TimeoutException {
        throw new UnsupportedOperationException();
    }

    @Override
    public int[] model() {
        return ((ISolver)this.solvers.get(this.winnerId)).model();
    }

    @Override
    public boolean model(int n) {
        return ((ISolver)this.solvers.get(this.winnerId)).model(n);
    }

    @Override
    public int nConstraints() {
        return ((ISolver)this.solvers.get(0)).nConstraints();
    }

    @Override
    public int nVars() {
        return ((ISolver)this.solvers.get(0)).nVars();
    }

    @Override
    public void printInfos(PrintWriter printWriter, String string) {
        for (int i = 0; i < this.numberOfSolvers; ++i) {
            ((ISolver)this.solvers.get(i)).printInfos(printWriter, string);
        }
    }

    @Override
    public synchronized void onFinishWithAnswer(boolean bl, boolean bl2, int n) {
        if (bl && !this.solved) {
            this.winnerId = n;
            this.solved = true;
            this.resultFound = bl2;
            for (int i = 0; i < this.numberOfSolvers; ++i) {
                if (i == this.winnerId) continue;
                ((ISolver)this.solvers.get(i)).expireTimeout();
            }
            this.sleepTime = 50;
            System.out.println(new StringBuffer().append(this.getLogPrefix()).append(" And the winner is ").append(this.availableSolvers[this.winnerId]).toString());
        }
        --this.remainingSolvers;
    }

    @Override
    public boolean isDBSimplificationAllowed() {
        return ((ISolver)this.solvers.get(0)).isDBSimplificationAllowed();
    }

    @Override
    public void setDBSimplificationAllowed(boolean bl) {
        for (int i = 0; i < this.numberOfSolvers; ++i) {
            ((ISolver)this.solvers.get(0)).setDBSimplificationAllowed(bl);
        }
    }

    @Override
    public void setSearchListener(SearchListener searchListener) {
        for (int i = 0; i < this.numberOfSolvers; ++i) {
            ((ISolver)this.solvers.get(i)).setSearchListener(searchListener);
        }
    }

    @Override
    public SearchListener getSearchListener() {
        return ((ISolver)this.solvers.get(0)).getSearchListener();
    }

    @Override
    public int nextFreeVarId(boolean bl) {
        return ((ISolver)this.solvers.get(0)).nextFreeVarId(bl);
    }

    @Override
    public IConstr addBlockingClause(IVecInt iVecInt) throws ContradictionException {
        ConstrGroup constrGroup = new ConstrGroup(false);
        for (int i = 0; i < this.numberOfSolvers; ++i) {
            constrGroup.add(((ISolver)this.solvers.get(i)).addBlockingClause(iVecInt));
        }
        return constrGroup;
    }

    @Override
    public boolean removeSubsumedConstr(IConstr iConstr) {
        if (iConstr instanceof ConstrGroup) {
            ConstrGroup constrGroup = (ConstrGroup)iConstr;
            boolean bl = true;
            for (int i = 0; i < this.numberOfSolvers; ++i) {
                bl &= ((ISolver)this.solvers.get(i)).removeSubsumedConstr(constrGroup.getConstr(i));
            }
            return bl;
        }
        throw new IllegalArgumentException("Can only remove a group of constraints!");
    }

    @Override
    public boolean isVerbose() {
        return ((ISolver)this.solvers.get(0)).isVerbose();
    }

    @Override
    public void setVerbose(boolean bl) {
        for (int i = 0; i < this.numberOfSolvers; ++i) {
            ((ISolver)this.solvers.get(i)).setVerbose(bl);
        }
    }

    @Override
    public void setLogPrefix(String string) {
        for (int i = 0; i < this.numberOfSolvers; ++i) {
            ((ISolver)this.solvers.get(i)).setLogPrefix(string);
        }
    }

    @Override
    public String getLogPrefix() {
        return ((ISolver)this.solvers.get(0)).getLogPrefix();
    }

    @Override
    public IVecInt unsatExplanation() {
        return ((ISolver)this.solvers.get(this.winnerId)).unsatExplanation();
    }

    @Override
    public int[] primeImplicant() {
        return ((ISolver)this.solvers.get(this.winnerId)).primeImplicant();
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
        $assertionsDisabled = !(class$org$sat4j$tools$ManyCore == null ? (class$org$sat4j$tools$ManyCore = ManyCore.class$("org.sat4j.tools.ManyCore")) : class$org$sat4j$tools$ManyCore).desiredAssertionStatus();
    }
}

