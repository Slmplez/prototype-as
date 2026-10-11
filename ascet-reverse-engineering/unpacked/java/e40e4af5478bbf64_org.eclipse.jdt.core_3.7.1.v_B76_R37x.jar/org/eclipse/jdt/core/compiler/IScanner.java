/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.compiler;

import org.eclipse.jdt.core.compiler.InvalidInputException;

public interface IScanner {
    public char[] getCurrentTokenSource();

    public char[] getRawTokenSource();

    public int getCurrentTokenStartPosition();

    public int getCurrentTokenEndPosition();

    public int getLineStart(int var1);

    public int getLineEnd(int var1);

    public int[] getLineEnds();

    public int getLineNumber(int var1);

    public int getNextToken() throws InvalidInputException;

    public char[] getSource();

    public void resetTo(int var1, int var2);

    public void setSource(char[] var1);
}

