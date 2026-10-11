/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.debug.core.DebugException
 */
package org.eclipse.jdt.debug.eval;

import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaReferenceType;
import org.eclipse.jdt.debug.core.IJavaStackFrame;
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.debug.eval.ICompiledExpression;
import org.eclipse.jdt.debug.eval.IEvaluationEngine;
import org.eclipse.jdt.debug.eval.IEvaluationListener;

public interface IAstEvaluationEngine
extends IEvaluationEngine {
    public void evaluateExpression(ICompiledExpression var1, IJavaStackFrame var2, IEvaluationListener var3, int var4, boolean var5) throws DebugException;

    public void evaluateExpression(ICompiledExpression var1, IJavaObject var2, IJavaThread var3, IEvaluationListener var4, int var5, boolean var6) throws DebugException;

    public ICompiledExpression getCompiledExpression(String var1, IJavaStackFrame var2) throws DebugException;

    public ICompiledExpression getCompiledExpression(String var1, IJavaObject var2) throws DebugException;

    public ICompiledExpression getCompiledExpression(String var1, IJavaReferenceType var2) throws DebugException;
}

