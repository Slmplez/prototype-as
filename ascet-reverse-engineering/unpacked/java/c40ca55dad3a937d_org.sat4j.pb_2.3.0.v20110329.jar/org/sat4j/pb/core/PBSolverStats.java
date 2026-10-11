/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.minisat.core.SolverStats
 */
package org.sat4j.pb.core;

import java.io.PrintWriter;
import org.sat4j.minisat.core.SolverStats;

public class PBSolverStats
extends SolverStats {
    private static final long serialVersionUID = 1L;
    public long numberOfReductions;
    public long numberOfLearnedConstraintsReduced;
    public long numberOfResolution;
    public long numberOfCP;

    public void reset() {
        super.reset();
        this.numberOfReductions = 0L;
        this.numberOfLearnedConstraintsReduced = 0L;
        this.numberOfResolution = 0L;
        this.numberOfCP = 0L;
    }

    public void printStat(PrintWriter printWriter, String string) {
        super.printStat(printWriter, string);
        printWriter.println(string + "number of reductions to clauses (during analyze)\t: " + this.numberOfReductions);
        printWriter.println(string + "number of learned constraints concerned by reduction\t: " + this.numberOfLearnedConstraintsReduced);
        printWriter.println(string + "number of learning phase by resolution\t: " + this.numberOfResolution);
        printWriter.println(string + "number of learning phase by cutting planes\t: " + this.numberOfCP);
    }
}

