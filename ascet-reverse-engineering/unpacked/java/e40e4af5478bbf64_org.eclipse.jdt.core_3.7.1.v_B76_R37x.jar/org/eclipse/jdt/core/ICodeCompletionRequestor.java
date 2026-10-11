/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IMarker
 */
package org.eclipse.jdt.core;

import org.eclipse.core.resources.IMarker;

public interface ICodeCompletionRequestor {
    public void acceptClass(char[] var1, char[] var2, char[] var3, int var4, int var5, int var6);

    public void acceptError(IMarker var1);

    public void acceptField(char[] var1, char[] var2, char[] var3, char[] var4, char[] var5, char[] var6, int var7, int var8, int var9);

    public void acceptInterface(char[] var1, char[] var2, char[] var3, int var4, int var5, int var6);

    public void acceptKeyword(char[] var1, int var2, int var3);

    public void acceptLabel(char[] var1, int var2, int var3);

    public void acceptLocalVariable(char[] var1, char[] var2, char[] var3, int var4, int var5, int var6);

    public void acceptMethod(char[] var1, char[] var2, char[] var3, char[][] var4, char[][] var5, char[] var6, char[] var7, char[] var8, int var9, int var10, int var11);

    public void acceptModifier(char[] var1, int var2, int var3);

    public void acceptPackage(char[] var1, char[] var2, int var3, int var4);

    public void acceptType(char[] var1, char[] var2, char[] var3, int var4, int var5);
}

