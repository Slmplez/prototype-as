/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text.rules;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.rules.ICharacterScanner;
import org.eclipse.jface.text.rules.IRule;
import org.eclipse.jface.text.rules.IToken;
import org.eclipse.jface.text.rules.Token;

public class NumberRule
implements IRule {
    protected static final int UNDEFINED = -1;
    protected IToken fToken;
    protected int fColumn = -1;

    public NumberRule(IToken token) {
        Assert.isNotNull((Object)token);
        this.fToken = token;
    }

    public void setColumnConstraint(int column) {
        if (column < 0) {
            column = -1;
        }
        this.fColumn = column;
    }

    public IToken evaluate(ICharacterScanner scanner) {
        int c = scanner.read();
        if (Character.isDigit((char)c) && (this.fColumn == -1 || this.fColumn == scanner.getColumn() - 1)) {
            while (Character.isDigit((char)(c = scanner.read()))) {
            }
            scanner.unread();
            return this.fToken;
        }
        scanner.unread();
        return Token.UNDEFINED;
    }
}

