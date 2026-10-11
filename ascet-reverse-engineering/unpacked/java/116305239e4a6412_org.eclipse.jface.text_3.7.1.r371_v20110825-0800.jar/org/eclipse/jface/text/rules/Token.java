/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text.rules;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.rules.IToken;

public class Token
implements IToken {
    private static final int T_UNDEFINED = 0;
    private static final int T_EOF = 1;
    private static final int T_WHITESPACE = 2;
    private static final int T_OTHER = 3;
    public static final IToken UNDEFINED = new Token(0);
    public static final IToken EOF = new Token(1);
    public static final IToken WHITESPACE = new Token(2);
    public static final IToken OTHER = new Token(3);
    private int fType;
    private Object fData;

    private Token(int type) {
        this.fType = type;
        this.fData = null;
    }

    public Token(Object data) {
        this.fType = 3;
        this.fData = data;
    }

    public void setData(Object data) {
        Assert.isTrue((boolean)this.isOther());
        this.fData = data;
    }

    public Object getData() {
        return this.fData;
    }

    public boolean isOther() {
        return this.fType == 3;
    }

    public boolean isEOF() {
        return this.fType == 1;
    }

    public boolean isWhitespace() {
        return this.fType == 2;
    }

    public boolean isUndefined() {
        return this.fType == 0;
    }
}

