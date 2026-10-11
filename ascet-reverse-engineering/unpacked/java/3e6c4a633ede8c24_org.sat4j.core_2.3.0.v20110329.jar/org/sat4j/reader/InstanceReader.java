/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.reader;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URL;
import java.util.Locale;
import org.sat4j.reader.AAGReader;
import org.sat4j.reader.AIGReader;
import org.sat4j.reader.DimacsReader;
import org.sat4j.reader.LecteurDimacs;
import org.sat4j.reader.ParseFormatException;
import org.sat4j.reader.Reader;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IProblem;
import org.sat4j.specs.ISolver;

public class InstanceReader
extends Reader {
    private AAGReader aag;
    private AIGReader aig;
    private DimacsReader ezdimacs;
    private LecteurDimacs dimacs;
    private Reader reader = null;
    private final ISolver solver;

    public InstanceReader(ISolver iSolver) {
        this.solver = iSolver;
    }

    private Reader getDefaultSATReader() {
        if (this.dimacs == null) {
            this.dimacs = new LecteurDimacs(this.solver);
        }
        return this.dimacs;
    }

    private Reader getEZSATReader() {
        if (this.ezdimacs == null) {
            this.ezdimacs = new DimacsReader(this.solver);
        }
        return this.ezdimacs;
    }

    private Reader getAIGReader() {
        if (this.aig == null) {
            this.aig = new AIGReader(this.solver);
        }
        return this.aig;
    }

    private Reader getAAGReader() {
        if (this.aag == null) {
            this.aag = new AAGReader(this.solver);
        }
        return this.aag;
    }

    public IProblem parseInstance(String string) throws FileNotFoundException, ParseFormatException, IOException, ContradictionException {
        boolean bl = false;
        String string2 = "";
        String string3 = "";
        if (string.startsWith("http://")) {
            bl = true;
            string2 = string;
            string = string.substring(string.lastIndexOf(47), string.length() - 1);
        }
        if (string.indexOf(58) != -1) {
            String[] stringArray = string.split(":");
            string = stringArray[1];
            string3 = stringArray[0].toUpperCase(Locale.getDefault());
        }
        String string4 = string.endsWith(".gz") ? string.substring(0, string.lastIndexOf(46)) : string;
        this.reader = "EZCNF".equals(string3) ? this.getEZSATReader() : (string4.endsWith(".aag") ? this.getAAGReader() : (string4.endsWith(".aig") ? this.getAIGReader() : this.getDefaultSATReader()));
        if (bl) {
            return this.reader.parseInstance(new URL(string2).openStream());
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

    public IProblem parseInstance(java.io.Reader reader) throws ParseFormatException, ContradictionException, IOException {
        throw new UnsupportedOperationException();
    }
}

