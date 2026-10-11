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
public abstract class SolverDecorator<T extends ISolver>
implements ISolver {
    private static final long serialVersionUID = 1L;
    private T solver;

    @Override
    public boolean isDBSimplificationAllowed() {
        return this.solver.isDBSimplificationAllowed();
    }

    @Override
    public void setDBSimplificationAllowed(boolean bl) {
        this.solver.setDBSimplificationAllowed(bl);
    }

    @Override
    public void setTimeoutOnConflicts(int n) {
        this.solver.setTimeoutOnConflicts(n);
    }

    @Override
    public void printInfos(PrintWriter printWriter, String string) {
        this.solver.printInfos(printWriter, string);
    }

    @Override
    public boolean isSatisfiable(boolean bl) throws TimeoutException {
        return this.solver.isSatisfiable(bl);
    }

    @Override
    public boolean isSatisfiable(IVecInt iVecInt, boolean bl) throws TimeoutException {
        return this.solver.isSatisfiable(iVecInt, bl);
    }

    @Override
    public void clearLearntClauses() {
        this.solver.clearLearntClauses();
    }

    @Override
    public int[] findModel() throws TimeoutException {
        return this.solver.findModel();
    }

    @Override
    public int[] findModel(IVecInt iVecInt) throws TimeoutException {
        return this.solver.findModel(iVecInt);
    }

    @Override
    public boolean model(int n) {
        return this.solver.model(n);
    }

    @Override
    public void setExpectedNumberOfClauses(int n) {
        this.solver.setExpectedNumberOfClauses(n);
    }

    @Override
    public int getTimeout() {
        return this.solver.getTimeout();
    }

    @Override
    public long getTimeoutMs() {
        return this.solver.getTimeoutMs();
    }

    @Override
    public String toString(String string) {
        return this.solver.toString(string);
    }

    public String toString() {
        return this.solver.toString();
    }

    @Override
    @Deprecated
    public void printStat(PrintStream printStream, String string) {
        this.solver.printStat(printStream, string);
    }

    @Override
    public void printStat(PrintWriter printWriter, String string) {
        this.solver.printStat(printWriter, string);
    }

    public SolverDecorator(T t) {
        this.solver = t;
    }

    @Override
    @Deprecated
    public int newVar() {
        return this.solver.newVar();
    }

    @Override
    public int newVar(int n) {
        return this.solver.newVar(n);
    }

    @Override
    public IConstr addClause(IVecInt iVecInt) throws ContradictionException {
        return this.solver.addClause(iVecInt);
    }

    @Override
    public void addAllClauses(IVec<IVecInt> iVec) throws ContradictionException {
        this.solver.addAllClauses(iVec);
    }

    @Override
    public IConstr addBlockingClause(IVecInt iVecInt) throws ContradictionException {
        return this.solver.addBlockingClause(iVecInt);
    }

    @Override
    public IConstr addAtMost(IVecInt iVecInt, int n) throws ContradictionException {
        return this.solver.addAtMost(iVecInt, n);
    }

    @Override
    public IConstr addAtLeast(IVecInt iVecInt, int n) throws ContradictionException {
        return this.solver.addAtLeast(iVecInt, n);
    }

    @Override
    public int[] model() {
        return this.solver.model();
    }

    @Override
    public boolean isSatisfiable() throws TimeoutException {
        return this.solver.isSatisfiable();
    }

    @Override
    public boolean isSatisfiable(IVecInt iVecInt) throws TimeoutException {
        return this.solver.isSatisfiable(iVecInt);
    }

    @Override
    public void setTimeout(int n) {
        this.solver.setTimeout(n);
    }

    @Override
    public void setTimeoutMs(long l) {
        this.solver.setTimeoutMs(l);
    }

    @Override
    public void expireTimeout() {
        this.solver.expireTimeout();
    }

    @Override
    public int nConstraints() {
        return this.solver.nConstraints();
    }

    @Override
    public int nVars() {
        return this.solver.nVars();
    }

    @Override
    public void reset() {
        this.solver.reset();
    }

    public T decorated() {
        return this.solver;
    }

    public T clearDecorated() {
        T t = this.solver;
        this.solver = null;
        return t;
    }

    @Override
    public boolean removeConstr(IConstr iConstr) {
        return this.solver.removeConstr(iConstr);
    }

    @Override
    public Map<String, Number> getStat() {
        return this.solver.getStat();
    }

    @Override
    public void setSearchListener(SearchListener searchListener) {
        this.solver.setSearchListener(searchListener);
    }

    @Override
    public int nextFreeVarId(boolean bl) {
        return this.solver.nextFreeVarId(bl);
    }

    @Override
    public boolean removeSubsumedConstr(IConstr iConstr) {
        return this.solver.removeSubsumedConstr(iConstr);
    }

    @Override
    public SearchListener getSearchListener() {
        return this.solver.getSearchListener();
    }

    @Override
    public boolean isVerbose() {
        return this.solver.isVerbose();
    }

    @Override
    public void setVerbose(boolean bl) {
        this.solver.setVerbose(bl);
    }

    @Override
    public void setLogPrefix(String string) {
        this.solver.setLogPrefix(string);
    }

    @Override
    public String getLogPrefix() {
        return this.solver.getLogPrefix();
    }

    @Override
    public IVecInt unsatExplanation() {
        return this.solver.unsatExplanation();
    }

    @Override
    public int[] primeImplicant() {
        return this.solver.primeImplicant();
    }
}

