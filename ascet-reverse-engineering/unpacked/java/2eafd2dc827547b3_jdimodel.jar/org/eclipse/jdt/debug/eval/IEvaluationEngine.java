/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.jdt.core.IJavaProject
 */
package org.eclipse.jdt.debug.eval;

import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.debug.core.IJavaDebugTarget;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaStackFrame;
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.debug.eval.IEvaluationListener;

public interface IEvaluationEngine {
    public void evaluate(String var1, IJavaStackFrame var2, IEvaluationListener var3, int var4, boolean var5) throws DebugException;

    public void evaluate(String var1, IJavaObject var2, IJavaThread var3, IEvaluationListener var4, int var5, boolean var6) throws DebugException;

    public IJavaProject getJavaProject();

    public IJavaDebugTarget getDebugTarget();

    public void dispose();
}

