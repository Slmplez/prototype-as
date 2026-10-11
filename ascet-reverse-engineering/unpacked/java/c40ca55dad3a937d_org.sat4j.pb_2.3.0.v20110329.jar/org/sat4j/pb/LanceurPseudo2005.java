/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.AbstractOptimizationLauncher
 *  org.sat4j.core.ASolverFactory
 *  org.sat4j.reader.Reader
 *  org.sat4j.specs.ISolver
 */
package org.sat4j.pb;

import org.sat4j.AbstractOptimizationLauncher;
import org.sat4j.core.ASolverFactory;
import org.sat4j.pb.IPBSolver;
import org.sat4j.pb.ObjectiveFunction;
import org.sat4j.pb.PseudoOptDecorator;
import org.sat4j.pb.SolverFactory;
import org.sat4j.pb.reader.OPBReader2006;
import org.sat4j.reader.Reader;
import org.sat4j.specs.ISolver;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class LanceurPseudo2005
extends AbstractOptimizationLauncher {
    ASolverFactory<IPBSolver> factory;
    private static final long serialVersionUID = 1L;
    protected ObjectiveFunction obfct;
    static final /* synthetic */ boolean $assertionsDisabled;
    static /* synthetic */ Class class$org$sat4j$pb$LanceurPseudo2005;

    public LanceurPseudo2005() {
        this(SolverFactory.instance());
    }

    LanceurPseudo2005(ASolverFactory<IPBSolver> aSolverFactory) {
        this.factory = aSolverFactory;
    }

    public static void main(String[] stringArray) {
        LanceurPseudo2005 lanceurPseudo2005 = new LanceurPseudo2005();
        lanceurPseudo2005.run(stringArray);
        System.exit(lanceurPseudo2005.getExitCode().value());
    }

    protected Reader createReader(ISolver iSolver, String string) {
        return new OPBReader2006((IPBSolver)iSolver);
    }

    protected ISolver configureSolver(String[] stringArray) {
        IPBSolver iPBSolver = stringArray.length > 1 ? (IPBSolver)this.factory.createSolverByName(stringArray[0]) : (IPBSolver)this.factory.defaultSolver();
        iPBSolver = new PseudoOptDecorator(iPBSolver);
        if (stringArray.length == 3) {
            iPBSolver.setTimeout(Integer.valueOf(stringArray[1]));
        }
        this.out.println(iPBSolver.toString("c "));
        return iPBSolver;
    }

    public void usage() {
        this.out.println("java -jar sat4j-pb.jar [solvername [timeout]] instancename.opb");
        this.showAvailableSolvers(SolverFactory.instance());
    }

    protected String getInstanceName(String[] stringArray) {
        if (!$assertionsDisabled && stringArray.length != 1 && stringArray.length != 2 && stringArray.length != 3) {
            throw new AssertionError();
        }
        if (stringArray.length == 0) {
            return null;
        }
        return stringArray[stringArray.length - 1];
    }

    static /* synthetic */ Class class$(String string) {
        try {
            return Class.forName(string);
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError().initCause(classNotFoundException);
        }
    }

    static {
        $assertionsDisabled = !(class$org$sat4j$pb$LanceurPseudo2005 == null ? (class$org$sat4j$pb$LanceurPseudo2005 = LanceurPseudo2005.class$("org.sat4j.pb.LanceurPseudo2005")) : class$org$sat4j$pb$LanceurPseudo2005).desiredAssertionStatus();
    }
}

