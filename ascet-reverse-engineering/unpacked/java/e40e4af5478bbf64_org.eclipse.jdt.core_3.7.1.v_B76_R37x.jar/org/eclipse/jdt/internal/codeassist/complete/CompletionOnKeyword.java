/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

public interface CompletionOnKeyword {
    public char[] getToken();

    public char[][] getPossibleKeywords();

    public boolean canCompleteEmptyToken();
}

