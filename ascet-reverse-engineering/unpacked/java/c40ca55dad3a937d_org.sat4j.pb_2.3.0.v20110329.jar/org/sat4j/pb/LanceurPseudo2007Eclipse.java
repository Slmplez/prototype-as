/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.ExitCode
 *  org.sat4j.reader.Reader
 *  org.sat4j.specs.ISolver
 *  org.sat4j.specs.TimeoutException
 */
package org.sat4j.pb;

import java.util.Collection;
import org.sat4j.ExitCode;
import org.sat4j.pb.IPBSolver;
import org.sat4j.pb.LanceurPseudo2007;
import org.sat4j.pb.PseudoOptDecorator;
import org.sat4j.pb.SolverFactory;
import org.sat4j.pb.reader.OPBEclipseReader2007;
import org.sat4j.pb.tools.XplainPB;
import org.sat4j.reader.Reader;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.TimeoutException;

public class LanceurPseudo2007Eclipse
extends LanceurPseudo2007 {
    XplainPB quickxplain;
    private static final long serialVersionUID = 1L;

    protected ISolver configureSolver(String[] stringArray) {
        IPBSolver iPBSolver = stringArray.length > 1 ? (IPBSolver)SolverFactory.instance().createSolverByName(stringArray[0]) : SolverFactory.newDefault();
        this.quickxplain = new XplainPB(iPBSolver);
        iPBSolver = new PseudoOptDecorator(this.quickxplain);
        if (stringArray.length == 3) {
            iPBSolver.setTimeout(Integer.valueOf(stringArray[1]));
        }
        this.out.println(iPBSolver.toString("c "));
        return iPBSolver;
    }

    protected Reader createReader(ISolver iSolver, String string) {
        return new OPBEclipseReader2007((IPBSolver)iSolver);
    }

    public static void main(String[] stringArray) {
        LanceurPseudo2007Eclipse lanceurPseudo2007Eclipse = new LanceurPseudo2007Eclipse();
        if (stringArray.length == 0 || stringArray.length > 2) {
            lanceurPseudo2007Eclipse.usage();
            return;
        }
        lanceurPseudo2007Eclipse.run(stringArray);
        System.exit(lanceurPseudo2007Eclipse.getExitCode().value());
    }

    protected void displayAnswer() {
        super.displayAnswer();
        ExitCode exitCode = this.getExitCode();
        if (exitCode == ExitCode.UNSATISFIABLE) {
            try {
                Collection collection = this.quickxplain.explain();
                this.log("Explanation for inconsistency: " + collection);
            }
            catch (TimeoutException timeoutException) {
                this.log("Timeout ! Need more time to complete");
            }
        }
    }
}

