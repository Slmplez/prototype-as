/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist;

import org.eclipse.jdt.core.ICompletionRequestor;

public interface IExtendedCompletionRequestor
extends ICompletionRequestor {
    public void acceptPotentialMethodDeclaration(char[] var1, char[] var2, char[] var3, int var4, int var5, int var6);
}

