/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.reader.InstanceReader
 *  org.sat4j.reader.ParseFormatException
 *  org.sat4j.reader.Reader
 *  org.sat4j.specs.ContradictionException
 *  org.sat4j.specs.IProblem
 *  org.sat4j.specs.ISolver
 */
package org.sat4j.pb.reader;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Reader;
import java.net.URL;
import java.util.Locale;
import org.sat4j.pb.IPBSolver;
import org.sat4j.pb.reader.OPBReader2007;
import org.sat4j.reader.InstanceReader;
import org.sat4j.reader.ParseFormatException;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IProblem;
import org.sat4j.specs.ISolver;

public class PBInstanceReader
extends InstanceReader {
    private OPBReader2007 opb;
    private org.sat4j.reader.Reader reader = null;
    private final IPBSolver solver;

    public PBInstanceReader(IPBSolver iPBSolver) {
        super((ISolver)iPBSolver);
        this.solver = iPBSolver;
    }

    private org.sat4j.reader.Reader getDefaultOPBReader() {
        if (this.opb == null) {
            this.opb = new OPBReader2007(this.solver);
        }
        return this.opb;
    }

    public IProblem parseInstance(String string) throws FileNotFoundException, ParseFormatException, IOException, ContradictionException {
        String string2;
        boolean bl = false;
        String string3 = "";
        String string4 = "";
        if (string.startsWith("http://")) {
            bl = true;
            string3 = string;
            string = string.substring(string.lastIndexOf(47), string.length() - 1);
        }
        if (string.indexOf(58) != -1) {
            String[] stringArray = string.split(":");
            string = stringArray[1];
            string4 = stringArray[0].toUpperCase(Locale.getDefault());
        }
        if (!(string2 = string.endsWith(".gz") ? string.substring(0, string.lastIndexOf(46)) : string).endsWith(".opb") && !"PB".equals(string4)) {
            return super.parseInstance(string);
        }
        this.reader = this.getDefaultOPBReader();
        if (bl) {
            return this.reader.parseInstance(new URL(string3).openStream());
        }
        return this.reader.parseInstance(string);
    }

    @Deprecated
    public String decode(int[] nArray) {
        return this.reader.decode(nArray);
    }

    public void decode(int[] nArray, PrintWriter printWriter) {
        this.reader.decode(nArray, printWriter);
    }

    public IProblem parseInstance(Reader reader) throws ParseFormatException, ContradictionException, IOException {
        throw new UnsupportedOperationException();
    }
}

