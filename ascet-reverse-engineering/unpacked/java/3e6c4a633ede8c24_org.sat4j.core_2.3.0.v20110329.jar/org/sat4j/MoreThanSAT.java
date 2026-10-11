/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import org.sat4j.Messages;
import org.sat4j.minisat.SolverFactory;
import org.sat4j.reader.InstanceReader;
import org.sat4j.reader.ParseFormatException;
import org.sat4j.reader.Reader;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IProblem;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.IVecInt;
import org.sat4j.specs.TimeoutException;
import org.sat4j.tools.RemiUtils;
import org.sat4j.tools.SolutionCounter;

public final class MoreThanSAT {
    private MoreThanSAT() {
    }

    public static void main(String[] stringArray) {
        ISolver iSolver = SolverFactory.newDefault();
        SolutionCounter solutionCounter = new SolutionCounter(iSolver);
        iSolver.setTimeout(3600);
        InstanceReader instanceReader = new InstanceReader(iSolver);
        try {
            IProblem iProblem = ((Reader)instanceReader).parseInstance(stringArray[0]);
            if (iProblem.isSatisfiable()) {
                System.out.println(Messages.getString("MoreThanSAT.0"));
                ((Reader)instanceReader).decode(iProblem.model(), new PrintWriter(System.out));
                IVecInt iVecInt = RemiUtils.backbone(iSolver);
                System.out.println(Messages.getString("MoreThanSAT.1") + iVecInt);
                System.out.println(Messages.getString("MoreThanSAT.2"));
                System.out.println(Messages.getString("MoreThanSAT.3") + solutionCounter.countSolutions());
            } else {
                System.out.println(Messages.getString("MoreThanSAT.4"));
            }
        }
        catch (FileNotFoundException fileNotFoundException) {
            fileNotFoundException.printStackTrace();
        }
        catch (ParseFormatException parseFormatException) {
            parseFormatException.printStackTrace();
        }
        catch (IOException iOException) {
            iOException.printStackTrace();
        }
        catch (ContradictionException contradictionException) {
            System.out.println(Messages.getString("MoreThanSAT.5"));
        }
        catch (TimeoutException timeoutException) {
            System.out.println(Messages.getString("MoreThanSAT.6"));
        }
    }
}

