/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.debug.core;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.debug.core.IJavaDebugTarget;
import org.eclipse.jdt.debug.core.IJavaLineBreakpoint;

public interface IJavaTargetPatternBreakpoint
extends IJavaLineBreakpoint {
    public String getPattern(IJavaDebugTarget var1);

    public void setPattern(IJavaDebugTarget var1, String var2) throws CoreException;

    public String getSourceName() throws CoreException;
}

