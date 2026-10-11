/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j;

import org.sat4j.AbstractLauncher;
import org.sat4j.ExitCode;
import org.sat4j.minisat.SolverFactory;
import org.sat4j.reader.GroupedCNFReader;
import org.sat4j.reader.LecteurDimacs;
import org.sat4j.reader.Reader;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.TimeoutException;
import org.sat4j.tools.SolverDecorator;
import org.sat4j.tools.xplain.Explainer;
import org.sat4j.tools.xplain.HighLevelXplain;
import org.sat4j.tools.xplain.MinimizationStrategy;
import org.sat4j.tools.xplain.Xplain;

public class MUSLauncher
extends AbstractLauncher {
    private static final long serialVersionUID = 1L;
    private int[] mus;
    private Explainer xplain;
    private boolean highLevel = false;

    public void usage() {
        this.log("java -jar sat4j-mus.jar [Insertion|Deletion|QuickXplain] <cnffile>|<gcnffile>");
    }

    protected Reader createReader(ISolver iSolver, String string) {
        if (this.highLevel) {
            return new GroupedCNFReader((HighLevelXplain)iSolver);
        }
        return new LecteurDimacs(iSolver);
    }

    protected String getInstanceName(String[] stringArray) {
        if (stringArray.length == 0) {
            return null;
        }
        return stringArray[stringArray.length - 1];
    }

    protected ISolver configureSolver(String[] stringArray) {
        SolverDecorator solverDecorator;
        Object object;
        String string = stringArray[stringArray.length - 1];
        if (string.endsWith(".gcnf")) {
            this.highLevel = true;
        }
        if (this.highLevel) {
            object = new HighLevelXplain<ISolver>(SolverFactory.newDefault());
            this.xplain = object;
            solverDecorator = object;
        } else {
            object = new Xplain<ISolver>(SolverFactory.newDefault());
            this.xplain = object;
            solverDecorator = object;
        }
        if (stringArray.length == 2) {
            object = "org.sat4j.tools.xplain." + stringArray[0] + "Strategy";
            try {
                this.xplain.setMinimizationStrategy((MinimizationStrategy)Class.forName((String)object).newInstance());
            }
            catch (Exception exception) {
                this.log(exception.getMessage());
            }
        }
        solverDecorator.setTimeout(Integer.MAX_VALUE);
        solverDecorator.setDBSimplificationAllowed(true);
        this.getLogWriter().println(solverDecorator.toString("c "));
        return solverDecorator;
    }

    protected void displayResult() {
        if (this.solver != null) {
            double d = (double)(System.currentTimeMillis() - this.beginTime) / 1000.0;
            this.solver.printStat(this.out, "c ");
            this.solver.printInfos(this.out, "c ");
            this.out.println("s " + this.exitCode);
            if (this.exitCode == ExitCode.SATISFIABLE) {
                int[] nArray = this.solver.model();
                this.out.print("v ");
                this.reader.decode(nArray, this.out);
                this.out.println();
            } else if (this.exitCode == ExitCode.UNSATISFIABLE && this.mus != null) {
                this.out.print("v ");
                this.reader.decode(this.mus, this.out);
                this.out.println();
            }
            this.log("Total wall clock time (in seconds) : " + d);
        }
    }

    public void run(String[] stringArray) {
        this.mus = null;
        super.run(stringArray);
        double d = (double)(System.currentTimeMillis() - this.beginTime) / 1000.0;
        if (this.exitCode == ExitCode.UNSATISFIABLE) {
            try {
                this.log("Unsat detection wall clock time (in seconds) : " + d);
                this.log("Size of initial " + (this.highLevel ? "high level " : "") + "unsat subformula: " + this.solver.unsatExplanation().size());
                this.log("Computing " + (this.highLevel ? "high level " : "") + "MUS ...");
                double d2 = System.currentTimeMillis();
                this.mus = this.xplain.minimalExplanation();
                this.log("Size of the " + (this.highLevel ? "high level " : "") + "MUS: " + this.mus.length);
                this.log("Unsat core  computation wall clock time (in seconds) : " + ((double)System.currentTimeMillis() - d2) / 1000.0);
            }
            catch (TimeoutException timeoutException) {
                this.log("Cannot compute " + (this.highLevel ? "high level " : "") + "MUS within the timeout.");
            }
        }
    }

    public static void main(String[] stringArray) {
        MUSLauncher mUSLauncher = new MUSLauncher();
        if (stringArray.length < 1 || stringArray.length > 2) {
            mUSLauncher.usage();
            return;
        }
        mUSLauncher.run(stringArray);
        System.exit(mUSLauncher.getExitCode().value());
    }
}

