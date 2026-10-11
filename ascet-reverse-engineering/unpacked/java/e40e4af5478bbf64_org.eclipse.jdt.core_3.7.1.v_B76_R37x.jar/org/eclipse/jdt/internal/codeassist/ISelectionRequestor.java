/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist;

import org.eclipse.jdt.core.compiler.CategorizedProblem;

public interface ISelectionRequestor {
    public void acceptType(char[] var1, char[] var2, int var3, boolean var4, char[] var5, int var6, int var7);

    public void acceptError(CategorizedProblem var1);

    public void acceptField(char[] var1, char[] var2, char[] var3, boolean var4, char[] var5, int var6, int var7);

    public void acceptMethod(char[] var1, char[] var2, String var3, char[] var4, char[][] var5, char[][] var6, String[] var7, char[][] var8, char[][][] var9, boolean var10, boolean var11, char[] var12, int var13, int var14);

    public void acceptPackage(char[] var1);

    public void acceptTypeParameter(char[] var1, char[] var2, char[] var3, boolean var4, int var5, int var6);

    public void acceptMethodTypeParameter(char[] var1, char[] var2, char[] var3, int var4, int var5, char[] var6, boolean var7, int var8, int var9);
}

