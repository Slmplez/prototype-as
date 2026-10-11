/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.debug.core.model.IBreakpoint
 */
package org.eclipse.jdt.debug.core;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.model.IBreakpoint;
import org.eclipse.jdt.debug.core.IJavaDebugTarget;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaThread;

public interface IJavaBreakpoint
extends IBreakpoint {
    public static final int SUSPEND_VM = 1;
    public static final int SUSPEND_THREAD = 2;

    public boolean isInstalled() throws CoreException;

    public String getTypeName() throws CoreException;

    public int getHitCount() throws CoreException;

    public void setHitCount(int var1) throws CoreException;

    public void setSuspendPolicy(int var1) throws CoreException;

    public int getSuspendPolicy() throws CoreException;

    public void setThreadFilter(IJavaThread var1) throws CoreException;

    public void removeThreadFilter(IJavaDebugTarget var1) throws CoreException;

    public IJavaThread getThreadFilter(IJavaDebugTarget var1) throws CoreException;

    public IJavaThread[] getThreadFilters() throws CoreException;

    public void addInstanceFilter(IJavaObject var1) throws CoreException;

    public void removeInstanceFilter(IJavaObject var1) throws CoreException;

    public boolean supportsInstanceFilters();

    public IJavaObject[] getInstanceFilters() throws CoreException;

    public boolean supportsThreadFilters();

    public String[] getBreakpointListeners() throws CoreException;

    public void addBreakpointListener(String var1) throws CoreException;

    public boolean removeBreakpointListener(String var1) throws CoreException;
}

