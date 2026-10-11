/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.reader;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.Serializable;
import org.sat4j.core.VecInt;
import org.sat4j.reader.EfficientScanner;
import org.sat4j.reader.ParseFormatException;
import org.sat4j.reader.Reader;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IProblem;
import org.sat4j.specs.ISolver;
import org.sat4j.specs.IVecInt;

public class DimacsReader
extends Reader
implements Serializable {
    private static final long serialVersionUID = 1L;
    protected int expectedNbOfConstr;
    protected final ISolver solver;
    private boolean checkConstrNb = true;
    protected final String formatString;
    protected EfficientScanner scanner;
    protected IVecInt literals = new VecInt();
    static final /* synthetic */ boolean $assertionsDisabled;

    public DimacsReader(ISolver iSolver) {
        this(iSolver, "cnf");
    }

    public DimacsReader(ISolver iSolver, String string) {
        this.solver = iSolver;
        this.formatString = string;
    }

    public void disableNumberOfConstraintCheck() {
        this.checkConstrNb = false;
    }

    protected void skipComments() throws IOException {
        this.scanner.skipComments();
    }

    protected void readProblemLine() throws IOException, ParseFormatException {
        String string = this.scanner.nextLine().trim();
        if (string == null) {
            throw new ParseFormatException("premature end of file: <p cnf ...> expected");
        }
        String[] stringArray = string.split("\\s+");
        if (stringArray.length < 4 || !"p".equals(stringArray[0]) || !this.formatString.equals(stringArray[1])) {
            throw new ParseFormatException("problem line expected (p cnf ...)");
        }
        int n = Integer.parseInt(stringArray[2]);
        if (!$assertionsDisabled && n <= 0) {
            throw new AssertionError();
        }
        this.solver.newVar(n);
        this.expectedNbOfConstr = Integer.parseInt(stringArray[3]);
        if (!$assertionsDisabled && this.expectedNbOfConstr <= 0) {
            throw new AssertionError();
        }
        this.solver.setExpectedNumberOfClauses(this.expectedNbOfConstr);
    }

    protected void readConstrs() throws IOException, ParseFormatException, ContradictionException {
        int n = 0;
        this.literals.clear();
        boolean bl = true;
        while (bl) {
            boolean bl2 = false;
            if (this.scanner.eof()) {
                if (this.literals.size() > 0) {
                    this.flushConstraint();
                    bl2 = true;
                }
                bl = false;
            } else {
                if (this.scanner.currentChar() == 'c') {
                    this.scanner.skipRestOfLine();
                    continue;
                }
                if (this.scanner.currentChar() == '%' && this.expectedNbOfConstr == n) {
                    if (!this.solver.isVerbose()) break;
                    System.out.println("Ignoring the rest of the file (SATLIB format");
                    break;
                }
                bl2 = this.handleLine();
            }
            if (!bl2) continue;
            ++n;
        }
        if (this.checkConstrNb && this.expectedNbOfConstr != n) {
            throw new ParseFormatException("wrong nbclauses parameter. Found " + n + ", " + this.expectedNbOfConstr + " expected");
        }
    }

    protected void flushConstraint() throws ContradictionException {
        block2: {
            try {
                this.solver.addClause(this.literals);
            }
            catch (IllegalArgumentException illegalArgumentException) {
                if (!this.isVerbose()) break block2;
                System.err.println("c Skipping constraint " + this.literals);
            }
        }
    }

    protected boolean handleLine() throws ContradictionException, IOException, ParseFormatException {
        boolean bl = false;
        while (!this.scanner.eof()) {
            int n = this.scanner.nextInt();
            if (n == 0) {
                if (this.literals.size() <= 0) break;
                this.flushConstraint();
                this.literals.clear();
                bl = true;
                break;
            }
            this.literals.push(n);
        }
        return bl;
    }

    public IProblem parseInstance(InputStream inputStream) throws ParseFormatException, ContradictionException, IOException {
        this.scanner = new EfficientScanner(inputStream);
        return this.parseInstance();
    }

    public final IProblem parseInstance(java.io.Reader reader) throws ParseFormatException, ContradictionException, IOException {
        throw new UnsupportedOperationException();
    }

    private IProblem parseInstance() throws ParseFormatException, ContradictionException {
        this.solver.reset();
        try {
            this.skipComments();
            this.readProblemLine();
            this.readConstrs();
            this.scanner.close();
            return this.solver;
        }
        catch (IOException iOException) {
            throw new ParseFormatException(iOException);
        }
        catch (NumberFormatException numberFormatException) {
            throw new ParseFormatException("integer value expected ");
        }
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

    protected ISolver getSolver() {
        return this.solver;
    }

    static {
        $assertionsDisabled = !DimacsReader.class.desiredAssertionStatus();
    }
}

