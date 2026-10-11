/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.internal.compiler.ClassFile;

public interface IRequestor {
    public boolean acceptClassFiles(ClassFile[] var1, char[] var2);

    public void acceptProblem(CategorizedProblem var1, char[] var2, int var3);
}

