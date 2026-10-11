/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.core;

import java.io.PrintWriter;
import org.sat4j.minisat.core.ILits;
import org.sat4j.minisat.core.IPhaseSelectionStrategy;

public interface IOrder {
    public void setLits(ILits var1);

    public int select();

    public void undo(int var1);

    public void updateVar(int var1);

    public void init();

    public void printStat(PrintWriter var1, String var2);

    public void setVarDecay(double var1);

    public void varDecayActivity();

    public double varActivity(int var1);

    public void assignLiteral(int var1);

    public void setPhaseSelectionStrategy(IPhaseSelectionStrategy var1);

    public IPhaseSelectionStrategy getPhaseSelectionStrategy();

    public void updateVarAtDecisionLevel(int var1);
}

