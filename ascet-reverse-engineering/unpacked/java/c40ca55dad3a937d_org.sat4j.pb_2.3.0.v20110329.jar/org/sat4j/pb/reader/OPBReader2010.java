/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.reader.ParseFormatException
 *  org.sat4j.specs.ContradictionException
 *  org.sat4j.specs.IProblem
 */
package org.sat4j.pb.reader;

import java.io.IOException;
import java.io.Reader;
import java.math.BigInteger;
import java.util.Iterator;
import org.sat4j.pb.IPBSolver;
import org.sat4j.pb.reader.OPBReader2007;
import org.sat4j.reader.ParseFormatException;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IProblem;

public class OPBReader2010
extends OPBReader2007 {
    public static final BigInteger SAT4J_MAX_BIG_INTEGER = new BigInteger("100000000000000000000000000000000000000000");
    private boolean isWbo = false;
    private BigInteger softLimit = SAT4J_MAX_BIG_INTEGER;
    private static final long serialVersionUID = 1L;
    private boolean softConstraint;

    public OPBReader2010(IPBSolver iPBSolver) {
        super(iPBSolver);
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
        this.nbNewSymbols = this.nbVars + 1;
        string = this.readWord();
        if (this.eof() || !"#constraint=".equals(string)) {
            throw new ParseFormatException("First line should contain #constraint= as second keyword");
        }
        this.nbConstr = Integer.parseInt(this.readWord());
        this.charAvailable = false;
        if (!this.eol()) {
            String[] stringArray;
            String string2 = this.in.readLine();
            if (string2.contains("#soft")) {
                this.isWbo = true;
                this.hasObjFunc = true;
            }
            if (string2 != null && string2.indexOf("#product=") != -1 && (stringArray = string2.trim().split(" "))[0].equals("#product=")) {
                Integer.parseInt(stringArray[1]);
            }
        }
        this.metaData(this.nbVars, this.nbConstr);
    }

    protected void readObjective() throws IOException, ParseFormatException {
        if (this.isWbo) {
            this.readSoftLine();
        } else {
            super.readObjective();
        }
    }

    private void readSoftLine() throws IOException, ParseFormatException {
        String string = this.readWord();
        if (string == null || !"soft:".equals(string)) {
            throw new ParseFormatException("Did not find expected soft: line");
        }
        string = this.readWord().trim();
        if (string != null && !";".equals(string)) {
            this.softLimit = new BigInteger(string);
        }
        this.skipSpaces();
        if (this.get() != ';') {
            throw new ParseFormatException("soft: line should end with a semicolon");
        }
    }

    protected void beginConstraint() {
        super.beginConstraint();
        this.softConstraint = false;
        try {
            if (this.isWbo) {
                this.skipSpaces();
                char c = this.get();
                this.putback(c);
                if (c == '[') {
                    this.softConstraint = true;
                    String string = this.readWord();
                    if (!string.endsWith("]")) {
                        throw new ParseFormatException("Expecting end of weight ");
                    }
                    BigInteger bigInteger = new BigInteger(string.substring(1, string.length() - 1));
                    this.getCoeffs().push((Object)bigInteger);
                    int n = this.nbNewSymbols++;
                    this.getVars().push(n);
                }
            }
        }
        catch (Exception exception) {
            throw new RuntimeException(exception);
        }
    }

    protected void endConstraint() throws ContradictionException {
        if (this.softConstraint) {
            int n = this.getVars().last();
            BigInteger bigInteger = this.d;
            Iterator iterator = this.coeffs.iterator();
            while (iterator.hasNext()) {
                bigInteger = bigInteger.add(((BigInteger)iterator.next()).abs());
            }
            if ("<=".equals(this.operator)) {
                bigInteger = bigInteger.negate();
            }
            this.coeffs.push((Object)bigInteger);
            this.lits.push(n);
        }
        super.endConstraint();
    }

    public IProblem parseInstance(Reader reader) throws ParseFormatException, ContradictionException {
        super.parseInstance(reader);
        if (this.isWbo && this.softLimit != SAT4J_MAX_BIG_INTEGER) {
            this.solver.addPseudoBoolean(this.getVars(), this.getCoeffs(), false, this.softLimit.subtract(BigInteger.ONE));
        }
        return this.solver;
    }
}

