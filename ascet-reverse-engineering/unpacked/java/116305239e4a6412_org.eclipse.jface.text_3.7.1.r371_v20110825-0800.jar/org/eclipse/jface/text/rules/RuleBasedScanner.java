/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 */
package org.eclipse.jface.text.rules;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.rules.ICharacterScanner;
import org.eclipse.jface.text.rules.IRule;
import org.eclipse.jface.text.rules.IToken;
import org.eclipse.jface.text.rules.ITokenScanner;
import org.eclipse.jface.text.rules.Token;

public class RuleBasedScanner
implements ICharacterScanner,
ITokenScanner {
    protected IRule[] fRules;
    protected IToken fDefaultReturnToken;
    protected IDocument fDocument;
    protected char[][] fDelimiters;
    protected int fOffset;
    protected int fRangeEnd;
    protected int fTokenOffset;
    protected int fColumn;
    protected static final int UNDEFINED = -1;

    public void setRules(IRule[] rules) {
        if (rules != null) {
            this.fRules = new IRule[rules.length];
            System.arraycopy(rules, 0, this.fRules, 0, rules.length);
        } else {
            this.fRules = null;
        }
    }

    public void setDefaultReturnToken(IToken defaultReturnToken) {
        Assert.isNotNull((Object)defaultReturnToken.getData());
        this.fDefaultReturnToken = defaultReturnToken;
    }

    public void setRange(IDocument document, int offset, int length) {
        Assert.isLegal((document != null ? 1 : 0) != 0);
        int documentLength = document.getLength();
        this.checkRange(offset, length, documentLength);
        this.fDocument = document;
        this.fOffset = offset;
        this.fColumn = -1;
        this.fRangeEnd = offset + length;
        String[] delimiters = this.fDocument.getLegalLineDelimiters();
        this.fDelimiters = new char[delimiters.length][];
        int i = 0;
        while (i < delimiters.length) {
            this.fDelimiters[i] = delimiters[i].toCharArray();
            ++i;
        }
        if (this.fDefaultReturnToken == null) {
            this.fDefaultReturnToken = new Token(null);
        }
    }

    private void checkRange(int offset, int length, int documentLength) {
        Assert.isLegal((offset > -1 ? 1 : 0) != 0);
        Assert.isLegal((length > -1 ? 1 : 0) != 0);
        Assert.isLegal((offset + length <= documentLength ? 1 : 0) != 0);
    }

    public int getTokenOffset() {
        return this.fTokenOffset;
    }

    public int getTokenLength() {
        if (this.fOffset < this.fRangeEnd) {
            return this.fOffset - this.getTokenOffset();
        }
        return this.fRangeEnd - this.getTokenOffset();
    }

    public int getColumn() {
        if (this.fColumn == -1) {
            try {
                int line = this.fDocument.getLineOfOffset(this.fOffset);
                int start = this.fDocument.getLineOffset(line);
                this.fColumn = this.fOffset - start;
            }
            catch (BadLocationException badLocationException) {}
        }
        return this.fColumn;
    }

    public char[][] getLegalLineDelimiters() {
        return this.fDelimiters;
    }

    public IToken nextToken() {
        this.fTokenOffset = this.fOffset;
        this.fColumn = -1;
        if (this.fRules != null) {
            int i = 0;
            while (i < this.fRules.length) {
                IToken token = this.fRules[i].evaluate(this);
                if (!token.isUndefined()) {
                    return token;
                }
                ++i;
            }
        }
        if (this.read() == -1) {
            return Token.EOF;
        }
        return this.fDefaultReturnToken;
    }

    /*
     * Unable to fully structure code
     */
    public int read() {
        try {
            if (this.fOffset < this.fRangeEnd) {
                try {
                    var2_1 = this.fDocument.getChar(this.fOffset);
                    return var2_1;
                }
                catch (BadLocationException v0) {
                    ** try [egrp 2[TRYBLOCK] [2 : 42->43)] { 
                }
            }
lbl8:
            // 3 sources

            return -1;
lbl-1000:
            // 1 sources

            {
                catch (Throwable var1_2) {
                    throw var1_2;
                }
            }
        }
        finally {
            ++this.fOffset;
            this.fColumn = -1;
        }
    }

    public void unread() {
        --this.fOffset;
        this.fColumn = -1;
    }
}

