/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j;

import org.sat4j.AbstractLauncher;
import org.sat4j.ExitCode;
import org.sat4j.core.ASolverFactory;
import org.sat4j.minisat.SolverFactory;
import org.sat4j.reader.InstanceReader;
import org.sat4j.reader.Reader;
import org.sat4j.specs.ISolver;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BasicLauncher<T extends ISolver>
extends AbstractLauncher {
    private static final long serialVersionUID = 1L;
    private final ASolverFactory<T> factory;
    private boolean prime = false;

    public BasicLauncher(ASolverFactory<T> aSolverFactory) {
        this.factory = aSolverFactory;
    }

    public static void main(String[] stringArray) {
        BasicLauncher<ISolver> basicLauncher = new BasicLauncher<ISolver>(SolverFactory.instance());
        if (stringArray.length != 1) {
            basicLauncher.usage();
            return;
        }
        basicLauncher.run(stringArray);
        System.exit(basicLauncher.getExitCode().value());
    }

    @Override
    protected ISolver configureSolver(String[] stringArray) {
        this.prime = System.getProperty("prime") != null;
        T t = this.factory.defaultSolver();
        t.setTimeout(Integer.MAX_VALUE);
        t.setDBSimplificationAllowed(true);
        this.getLogWriter().println(t.toString("c "));
        return t;
    }

    @Override
    protected Reader createReader(ISolver iSolver, String string) {
        return new InstanceReader(iSolver);
    }

    @Override
    public void usage() {
        this.log("java -jar org.sat4j.core.jar <cnffile>");
    }

    @Override
    protected String getInstanceName(String[] stringArray) {
        if (stringArray.length == 0) {
            return null;
        }
        return stringArray[0];
    }

    @Override
    protected void displayResult() {
        super.displayResult();
        if (this.prime && this.exitCode == ExitCode.SATISFIABLE) {
            this.log("For information, a prime implicant:");
            long l = System.currentTimeMillis();
            int[] nArray = this.solver.primeImplicant();
            this.out.println("c ");
            this.reader.decode(nArray, this.out);
            this.out.println();
            this.log(new StringBuffer().append(" prime computation time: ").append((System.currentTimeMillis() - l) / 1000L).append("s").toString());
        }
    }
}

