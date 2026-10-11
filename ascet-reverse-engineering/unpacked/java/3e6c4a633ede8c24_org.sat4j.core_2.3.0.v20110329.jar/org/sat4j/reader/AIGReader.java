/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.reader;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import org.sat4j.reader.ParseFormatException;
import org.sat4j.reader.Reader;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IProblem;
import org.sat4j.specs.ISolver;
import org.sat4j.tools.GateTranslator;

public class AIGReader
extends Reader {
    private static final int FALSE = 0;
    private static final int TRUE = 1;
    private final GateTranslator solver;
    private int maxvarid;
    private int nbinputs;
    static final /* synthetic */ boolean $assertionsDisabled;

    AIGReader(ISolver iSolver) {
        this.solver = new GateTranslator(iSolver);
    }

    public String decode(int[] nArray) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < this.nbinputs; ++i) {
            stringBuffer.append(nArray[i] > 0 ? 1 : 0);
        }
        return stringBuffer.toString();
    }

    public void decode(int[] nArray, PrintWriter printWriter) {
        for (int i = 0; i < this.nbinputs; ++i) {
            printWriter.print(nArray[i] > 0 ? 1 : 0);
        }
    }

    int parseInt(InputStream inputStream, char c) throws IOException, ParseFormatException {
        int n = inputStream.read();
        if (n < 48 || n > 57) {
            throw new ParseFormatException("expected digit");
        }
        int n2 = n - 48;
        while ((n = inputStream.read()) >= 48 && n <= 57) {
            n2 = 10 * n2 + (n - 48);
        }
        if (n != c) {
            throw new ParseFormatException("unexpected character");
        }
        return n2;
    }

    public IProblem parseInstance(InputStream inputStream) throws ParseFormatException, ContradictionException, IOException {
        if (inputStream.read() != 97 || inputStream.read() != 105 || inputStream.read() != 103 || inputStream.read() != 32) {
            throw new ParseFormatException("AIG format only!");
        }
        this.maxvarid = this.parseInt(inputStream, ' ');
        this.nbinputs = this.parseInt(inputStream, ' ');
        int n = this.parseInt(inputStream, ' ');
        if (n > 0) {
            throw new ParseFormatException("CNF conversion cannot handle latches!");
        }
        int n2 = this.parseInt(inputStream, ' ');
        if (n2 > 1) {
            throw new ParseFormatException("CNF conversion allowed for single output circuit only!");
        }
        int n3 = this.parseInt(inputStream, '\n');
        this.solver.newVar(this.maxvarid + 1);
        this.solver.setExpectedNumberOfClauses(3 * n3 + 2);
        if (n2 > 0) {
            if (!$assertionsDisabled && n2 != 1) {
                throw new AssertionError();
            }
            int n4 = this.parseInt(inputStream, '\n');
            this.readAnd(n3, n4, inputStream, 2 * (this.nbinputs + 1));
        }
        return this.solver;
    }

    static int safeGet(InputStream inputStream) throws IOException, ParseFormatException {
        int n = inputStream.read();
        if (n == -1) {
            throw new ParseFormatException("AIG Error, EOF met too early");
        }
        return n;
    }

    static int decode(InputStream inputStream) throws IOException, ParseFormatException {
        int n;
        int n2 = 0;
        int n3 = 0;
        while (((n = AIGReader.safeGet(inputStream)) & 0x80) > 0) {
            System.out.println("=>" + n);
            n2 |= (n & 0x7F) << 7 * n3++;
        }
        return n2 | n << 7 * n3;
    }

    private void readAnd(int n, int n2, InputStream inputStream, int n3) throws ContradictionException, IOException, ParseFormatException {
        int n4 = n3;
        for (int i = 0; i < n; ++i) {
            int n5 = AIGReader.decode(inputStream);
            int n6 = AIGReader.decode(inputStream);
            int n7 = n4 - n5;
            int n8 = n7 - n6;
            this.solver.and(this.toDimacs(n4), this.toDimacs(n7), this.toDimacs(n8));
            n4 += 2;
        }
        this.solver.gateTrue(this.maxvarid + 1);
        this.solver.gateTrue(this.toDimacs(n2));
    }

    private int toDimacs(int n) {
        if (n == 0) {
            return -(this.maxvarid + 1);
        }
        if (n == 1) {
            return this.maxvarid + 1;
        }
        int n2 = n >> 1;
        if ((n & 1) == 0) {
            return n2;
        }
        return -n2;
    }

    public IProblem parseInstance(java.io.Reader reader) throws ParseFormatException, ContradictionException, IOException {
        throw new UnsupportedOperationException();
    }

    static {
        $assertionsDisabled = !AIGReader.class.desiredAssertionStatus();
    }
}

