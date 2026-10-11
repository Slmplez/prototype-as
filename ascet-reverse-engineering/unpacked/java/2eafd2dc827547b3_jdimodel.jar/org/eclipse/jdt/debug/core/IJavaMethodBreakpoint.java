/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.debug.core.model.IDebugTarget
 */
package org.eclipse.jdt.debug.core;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.jdt.debug.core.IJavaLineBreakpoint;

public interface IJavaMethodBreakpoint
extends IJavaLineBreakpoint {
    public String getMethodName() throws CoreException;

    public String getMethodSignature() throws CoreException;

    public String getTypeName() throws CoreException;

    public boolean isEntry() throws CoreException;

    public boolean isExit() throws CoreException;

    public void setEntry(boolean var1) throws CoreException;

    public void setExit(boolean var1) throws CoreException;

    public void setNativeOnly(boolean var1) throws CoreException;

    public boolean isNativeOnly() throws CoreException;

    public boolean isEntrySuspend(IDebugTarget var1);
}

