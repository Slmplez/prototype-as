/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.specs;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.Serializable;
import java.util.Map;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.IProblem;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;
import org.sat4j.specs.SearchListener;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ISolver
extends IProblem,
Serializable {
    @Deprecated
    public int newVar();

    public int newVar(int var1);

    public int nextFreeVarId(boolean var1);

    public void setExpectedNumberOfClauses(int var1);

    public IConstr addClause(IVecInt var1) throws ContradictionException;

    public IConstr addBlockingClause(IVecInt var1) throws ContradictionException;

    public boolean removeConstr(IConstr var1);

    public boolean removeSubsumedConstr(IConstr var1);

    public void addAllClauses(IVec<IVecInt> var1) throws ContradictionException;

    public IConstr addAtMost(IVecInt var1, int var2) throws ContradictionException;

    public IConstr addAtLeast(IVecInt var1, int var2) throws ContradictionException;

    public void setTimeout(int var1);

    public void setTimeoutOnConflicts(int var1);

    public void setTimeoutMs(long var1);

    public int getTimeout();

    public long getTimeoutMs();

    public void expireTimeout();

    public void reset();

    @Deprecated
    public void printStat(PrintStream var1, String var2);

    public void printStat(PrintWriter var1, String var2);

    public Map<String, Number> getStat();

    public String toString(String var1);

    public void clearLearntClauses();

    public void setDBSimplificationAllowed(boolean var1);

    public boolean isDBSimplificationAllowed();

    public void setSearchListener(SearchListener var1);

    public SearchListener getSearchListener();

    public boolean isVerbose();

    public void setVerbose(boolean var1);

    public void setLogPrefix(String var1);

    public String getLogPrefix();

    public IVecInt unsatExplanation();
}

