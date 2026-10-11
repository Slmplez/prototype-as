/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text.rules;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.rules.ICharacterScanner;
import org.eclipse.jface.text.rules.IRule;
import org.eclipse.jface.text.rules.IToken;
import org.eclipse.jface.text.rules.IWordDetector;
import org.eclipse.jface.text.rules.Token;

public class WordRule
implements IRule {
    protected static final int UNDEFINED = -1;
    protected IWordDetector fDetector;
    protected IToken fDefaultToken;
    protected int fColumn = -1;
    protected Map fWords = new HashMap();
    private StringBuffer fBuffer = new StringBuffer();
    private boolean fIgnoreCase = false;

    public WordRule(IWordDetector detector) {
        this(detector, Token.UNDEFINED, false);
    }

    public WordRule(IWordDetector detector, IToken defaultToken) {
        this(detector, defaultToken, false);
    }

    public WordRule(IWordDetector detector, IToken defaultToken, boolean ignoreCase) {
        Assert.isNotNull((Object)detector);
        Assert.isNotNull((Object)defaultToken);
        this.fDetector = detector;
        this.fDefaultToken = defaultToken;
        this.fIgnoreCase = ignoreCase;
    }

    public void addWord(String word, IToken token) {
        Assert.isNotNull((Object)word);
        Assert.isNotNull((Object)token);
        if (this.fIgnoreCase) {
            word = word.toLowerCase();
        }
        this.fWords.put(word, token);
    }

    public void setColumnConstraint(int column) {
        if (column < 0) {
            column = -1;
        }
        this.fColumn = column;
    }

    public IToken evaluate(ICharacterScanner scanner) {
        int c = scanner.read();
        if (c != -1 && this.fDetector.isWordStart((char)c) && (this.fColumn == -1 || this.fColumn == scanner.getColumn() - 1)) {
            IToken token;
            this.fBuffer.setLength(0);
            do {
                this.fBuffer.append((char)c);
            } while ((c = scanner.read()) != -1 && this.fDetector.isWordPart((char)c));
            scanner.unread();
            String buffer = this.fBuffer.toString();
            if (this.fIgnoreCase) {
                buffer = buffer.toLowerCase();
            }
            if ((token = (IToken)this.fWords.get(buffer)) != null) {
                return token;
            }
            if (this.fDefaultToken.isUndefined()) {
                this.unreadBuffer(scanner);
            }
            return this.fDefaultToken;
        }
        scanner.unread();
        return Token.UNDEFINED;
    }

    protected void unreadBuffer(ICharacterScanner scanner) {
        int i = this.fBuffer.length() - 1;
        while (i >= 0) {
            scanner.unread();
            --i;
        }
    }
}

