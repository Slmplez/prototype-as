/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.core.Vec
 *  org.sat4j.core.VecInt
 *  org.sat4j.reader.ParseFormatException
 *  org.sat4j.reader.Reader
 *  org.sat4j.specs.ContradictionException
 *  org.sat4j.specs.IProblem
 *  org.sat4j.specs.IVec
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb.reader;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.LineNumberReader;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.Serializable;
import java.math.BigInteger;
import org.sat4j.core.Vec;
import org.sat4j.core.VecInt;
import org.sat4j.pb.IPBSolver;
import org.sat4j.pb.ObjectiveFunction;
import org.sat4j.reader.ParseFormatException;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IProblem;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class OPBReader2005
extends org.sat4j.reader.Reader
implements Serializable {
    private static final long serialVersionUID = 1L;
    protected final IPBSolver solver;
    protected final IVecInt lits;
    protected final IVec<BigInteger> coeffs;
    protected BigInteger d;
    protected String operator;
    private final IVecInt objectiveVars = new VecInt();
    private final IVec<BigInteger> objectiveCoeffs = new Vec();
    protected boolean hasObjFunc = false;
    protected boolean hasVariablesExplanation = false;
    protected int nbVars;
    protected int nbConstr;
    protected int nbConstraintsRead;
    transient BufferedReader in;
    char savedChar;
    boolean charAvailable = false;
    boolean eofReached = false;
    private boolean eolReached = false;
    static final /* synthetic */ boolean $assertionsDisabled;
    static /* synthetic */ Class class$org$sat4j$pb$reader$OPBReader2005;

    protected void metaData(int n, int n2) {
        this.solver.newVar(n);
    }

    protected void beginObjective() {
    }

    protected void endObjective() {
        if (!$assertionsDisabled && this.lits.size() != this.coeffs.size()) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && this.lits.size() != this.coeffs.size()) {
            throw new AssertionError();
        }
        for (int i = 0; i < this.lits.size(); ++i) {
            this.objectiveVars.push(this.lits.get(i));
            this.objectiveCoeffs.push(this.coeffs.get(i));
        }
    }

    protected void beginConstraint() {
        this.lits.clear();
        this.coeffs.clear();
        if (!$assertionsDisabled && this.lits.size() != 0) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && this.coeffs.size() != 0) {
            throw new AssertionError();
        }
    }

    protected void endConstraint() throws ContradictionException {
        if (!$assertionsDisabled && this.lits.size() == 0) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && this.coeffs.size() == 0) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && this.lits.size() != this.coeffs.size()) {
            throw new AssertionError();
        }
        if ("<=".equals(this.operator) || "=".equals(this.operator)) {
            this.solver.addPseudoBoolean(this.lits, this.coeffs, false, this.d);
        }
        if (">=".equals(this.operator) || "=".equals(this.operator)) {
            this.solver.addPseudoBoolean(this.lits, this.coeffs, true, this.d);
        }
        ++this.nbConstraintsRead;
    }

    private void constraintTerm(BigInteger bigInteger, String string) throws ParseFormatException {
        this.coeffs.push((Object)bigInteger);
        this.lits.push(this.translateVarToId(string));
    }

    protected int translateVarToId(String string) throws ParseFormatException {
        int n = Integer.parseInt(string.substring(1));
        return (this.savedChar == '-' ? -1 : 1) * n;
    }

    protected void constraintRelOp(String string) {
        this.operator = string;
    }

    protected void constraintRightTerm(BigInteger bigInteger) {
        this.d = bigInteger;
    }

    protected char get() throws IOException {
        if (this.charAvailable) {
            this.charAvailable = false;
            return this.savedChar;
        }
        int n = this.in.read();
        if (n == -1) {
            this.eofReached = true;
        }
        this.eolReached = n == 10 || n == 13;
        return (char)n;
    }

    public IVecInt getVars() {
        return this.objectiveVars;
    }

    public IVec<BigInteger> getCoeffs() {
        return this.objectiveCoeffs;
    }

    protected void putback(char c) {
        this.savedChar = c;
        this.charAvailable = true;
    }

    protected boolean eof() {
        return this.eofReached;
    }

    protected boolean eol() {
        return this.eolReached;
    }

    protected void skipSpaces() throws IOException {
        char c;
        while (Character.isWhitespace(c = this.get())) {
        }
        this.putback(c);
    }

    public String readWord() throws IOException {
        char c;
        StringBuffer stringBuffer = new StringBuffer();
        this.skipSpaces();
        while (!(Character.isWhitespace(c = this.get()) || this.eol() || this.eof())) {
            stringBuffer.append(c);
        }
        this.putback(c);
        return stringBuffer.toString();
    }

    public void readInteger(StringBuffer stringBuffer) throws IOException {
        this.skipSpaces();
        stringBuffer.setLength(0);
        char c = this.get();
        if (c == '-' || Character.isDigit(c)) {
            stringBuffer.append(c);
        }
        while (Character.isDigit(c = this.get()) && !this.eol() && !this.eof()) {
            stringBuffer.append(c);
        }
        this.putback(c);
    }

    protected boolean readIdentifier(StringBuffer stringBuffer) throws IOException, ParseFormatException {
        block3: {
            stringBuffer.setLength(0);
            this.skipSpaces();
            char c = this.get();
            if (this.eof()) {
                return false;
            }
            if (!this.isGoodFirstCharacter(c)) {
                this.putback(c);
                return false;
            }
            stringBuffer.append(c);
            while (true) {
                c = this.get();
                if (this.eof()) break block3;
                if (!this.isGoodFollowingCharacter(c)) break;
                stringBuffer.append(c);
            }
            this.putback(c);
        }
        this.checkId(stringBuffer);
        return true;
    }

    protected boolean isGoodFirstCharacter(char c) {
        return Character.isLetter(c) || c == '_';
    }

    protected boolean isGoodFollowingCharacter(char c) {
        return Character.isLetter(c) || Character.isDigit(c) || c == '_';
    }

    protected void checkId(StringBuffer stringBuffer) throws ParseFormatException {
        int n = Integer.parseInt(stringBuffer.substring(1));
        if (n > this.nbVars) {
            throw new ParseFormatException("Variable identifier larger than #variables in metadata.");
        }
    }

    private String readRelOp() throws IOException {
        this.skipSpaces();
        char c = this.get();
        if (this.eof()) {
            return null;
        }
        if (c == '=') {
            return "=";
        }
        char c2 = this.get();
        if (c == '>' && c2 == '=') {
            return ">=";
        }
        if (c == '<' && c2 == '=') {
            return "<=";
        }
        return null;
    }

    protected void readMetaData() throws IOException, ParseFormatException {
        char c = this.get();
        if (c != '*') {
            throw new ParseFormatException("First line of input file should be a comment");
        }
        String string = this.readWord();
        if (this.eof() || !"#variable=".equals(string)) {
            throw new ParseFormatException("First line should contain #variable= as first keyword");
        }
        this.nbVars = Integer.parseInt(this.readWord());
        string = this.readWord();
        if (this.eof() || !"#constraint=".equals(string)) {
            throw new ParseFormatException("First line should contain #constraint= as second keyword");
        }
        this.nbConstr = Integer.parseInt(this.readWord());
        this.in.readLine();
        this.metaData(this.nbVars, this.nbConstr);
    }

    private void skipComments() throws IOException {
        char c = ' ';
        while (!this.eof() && (c = this.get()) == '*') {
            this.in.readLine();
        }
        this.putback(c);
    }

    protected void readTerm(StringBuffer stringBuffer, StringBuffer stringBuffer2) throws IOException, ParseFormatException {
        this.readInteger(stringBuffer);
        this.skipSpaces();
        char c = this.get();
        if (c != '*') {
            throw new ParseFormatException("'*' expected between a coefficient and a variable");
        }
        if (!this.readIdentifier(stringBuffer2)) {
            throw new ParseFormatException("identifier expected");
        }
    }

    protected void readVariablesExplanation() throws IOException, ParseFormatException {
    }

    protected void readObjective() throws IOException, ParseFormatException {
        StringBuffer stringBuffer = new StringBuffer();
        StringBuffer stringBuffer2 = new StringBuffer();
        this.skipSpaces();
        char c = this.get();
        if (c != 'm') {
            this.putback(c);
            return;
        }
        this.hasObjFunc = true;
        if (this.get() == 'i' && this.get() == 'n' && this.get() == ':') {
            this.beginObjective();
            while (!this.eof()) {
                this.readTerm(stringBuffer2, stringBuffer);
                this.constraintTerm(new BigInteger(stringBuffer2.toString()), stringBuffer.toString());
                this.skipSpaces();
                c = this.get();
                if (c == ';') break;
                if (c == '-' || c == '+' || Character.isDigit(c)) {
                    this.putback(c);
                    continue;
                }
                throw new ParseFormatException("unexpected character in objective function");
            }
        } else {
            throw new ParseFormatException("input format error: 'min:' expected");
        }
        this.endObjective();
    }

    protected void readConstraint() throws IOException, ParseFormatException, ContradictionException {
        char c;
        StringBuffer stringBuffer = new StringBuffer();
        StringBuffer stringBuffer2 = new StringBuffer();
        this.beginConstraint();
        while (!this.eof()) {
            this.readTerm(stringBuffer2, stringBuffer);
            this.constraintTerm(new BigInteger(stringBuffer2.toString()), stringBuffer.toString());
            this.skipSpaces();
            c = this.get();
            if (c == '>' || c == '=' || c == '<') {
                this.putback(c);
                break;
            }
            if (c == '-' || c == '+' || Character.isDigit(c)) {
                this.putback(c);
                continue;
            }
            throw new ParseFormatException("unexpected character in constraint");
        }
        if (this.eof()) {
            throw new ParseFormatException("unexpected EOF before end of constraint");
        }
        String string = this.readRelOp();
        if (string == null) {
            throw new ParseFormatException("unexpected relational operator in constraint");
        }
        this.constraintRelOp(string);
        this.readInteger(stringBuffer2);
        this.constraintRightTerm(new BigInteger(stringBuffer2.toString()));
        this.skipSpaces();
        c = this.get();
        if (this.eof() || c != ';') {
            throw new ParseFormatException("semicolon expected at end of constraint");
        }
        this.endConstraint();
    }

    public OPBReader2005(IPBSolver iPBSolver) {
        this.solver = iPBSolver;
        this.lits = new VecInt();
        this.coeffs = new Vec();
    }

    public void parse() throws IOException, ParseFormatException, ContradictionException {
        this.readMetaData();
        this.skipComments();
        this.readObjective();
        this.readVariablesExplanation();
        this.nbConstraintsRead = 0;
        while (!this.eof()) {
            this.skipSpaces();
            if (this.eof()) break;
            char c = this.get();
            this.putback(c);
            if (c == '*') {
                this.skipComments();
            }
            if (this.eof()) break;
            this.readConstraint();
        }
        if (this.nbConstraintsRead != this.nbConstr) {
            throw new ParseFormatException(new StringBuffer().append("Number of constraints read (").append(this.nbConstraintsRead).append(") is different from metadata (").append(this.nbConstr).append(")").toString());
        }
    }

    public IProblem parseInstance(Reader reader) throws ParseFormatException, ContradictionException {
        IProblem iProblem = this.parseInstance(new LineNumberReader(reader));
        this.solver.setObjectiveFunction(this.getObjectiveFunction());
        return iProblem;
    }

    private IProblem parseInstance(LineNumberReader lineNumberReader) throws ParseFormatException, ContradictionException {
        this.solver.reset();
        this.in = lineNumberReader;
        try {
            this.parse();
            return this.solver;
        }
        catch (ContradictionException contradictionException) {
            throw contradictionException;
        }
        catch (Exception exception) {
            String string = exception instanceof ParseFormatException ? exception.getMessage().substring("DIMACS Format error: ".length()) : exception.getMessage();
            throw new ParseFormatException(new StringBuffer().append(" line ").append(lineNumberReader.getLineNumber() + 1).append(", ").append(string).toString());
        }
    }

    public String decode(int[] nArray) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < nArray.length; ++i) {
            if (nArray[i] < 0) {
                stringBuffer.append("-x");
                stringBuffer.append(-nArray[i]);
            } else {
                stringBuffer.append("x");
                stringBuffer.append(nArray[i]);
            }
            stringBuffer.append(" ");
        }
        return stringBuffer.toString();
    }

    public void decode(int[] nArray, PrintWriter printWriter) {
        for (int i = 0; i < nArray.length; ++i) {
            if (nArray[i] < 0) {
                printWriter.print("-x");
                printWriter.print(-nArray[i]);
            } else {
                printWriter.print("x");
                printWriter.print(nArray[i]);
            }
            printWriter.print(" ");
        }
    }

    public ObjectiveFunction getObjectiveFunction() {
        if (this.hasObjFunc) {
            return new ObjectiveFunction(this.getVars(), this.getCoeffs());
        }
        return null;
    }

    public IVecInt getListOfVariables() {
        return null;
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
        $assertionsDisabled = !(class$org$sat4j$pb$reader$OPBReader2005 == null ? (class$org$sat4j$pb$reader$OPBReader2005 = OPBReader2005.class$("org.sat4j.pb.reader.OPBReader2005")) : class$org$sat4j$pb$reader$OPBReader2005).desiredAssertionStatus();
    }
}

