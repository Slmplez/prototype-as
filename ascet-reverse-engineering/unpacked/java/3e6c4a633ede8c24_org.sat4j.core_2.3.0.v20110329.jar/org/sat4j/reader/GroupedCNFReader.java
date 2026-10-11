/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.reader;

import java.io.IOException;
import org.sat4j.reader.DimacsReader;
import org.sat4j.reader.ParseFormatException;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.ISolver;
import org.sat4j.tools.xplain.HighLevelXplain;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GroupedCNFReader
extends DimacsReader {
    private static final long serialVersionUID = 1L;
    private int numberOfComponents;
    private final HighLevelXplain<ISolver> hlxplain;
    private int currentComponentIndex;
    static final /* synthetic */ boolean $assertionsDisabled;
    static /* synthetic */ Class class$org$sat4j$reader$GroupedCNFReader;

    public GroupedCNFReader(HighLevelXplain<ISolver> highLevelXplain) {
        super(highLevelXplain, "gcnf");
        this.hlxplain = highLevelXplain;
    }

    @Override
    protected void readProblemLine() throws IOException, ParseFormatException {
        String string = this.scanner.nextLine().trim();
        if (string == null) {
            throw new ParseFormatException(new StringBuffer().append("premature end of file: <p ").append(this.formatString).append(" ...> expected").toString());
        }
        String[] stringArray = string.split("\\s+");
        if (stringArray.length < 5 || !"p".equals(stringArray[0]) || !this.formatString.equals(stringArray[1])) {
            throw new ParseFormatException(new StringBuffer().append("problem line expected (p ").append(this.formatString).append(" ...)").toString());
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
        this.numberOfComponents = Integer.parseInt(stringArray[4]);
        this.solver.setExpectedNumberOfClauses(this.expectedNbOfConstr);
    }

    @Override
    protected boolean handleLine() throws ContradictionException, IOException, ParseFormatException {
        boolean bl = false;
        String string = this.scanner.next();
        if (!string.startsWith("{") || !string.endsWith("}")) {
            throw new ParseFormatException("Component index required at the beginning of the clause");
        }
        this.currentComponentIndex = Integer.valueOf(string.substring(1, string.length() - 1));
        if (this.currentComponentIndex < 0 || this.currentComponentIndex > this.numberOfComponents) {
            throw new ParseFormatException(new StringBuffer().append("wrong component index: ").append(this.currentComponentIndex).toString());
        }
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

    @Override
    protected void flushConstraint() throws ContradictionException {
        block4: {
            try {
                if (this.currentComponentIndex == 0) {
                    this.hlxplain.addClause(this.literals);
                } else {
                    this.hlxplain.addClause(this.literals, this.currentComponentIndex);
                }
            }
            catch (IllegalArgumentException illegalArgumentException) {
                if (!this.isVerbose()) break block4;
                System.err.println(new StringBuffer().append("c Skipping constraint ").append(this.literals).toString());
            }
        }
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
        $assertionsDisabled = !(class$org$sat4j$reader$GroupedCNFReader == null ? (class$org$sat4j$reader$GroupedCNFReader = GroupedCNFReader.class$("org.sat4j.reader.GroupedCNFReader")) : class$org$sat4j$reader$GroupedCNFReader).desiredAssertionStatus();
    }
}

