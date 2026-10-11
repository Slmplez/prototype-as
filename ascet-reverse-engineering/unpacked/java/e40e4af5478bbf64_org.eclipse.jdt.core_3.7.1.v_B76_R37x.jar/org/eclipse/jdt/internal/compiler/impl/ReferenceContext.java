/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.impl;

import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.internal.compiler.CompilationResult;

public interface ReferenceContext {
    public void abort(int var1, CategorizedProblem var2);

    public CompilationResult compilationResult();

    public boolean hasErrors();

    public void tagAsHavingErrors();
}

