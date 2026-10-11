/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.debug.core.DebugException
 */
package org.eclipse.jdt.debug.core;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.debug.core.IJavaThread;

public interface IEvaluationRunnable {
    public void run(IJavaThread var1, IProgressMonitor var2) throws DebugException;
}

