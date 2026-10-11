/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j;

import java.io.PrintWriter;
import org.sat4j.AbstractLauncher;
import org.sat4j.ExitCode;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IOptimizationProblem;
import org.sat4j.specs.IProblem;
import org.sat4j.specs.TimeoutException;

public abstract class AbstractOptimizationLauncher
extends AbstractLauncher {
    private static final long serialVersionUID = 1L;
    private static final String CURRENT_OPTIMUM_VALUE_PREFIX = "o ";
    private boolean incomplete = false;
    static final /* synthetic */ boolean $assertionsDisabled;

    protected void setIncomplete(boolean bl) {
        this.incomplete = bl;
    }

    protected void displayResult() {
        this.displayAnswer();
        this.log("Total wall clock time (in seconds): " + (double)(System.currentTimeMillis() - this.getBeginTime()) / 1000.0);
    }

    protected void displayAnswer() {
        if (this.solver == null) {
            return;
        }
        System.out.flush();
        PrintWriter printWriter = this.getLogWriter();
        printWriter.flush();
        this.solver.printStat(printWriter, "c ");
        this.solver.printInfos(printWriter, "c ");
        ExitCode exitCode = this.getExitCode();
        printWriter.println("s " + exitCode);
        if (exitCode == ExitCode.SATISFIABLE || exitCode == ExitCode.OPTIMUM_FOUND || this.incomplete && exitCode == ExitCode.UPPER_BOUND) {
            printWriter.print("v ");
            this.getReader().decode(this.solver.model(), printWriter);
            printWriter.println();
            IOptimizationProblem iOptimizationProblem = (IOptimizationProblem)((Object)this.solver);
            if (!iOptimizationProblem.hasNoObjectiveFunction()) {
                this.log("objective function=" + iOptimizationProblem.getObjectiveValue());
            }
        }
    }

    protected void solve(IProblem iProblem) throws TimeoutException {
        boolean bl = false;
        IOptimizationProblem iOptimizationProblem = (IOptimizationProblem)iProblem;
        try {
            while (iOptimizationProblem.admitABetterSolution()) {
                if (!bl) {
                    if (iOptimizationProblem.nonOptimalMeansSatisfiable()) {
                        this.setExitCode(ExitCode.SATISFIABLE);
                        if (iOptimizationProblem.hasNoObjectiveFunction()) {
                            return;
                        }
                        this.log("SATISFIABLE");
                    } else if (this.incomplete) {
                        this.setExitCode(ExitCode.UPPER_BOUND);
                    }
                    bl = true;
                    this.log("OPTIMIZING...");
                }
                this.log("Got one! Elapsed wall clock time (in seconds):" + (double)(System.currentTimeMillis() - this.getBeginTime()) / 1000.0);
                this.getLogWriter().println(CURRENT_OPTIMUM_VALUE_PREFIX + iOptimizationProblem.getObjectiveValue());
                iOptimizationProblem.discardCurrentSolution();
            }
            if (bl) {
                this.setExitCode(ExitCode.OPTIMUM_FOUND);
            } else {
                this.setExitCode(ExitCode.UNSATISFIABLE);
            }
        }
        catch (ContradictionException contradictionException) {
            if (!$assertionsDisabled && !bl) {
                throw new AssertionError();
            }
            this.setExitCode(ExitCode.OPTIMUM_FOUND);
        }
    }

    static {
        $assertionsDisabled = !AbstractOptimizationLauncher.class.desiredAssertionStatus();
    }
}

