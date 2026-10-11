/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.reader;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import org.sat4j.core.VecInt;
import org.sat4j.reader.EfficientScanner;
import org.sat4j.reader.ParseFormatException;
import org.sat4j.reader.Reader;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IProblem;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.IVecInt;
import org.sat4j.tools.GateTranslator;

public class AAGReader
extends Reader {
    private static final int FALSE = 0;
    private static final int TRUE = 1;
    private final GateTranslator solver;
    private int maxvarid;
    private int nbinputs;
    static final /* synthetic */ boolean $assertionsDisabled;

    AAGReader(ISolver iSolver) {
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

    public IProblem parseInstance(InputStream inputStream) throws ParseFormatException, ContradictionException, IOException {
        EfficientScanner efficientScanner = new EfficientScanner(inputStream);
        String string = efficientScanner.next();
        if (!"aag".equals(string)) {
            throw new ParseFormatException("AAG format only!");
        }
        this.maxvarid = efficientScanner.nextInt();
        this.nbinputs = efficientScanner.nextInt();
        int n = efficientScanner.nextInt();
        int n2 = efficientScanner.nextInt();
        if (n2 > 1) {
            throw new ParseFormatException("CNF conversion allowed for single output circuit only!");
        }
        int n3 = efficientScanner.nextInt();
        this.solver.newVar(this.maxvarid + 1);
        this.solver.setExpectedNumberOfClauses(3 * n3 + 2);
        this.readInput(this.nbinputs, efficientScanner);
        if (!$assertionsDisabled && n != 0) {
            throw new AssertionError();
        }
        if (n2 > 0) {
            int n4 = this.readOutput(n2, efficientScanner);
            this.readAnd(n3, n4, efficientScanner);
        }
        return this.solver;
    }

    private void readAnd(int n, int n2, EfficientScanner efficientScanner) throws ContradictionException, IOException, ParseFormatException {
        for (int i = 0; i < n; ++i) {
            int n3 = efficientScanner.nextInt();
            int n4 = efficientScanner.nextInt();
            int n5 = efficientScanner.nextInt();
            this.solver.and(this.toDimacs(n3), this.toDimacs(n4), this.toDimacs(n5));
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

    private int readOutput(int n, EfficientScanner efficientScanner) throws IOException, ParseFormatException {
        VecInt vecInt = new VecInt(n);
        for (int i = 0; i < n; ++i) {
            vecInt.push(efficientScanner.nextInt());
        }
        return vecInt.get(0);
    }

    private IVecInt readInput(int n, EfficientScanner efficientScanner) throws IOException, ParseFormatException {
        VecInt vecInt = new VecInt(n);
        for (int i = 0; i < n; ++i) {
            vecInt.push(efficientScanner.nextInt());
        }
        return vecInt;
    }

    public IProblem parseInstance(java.io.Reader reader) throws ParseFormatException, ContradictionException, IOException {
        throw new UnsupportedOperationException();
    }

    static {
        $assertionsDisabled = !AAGReader.class.desiredAssertionStatus();
    }
}

