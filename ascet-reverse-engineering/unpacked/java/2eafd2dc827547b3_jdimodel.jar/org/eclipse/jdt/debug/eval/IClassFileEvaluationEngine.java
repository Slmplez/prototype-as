/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.debug.core.DebugException
 */
package org.eclipse.jdt.debug.eval;

import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.debug.eval.IEvaluationEngine;
import org.eclipse.jdt.debug.eval.IEvaluationListener;

public interface IClassFileEvaluationEngine
extends IEvaluationEngine {
    public String[] getImports();

    public void setImports(String[] var1);

    public void evaluate(String var1, IJavaThread var2, IEvaluationListener var3, boolean var4) throws DebugException;
}

