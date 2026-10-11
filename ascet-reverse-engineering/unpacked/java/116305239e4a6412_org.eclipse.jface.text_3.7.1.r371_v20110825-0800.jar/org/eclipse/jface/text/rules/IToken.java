/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.rules;

public interface IToken {
    public boolean isUndefined();

    public boolean isWhitespace();

    public boolean isEOF();

    public boolean isOther();

    public Object getData();
}

