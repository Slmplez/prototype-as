/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.core.ASolverFactory
 *  org.sat4j.reader.Reader
 *  org.sat4j.specs.ISolver
 */
package org.sat4j.pb;

import org.sat4j.core.ASolverFactory;
import org.sat4j.pb.IPBSolver;
import org.sat4j.pb.LanceurPseudo2005;
import org.sat4j.pb.reader.OPBReader2010;
import org.sat4j.reader.Reader;
import org.sat4j.specs.ISolver;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class LanceurPseudo2007
extends LanceurPseudo2005 {
    private static final long serialVersionUID = 1L;

    public LanceurPseudo2007() {
    }

    public LanceurPseudo2007(ASolverFactory<IPBSolver> aSolverFactory) {
        super(aSolverFactory);
    }

    @Override
    protected Reader createReader(ISolver iSolver, String string) {
        return new OPBReader2010((IPBSolver)iSolver);
    }

    public static void main(String[] stringArray) {
        LanceurPseudo2007 lanceurPseudo2007 = new LanceurPseudo2007();
        if (stringArray.length == 0 || stringArray.length > 3) {
            lanceurPseudo2007.usage();
            return;
        }
        lanceurPseudo2007.run(stringArray);
        System.exit(lanceurPseudo2007.getExitCode().value());
    }
}

