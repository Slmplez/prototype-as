/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.tools;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.Map;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IConstr;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;
import org.sat4j.specs.SearchListener;
import org.sat4j.specs.TimeoutException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractOutputSolver
implements ISolver {
    protected int nbvars;
    protected int nbclauses;
    protected boolean fixedNbClauses = false;
    protected boolean firstConstr = true;
    private static final long serialVersionUID = 1L;

    @Override
    public boolean removeConstr(IConstr iConstr) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void addAllClauses(IVec<IVecInt> iVec) throws ContradictionException {
        throw new UnsupportedOperationException();
    }

    @Override
    public void setTimeout(int n) {
    }

    @Override
    public void setTimeoutMs(long l) {
    }

    @Override
    public int getTimeout() {
        return 0;
    }

    @Override
    public long getTimeoutMs() {
        return 0L;
    }

    @Override
    public void expireTimeout() {
    }

    @Override
    public boolean isSatisfiable(IVecInt iVecInt, boolean bl) throws TimeoutException {
        throw new TimeoutException("There is no real solver behind!");
    }

    @Override
    public boolean isSatisfiable(boolean bl) throws TimeoutException {
        throw new TimeoutException("There is no real solver behind!");
    }

    @Override
    public void printInfos(PrintWriter printWriter, String string) {
    }

    @Override
    public void setTimeoutOnConflicts(int n) {
    }

    @Override
    public boolean isDBSimplificationAllowed() {
        return false;
    }

    @Override
    public void setDBSimplificationAllowed(boolean bl) {
    }

    @Override
    public void printStat(PrintStream printStream, String string) {
    }

    @Override
    public void printStat(PrintWriter printWriter, String string) {
    }

    @Override
    public Map<String, Number> getStat() {
        return null;
    }

    @Override
    public void clearLearntClauses() {
    }

    @Override
    public int[] model() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean model(int n) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isSatisfiable() throws TimeoutException {
        throw new TimeoutException("There is no real solver behind!");
    }

    @Override
    public boolean isSatisfiable(IVecInt iVecInt) throws TimeoutException {
        throw new TimeoutException("There is no real solver behind!");
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
    public boolean removeSubsumedConstr(IConstr iConstr) {
        return false;
    }

    @Override
    public IConstr addBlockingClause(IVecInt iVecInt) throws ContradictionException {
        throw new UnsupportedOperationException();
    }

    @Override
    public SearchListener getSearchListener() {
        throw new UnsupportedOperationException();
    }

    @Override
    public void setSearchListener(SearchListener searchListener) {
    }

    @Override
    public boolean isVerbose() {
        return true;
    }

    @Override
    public void setVerbose(boolean bl) {
    }

    @Override
    public void setLogPrefix(String string) {
    }

    @Override
    public String getLogPrefix() {
        return "";
    }

    @Override
    public IVecInt unsatExplanation() {
        throw new UnsupportedOperationException();
    }

    @Override
    public int[] primeImplicant() {
        throw new UnsupportedOperationException();
    }
}

