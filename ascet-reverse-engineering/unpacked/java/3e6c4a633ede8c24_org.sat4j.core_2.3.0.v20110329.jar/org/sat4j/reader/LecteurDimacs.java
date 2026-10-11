/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.reader;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.Serializable;
import org.sat4j.core.VecInt;
import org.sat4j.reader.ParseFormatException;
import org.sat4j.reader.Reader;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IProblem;
import org.sat4j.specs.ISolver;

public class LecteurDimacs
extends Reader
implements Serializable {
    private static final long serialVersionUID = 1L;
    private static final int TAILLE_BUF = 16384;
    private final ISolver s;
    private transient BufferedInputStream in;
    private int nbVars = -1;
    private int nbClauses = -1;
    private static final char EOF = '\uffff';

    public LecteurDimacs(ISolver iSolver) {
        this.s = iSolver;
    }

    public final IProblem parseInstance(InputStream inputStream) throws ParseFormatException, ContradictionException, IOException {
        this.in = new BufferedInputStream(inputStream, 16384);
        this.s.reset();
        this.passerCommentaire();
        if (this.nbVars < 0) {
            throw new ParseFormatException("DIMACS error: wrong max number of variables");
        }
        this.s.newVar(this.nbVars);
        this.s.setExpectedNumberOfClauses(this.nbClauses);
        char c = this.passerEspaces();
        if (this.nbClauses > 0) {
            if (c == '\uffff') {
                throw new ParseFormatException("DIMACS error: the clauses are missing");
            }
            this.ajouterClauses(c);
        }
        inputStream.close();
        return this.s;
    }

    public IProblem parseInstance(java.io.Reader reader) throws IOException, ContradictionException {
        throw new UnsupportedOperationException();
    }

    private char passerCommentaire() throws IOException {
        char c;
        do {
            if ((c = this.passerEspaces()) != 'p') continue;
            c = this.lectureNombreLiteraux();
        } while ((c == 'c' || c == 'p') && (c = this.nextLine()) != '\uffff');
        return c;
    }

    private char lectureNombreLiteraux() throws IOException {
        char c = this.nextChiffre();
        if (c != '\uffff') {
            this.nbVars = c - 48;
            while ((c = (char)this.in.read()) >= '0' && c <= '9') {
                this.nbVars = 10 * this.nbVars + (c - 48);
            }
            c = this.nextChiffre();
            this.nbClauses = c - 48;
            while ((c = (char)this.in.read()) >= '0' && c <= '9') {
                this.nbClauses = 10 * this.nbClauses + (c - 48);
            }
            if (c != '\n' && c != '\uffff') {
                this.nextLine();
            }
        }
        return c;
    }

    private void ajouterClauses(char c) throws IOException, ContradictionException, ParseFormatException {
        block10: {
            VecInt vecInt = new VecInt();
            int n = 0;
            boolean bl = false;
            do {
                if (c == '-') {
                    bl = true;
                    c = (char)this.in.read();
                } else if (c == '+') {
                    c = (char)this.in.read();
                } else if (c >= '0' && c <= '9') {
                    n = c - 48;
                    c = (char)this.in.read();
                } else {
                    throw new ParseFormatException("Unknown character " + c);
                }
                while (c >= '0' && c <= '9') {
                    n = n * 10 + c - 48;
                    c = (char)this.in.read();
                }
                if (n == 0) {
                    this.s.addClause(vecInt);
                    vecInt.clear();
                } else {
                    vecInt.push(bl ? -n : n);
                    bl = false;
                    n = 0;
                }
                if (c == '\uffff') continue;
                c = this.passerEspaces();
            } while (c != '\uffff');
            if (vecInt.isEmpty()) break block10;
            this.s.addClause(vecInt);
        }
    }

    private char passerEspaces() throws IOException {
        char c;
        while ((c = (char)this.in.read()) == ' ' || c == '\n') {
        }
        return c;
    }

    private char nextLine() throws IOException {
        char c;
        while ((c = (char)this.in.read()) != '\n' && c != '\uffff') {
        }
        return c;
    }

    private char nextChiffre() throws IOException {
        char c;
        while ((c = (char)this.in.read()) < '0' || c > '9' && c != '\uffff') {
        }
        return c;
    }

    public String decode(int[] nArray) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < nArray.length; ++i) {
            stringBuffer.append(nArray[i]);
            stringBuffer.append(" ");
        }
        stringBuffer.append("0");
        return stringBuffer.toString();
    }

    public void decode(int[] nArray, PrintWriter printWriter) {
        for (int i = 0; i < nArray.length; ++i) {
            printWriter.print(nArray[i]);
            printWriter.print(" ");
        }
        printWriter.print("0");
    }
}

