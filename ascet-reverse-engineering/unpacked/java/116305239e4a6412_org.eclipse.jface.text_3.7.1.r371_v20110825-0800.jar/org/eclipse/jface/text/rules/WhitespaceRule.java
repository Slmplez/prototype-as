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
import org.eclipse.jface.text.rules.IWhitespaceDetector;
import org.eclipse.jface.text.rules.Token;

public class WhitespaceRule
implements IRule {
    protected IWhitespaceDetector fDetector;
    protected final IToken fWhitespaceToken;

    public WhitespaceRule(IWhitespaceDetector detector) {
        this(detector, Token.WHITESPACE);
    }

    public WhitespaceRule(IWhitespaceDetector detector, IToken token) {
        Assert.isNotNull((Object)detector);
        Assert.isNotNull((Object)token);
        this.fDetector = detector;
        this.fWhitespaceToken = token;
    }

    public IToken evaluate(ICharacterScanner scanner) {
        int c = scanner.read();
        if (this.fDetector.isWhitespace((char)c)) {
            while (this.fDetector.isWhitespace((char)(c = scanner.read()))) {
            }
            scanner.unread();
            return this.fWhitespaceToken;
        }
        scanner.unread();
        return Token.UNDEFINED;
    }
}

