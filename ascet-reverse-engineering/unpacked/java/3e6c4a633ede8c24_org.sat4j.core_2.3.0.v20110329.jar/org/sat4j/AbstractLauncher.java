/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.PrintWriter;
import java.io.Serializable;
import java.net.URL;
import java.util.Properties;
import org.sat4j.ExitCode;
import org.sat4j.core.ASolverFactory;
import org.sat4j.reader.ParseFormatException;
import org.sat4j.reader.Reader;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IProblem;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.TimeoutException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractLauncher
implements Serializable {
    private static final long serialVersionUID = 1L;
    public static final String SOLUTION_PREFIX = "v ";
    public static final String ANSWER_PREFIX = "s ";
    public static final String COMMENT_PREFIX = "c ";
    protected long beginTime;
    protected ExitCode exitCode = ExitCode.UNKNOWN;
    protected Reader reader;
    protected transient PrintWriter out = new PrintWriter(System.out, true);
    protected transient Thread shutdownHook = new Thread(){

        public void run() {
            AbstractLauncher.this.displayResult();
        }
    };
    protected ISolver solver;
    private boolean silent = false;
    static /* synthetic */ Class class$org$sat4j$AbstractLauncher;

    protected AbstractLauncher() {
        Runtime.getRuntime().addShutdownHook(this.shutdownHook);
    }

    protected void displayResult() {
        if (this.solver != null) {
            System.out.flush();
            this.out.flush();
            double d = (double)(System.currentTimeMillis() - this.beginTime) / 1000.0;
            this.solver.printStat(this.out, COMMENT_PREFIX);
            this.solver.printInfos(this.out, COMMENT_PREFIX);
            this.out.println(new StringBuffer().append(ANSWER_PREFIX).append(this.exitCode).toString());
            if (this.exitCode == ExitCode.SATISFIABLE) {
                int[] nArray = this.solver.model();
                this.out.print(SOLUTION_PREFIX);
                this.reader.decode(nArray, this.out);
                this.out.println();
            }
            this.log(new StringBuffer().append("Total wall clock time (in seconds) : ").append(d).toString());
        }
    }

    public abstract void usage();

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected final void displayHeader() {
        Object object;
        this.displayLicense();
        URL uRL = (class$org$sat4j$AbstractLauncher == null ? (class$org$sat4j$AbstractLauncher = AbstractLauncher.class$("org.sat4j.AbstractLauncher")) : class$org$sat4j$AbstractLauncher).getResource("/sat4j.version");
        if (uRL == null) {
            this.log("no version file found!!!");
        } else {
            object = null;
            try {
                object = new BufferedReader(new InputStreamReader(uRL.openStream()));
                this.log(new StringBuffer().append("version ").append(((BufferedReader)object).readLine()).toString());
            }
            catch (IOException iOException) {
                this.log(new StringBuffer().append("c ERROR: ").append(iOException.getMessage()).toString());
            }
            finally {
                if (object != null) {
                    try {
                        ((BufferedReader)object).close();
                    }
                    catch (IOException iOException) {
                        this.log(new StringBuffer().append("c ERROR: ").append(iOException.getMessage()).toString());
                    }
                }
            }
        }
        object = System.getProperties();
        String[] stringArray = new String[]{"java.runtime.name", "java.vm.name", "java.vm.version", "java.vm.vendor", "sun.arch.data.model", "java.version", "os.name", "os.version", "os.arch"};
        for (int i = 0; i < stringArray.length; ++i) {
            String string = stringArray[i];
            this.log(new StringBuffer().append(string).append(string.length() < 14 ? "\t\t" : "\t").append(((Properties)object).getProperty(string)).toString());
        }
        Runtime runtime = Runtime.getRuntime();
        this.log(new StringBuffer().append("Free memory \t\t").append(runtime.freeMemory()).toString());
        this.log(new StringBuffer().append("Max memory \t\t").append(runtime.maxMemory()).toString());
        this.log(new StringBuffer().append("Total memory \t\t").append(runtime.totalMemory()).toString());
        this.log(new StringBuffer().append("Number of processors \t").append(runtime.availableProcessors()).toString());
    }

    public void displayLicense() {
        this.log("SAT4J: a SATisfiability library for Java (c) 2004-2010 Daniel Le Berre");
        this.log("This is free software under the dual EPL/GNU LGPL licenses.");
        this.log("See www.sat4j.org for details.");
    }

    protected IProblem readProblem(String string) throws FileNotFoundException, ParseFormatException, IOException, ContradictionException {
        this.log(new StringBuffer().append("solving ").append(string).toString());
        this.log("reading problem ... ");
        this.reader = this.createReader(this.solver, string);
        IProblem iProblem = this.reader.parseInstance(string);
        this.log(new StringBuffer().append("... done. Wall clock time ").append((double)(System.currentTimeMillis() - this.beginTime) / 1000.0).append("s.").toString());
        this.log(new StringBuffer().append("#vars     ").append(iProblem.nVars()).toString());
        this.log(new StringBuffer().append("#constraints  ").append(iProblem.nConstraints()).toString());
        iProblem.printInfos(this.out, COMMENT_PREFIX);
        return iProblem;
    }

    protected abstract Reader createReader(ISolver var1, String var2);

    public void run(String[] stringArray) {
        try {
            String string;
            this.displayHeader();
            this.solver = this.configureSolver(stringArray);
            if (this.solver == null) {
                this.usage();
                return;
            }
            if (!this.silent) {
                this.solver.setVerbose(true);
            }
            if ((string = this.getInstanceName(stringArray)) == null) {
                this.usage();
                return;
            }
            this.beginTime = System.currentTimeMillis();
            IProblem iProblem = this.readProblem(string);
            try {
                this.solve(iProblem);
            }
            catch (TimeoutException timeoutException) {
                this.log("timeout");
            }
        }
        catch (FileNotFoundException fileNotFoundException) {
            System.err.println(new StringBuffer().append("FATAL ").append(fileNotFoundException.getLocalizedMessage()).toString());
        }
        catch (IOException iOException) {
            System.err.println(new StringBuffer().append("FATAL ").append(iOException.getLocalizedMessage()).toString());
        }
        catch (ContradictionException contradictionException) {
            this.exitCode = ExitCode.UNSATISFIABLE;
            this.log("(trivial inconsistency)");
        }
        catch (ParseFormatException parseFormatException) {
            System.err.println(new StringBuffer().append("FATAL ").append(parseFormatException.getLocalizedMessage()).toString());
        }
    }

    protected abstract String getInstanceName(String[] var1);

    protected abstract ISolver configureSolver(String[] var1);

    public void log(String string) {
        if (!this.silent) {
            this.out.println(new StringBuffer().append(COMMENT_PREFIX).append(string).toString());
        }
    }

    protected void solve(IProblem iProblem) throws TimeoutException {
        this.exitCode = iProblem.isSatisfiable() ? ExitCode.SATISFIABLE : ExitCode.UNSATISFIABLE;
    }

    public final void setExitCode(ExitCode exitCode) {
        this.exitCode = exitCode;
    }

    public final ExitCode getExitCode() {
        return this.exitCode;
    }

    public final long getBeginTime() {
        return this.beginTime;
    }

    public final Reader getReader() {
        return this.reader;
    }

    public void setLogWriter(PrintWriter printWriter) {
        this.out = printWriter;
    }

    public PrintWriter getLogWriter() {
        return this.out;
    }

    protected void setSilent(boolean bl) {
        this.silent = bl;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.out = new PrintWriter(System.out, true);
        this.shutdownHook = new Thread(){

            public void run() {
                AbstractLauncher.this.displayResult();
            }
        };
    }

    protected <T extends ISolver> void showAvailableSolvers(ASolverFactory<T> aSolverFactory) {
        if (aSolverFactory != null) {
            this.log("Available solvers: ");
            String[] stringArray = aSolverFactory.solverNames();
            for (int i = 0; i < stringArray.length; ++i) {
                this.log(stringArray[i]);
            }
        }
    }

    static /* synthetic */ Class class$(String string) {
        try {
            return Class.forName(string);
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError().initCause(classNotFoundException);
        }
    }
}

