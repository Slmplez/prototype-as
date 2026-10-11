/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.model.IFilteredStep
 *  org.eclipse.debug.core.model.IThread
 */
package org.eclipse.jdt.debug.core;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IFilteredStep;
import org.eclipse.debug.core.model.IThread;
import org.eclipse.jdt.debug.core.IEvaluationRunnable;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaThreadGroup;
import org.eclipse.jdt.debug.core.IJavaVariable;

public interface IJavaThread
extends IThread,
IFilteredStep {
    public static final int ERR_THREAD_NOT_SUSPENDED = 100;
    public static final int ERR_NESTED_METHOD_INVOCATION = 101;
    public static final int ERR_INCOMPATIBLE_THREAD_STATE = 102;

    public boolean isSystemThread() throws DebugException;

    public boolean isOutOfSynch() throws DebugException;

    public boolean mayBeOutOfSynch() throws DebugException;

    public boolean isPerformingEvaluation();

    public String getThreadGroupName() throws DebugException;

    public IJavaVariable findVariable(String var1) throws DebugException;

    public void runEvaluation(IEvaluationRunnable var1, IProgressMonitor var2, int var3, boolean var4) throws DebugException;

    public void queueRunnable(Runnable var1);

    public void terminateEvaluation() throws DebugException;

    public boolean canTerminateEvaluation();

    public IJavaObject getContendedMonitor() throws DebugException;

    public IJavaObject[] getOwnedMonitors() throws DebugException;

    public boolean hasOwnedMonitors() throws DebugException;

    public void stop(IJavaObject var1) throws DebugException;

    public IJavaThreadGroup getThreadGroup() throws DebugException;

    public boolean isDaemon() throws DebugException;

    public int getFrameCount() throws DebugException;

    public IJavaObject getThreadObject() throws DebugException;
}

