/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.orders;

import java.io.PrintWriter;
import java.util.Random;
import org.sat4j.minisat.core.ILits;
import org.sat4j.minisat.core.IOrder;
import org.sat4j.minisat.core.IPhaseSelectionStrategy;

public final class RandomWalkDecorator
implements IOrder {
    private final IOrder decorated;
    private final double p;
    private final Random rand = new Random();
    private ILits voc;
    private int nbRandomWalks;

    public RandomWalkDecorator(IOrder iOrder) {
        this(iOrder, 0.01);
    }

    public RandomWalkDecorator(IOrder iOrder, double d) {
        this.decorated = iOrder;
        this.p = d;
    }

    public void assignLiteral(int n) {
        this.decorated.assignLiteral(n);
    }

    public IPhaseSelectionStrategy getPhaseSelectionStrategy() {
        return this.decorated.getPhaseSelectionStrategy();
    }

    public void init() {
        this.decorated.init();
        this.nbRandomWalks = 0;
    }

    public void printStat(PrintWriter printWriter, String string) {
        printWriter.println(string + "random Assignements: " + this.nbRandomWalks);
        this.decorated.printStat(printWriter, string);
    }

    public int select() {
        if (this.rand.nextDouble() < this.p) {
            int n = this.voc.nVars() << 1;
            for (int i = 0; i <= 10; ++i) {
                int n2 = this.rand.nextInt(n) + 2;
                if (!this.voc.isUnassigned(n2)) continue;
                ++this.nbRandomWalks;
                return this.getPhaseSelectionStrategy().select(n2 >> 1);
            }
        }
        return this.decorated.select();
    }

    public void setLits(ILits iLits) {
        this.decorated.setLits(iLits);
        this.voc = iLits;
    }

    public void setPhaseSelectionStrategy(IPhaseSelectionStrategy iPhaseSelectionStrategy) {
        this.decorated.setPhaseSelectionStrategy(iPhaseSelectionStrategy);
    }

    public void setVarDecay(double d) {
        this.decorated.setVarDecay(d);
    }

    public void undo(int n) {
        this.decorated.undo(n);
    }

    public void updateVar(int n) {
        this.decorated.updateVar(n);
    }

    public double varActivity(int n) {
        return this.decorated.varActivity(n);
    }

    public void varDecayActivity() {
        this.decorated.varDecayActivity();
    }

    public void updateVarAtDecisionLevel(int n) {
        this.decorated.updateVarAtDecisionLevel(n);
    }

    public String toString() {
        return this.decorated.toString() + " with random walks " + this.p;
    }
}

