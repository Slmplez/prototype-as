/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler;

import org.eclipse.jdt.core.compiler.CategorizedProblem;

public interface IDocumentElementRequestor {
    public void acceptImport(int var1, int var2, int[] var3, char[] var4, int var5, boolean var6, int var7);

    public void acceptInitializer(int var1, int var2, int[] var3, int var4, int var5, int var6, int var7);

    public void acceptLineSeparatorPositions(int[] var1);

    public void acceptPackage(int var1, int var2, int[] var3, char[] var4, int var5);

    public void acceptProblem(CategorizedProblem var1);

    public void enterClass(int var1, int[] var2, int var3, int var4, int var5, char[] var6, int var7, int var8, char[] var9, int var10, int var11, char[][] var12, int[] var13, int[] var14, int var15);

    public void enterCompilationUnit();

    public void enterConstructor(int var1, int[] var2, int var3, int var4, char[] var5, int var6, int var7, char[][] var8, int[] var9, int[] var10, char[][] var11, int[] var12, int[] var13, int var14, char[][] var15, int[] var16, int[] var17, int var18);

    public void enterField(int var1, int[] var2, int var3, int var4, char[] var5, int var6, int var7, int var8, char[] var9, int var10, int var11, int var12, int var13);

    public void enterInterface(int var1, int[] var2, int var3, int var4, int var5, char[] var6, int var7, int var8, char[][] var9, int[] var10, int[] var11, int var12);

    public void enterMethod(int var1, int[] var2, int var3, int var4, char[] var5, int var6, int var7, int var8, char[] var9, int var10, int var11, char[][] var12, int[] var13, int[] var14, char[][] var15, int[] var16, int[] var17, int var18, int var19, int var20, char[][] var21, int[] var22, int[] var23, int var24);

    public void exitClass(int var1, int var2);

    public void exitCompilationUnit(int var1);

    public void exitConstructor(int var1, int var2);

    public void exitField(int var1, int var2);

    public void exitInterface(int var1, int var2);

    public void exitMethod(int var1, int var2);
}

