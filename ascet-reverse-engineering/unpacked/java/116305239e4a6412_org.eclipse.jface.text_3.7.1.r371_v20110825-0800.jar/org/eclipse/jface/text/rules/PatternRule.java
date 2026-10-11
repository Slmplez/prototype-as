/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text.rules;

import java.util.Arrays;
import java.util.Comparator;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.rules.ICharacterScanner;
import org.eclipse.jface.text.rules.IPredicateRule;
import org.eclipse.jface.text.rules.IToken;
import org.eclipse.jface.text.rules.Token;

public class PatternRule
implements IPredicateRule {
    protected static final int UNDEFINED = -1;
    protected IToken fToken;
    protected char[] fStartSequence;
    protected char[] fEndSequence;
    protected int fColumn = -1;
    protected char fEscapeCharacter;
    protected boolean fEscapeContinuesLine;
    protected boolean fBreaksOnEOL;
    protected boolean fBreaksOnEOF;
    private Comparator fLineDelimiterComparator = new DecreasingCharArrayLengthComparator();
    private char[][] fLineDelimiters;
    private char[][] fSortedLineDelimiters;

    public PatternRule(String startSequence, String endSequence, IToken token, char escapeCharacter, boolean breaksOnEOL) {
        Assert.isTrue((startSequence != null && startSequence.length() > 0 ? 1 : 0) != 0);
        Assert.isTrue((endSequence != null || breaksOnEOL ? 1 : 0) != 0);
        Assert.isNotNull((Object)token);
        this.fStartSequence = startSequence.toCharArray();
        this.fEndSequence = endSequence == null ? new char[]{} : endSequence.toCharArray();
        this.fToken = token;
        this.fEscapeCharacter = escapeCharacter;
        this.fBreaksOnEOL = breaksOnEOL;
    }

    public PatternRule(String startSequence, String endSequence, IToken token, char escapeCharacter, boolean breaksOnEOL, boolean breaksOnEOF) {
        this(startSequence, endSequence, token, escapeCharacter, breaksOnEOL);
        this.fBreaksOnEOF = breaksOnEOF;
    }

    public PatternRule(String startSequence, String endSequence, IToken token, char escapeCharacter, boolean breaksOnEOL, boolean breaksOnEOF, boolean escapeContinuesLine) {
        this(startSequence, endSequence, token, escapeCharacter, breaksOnEOL, breaksOnEOF);
        this.fEscapeContinuesLine = escapeContinuesLine;
    }

    public void setColumnConstraint(int column) {
        if (column < 0) {
            column = -1;
        }
        this.fColumn = column;
    }

    protected IToken doEvaluate(ICharacterScanner scanner) {
        return this.doEvaluate(scanner, false);
    }

    protected IToken doEvaluate(ICharacterScanner scanner, boolean resume) {
        int c;
        if (resume ? this.endSequenceDetected(scanner) : (c = scanner.read()) == this.fStartSequence[0] && this.sequenceDetected(scanner, this.fStartSequence, false) && this.endSequenceDetected(scanner)) {
            return this.fToken;
        }
        scanner.unread();
        return Token.UNDEFINED;
    }

    public IToken evaluate(ICharacterScanner scanner) {
        return this.evaluate(scanner, false);
    }

    /*
     * Unable to fully structure code
     */
    protected boolean endSequenceDetected(ICharacterScanner scanner) {
        block17: {
            originalDelimiters = scanner.getLegalLineDelimiters();
            count = originalDelimiters.length;
            if (this.fLineDelimiters != null && this.fLineDelimiters.length == count) ** GOTO lbl7
            this.fSortedLineDelimiters = new char[count][];
            break block17;
lbl-1000:
            // 1 sources

            {
                --count;
lbl7:
                // 2 sources

                ** while (count > 0 && Arrays.equals((char[])this.fLineDelimiters[count - 1], (char[])originalDelimiters[count - 1]))
            }
        }
        if (count != 0) {
            this.fLineDelimiters = originalDelimiters;
            System.arraycopy(this.fLineDelimiters, 0, this.fSortedLineDelimiters, 0, this.fLineDelimiters.length);
            Arrays.sort(this.fSortedLineDelimiters, this.fLineDelimiterComparator);
        }
        readCount = 1;
        while ((c = scanner.read()) != -1) {
            if (c == this.fEscapeCharacter) {
                if (this.fEscapeContinuesLine) {
                    c = scanner.read();
                    i = 0;
                    while (i < this.fSortedLineDelimiters.length) {
                        if (c != this.fSortedLineDelimiters[i][0] || !this.sequenceDetected(scanner, this.fSortedLineDelimiters[i], true)) {
                            ++i;
                            continue;
                        }
                        break;
                    }
                } else {
                    scanner.read();
                }
            } else if (this.fEndSequence.length > 0 && c == this.fEndSequence[0]) {
                if (this.sequenceDetected(scanner, this.fEndSequence, true)) {
                    return true;
                }
            } else if (this.fBreaksOnEOL) {
                i = 0;
                while (i < this.fSortedLineDelimiters.length) {
                    if (c == this.fSortedLineDelimiters[i][0] && this.sequenceDetected(scanner, this.fSortedLineDelimiters[i], true)) {
                        return true;
                    }
                    ++i;
                }
            }
            ++readCount;
        }
        if (!this.fBreaksOnEOF) ** GOTO lbl46
        return true;
lbl-1000:
        // 1 sources

        {
            scanner.unread();
            --readCount;
lbl46:
            // 2 sources

            ** while (readCount > 0)
        }
lbl47:
        // 1 sources

        return false;
    }

    protected boolean sequenceDetected(ICharacterScanner scanner, char[] sequence, boolean eofAllowed) {
        int i = 1;
        while (i < sequence.length) {
            int c = scanner.read();
            if (c == -1 && eofAllowed) {
                return true;
            }
            if (c != sequence[i]) {
                scanner.unread();
                int j = i - 1;
                while (j > 0) {
                    scanner.unread();
                    --j;
                }
                return false;
            }
            ++i;
        }
        return true;
    }

    public IToken evaluate(ICharacterScanner scanner, boolean resume) {
        if (this.fColumn == -1) {
            return this.doEvaluate(scanner, resume);
        }
        int c = scanner.read();
        scanner.unread();
        if (c == this.fStartSequence[0]) {
            return this.fColumn == scanner.getColumn() ? this.doEvaluate(scanner, resume) : Token.UNDEFINED;
        }
        return Token.UNDEFINED;
    }

    public IToken getSuccessToken() {
        return this.fToken;
    }

    private static class DecreasingCharArrayLengthComparator
    implements Comparator {
        private DecreasingCharArrayLengthComparator() {
        }

        public int compare(Object o1, Object o2) {
            return ((char[])o2).length - ((char[])o1).length;
        }
    }
}

