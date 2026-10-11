/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.debug.core.model.ILineBreakpoint
 */
package org.eclipse.jdt.debug.core;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.model.ILineBreakpoint;
import org.eclipse.jdt.debug.core.IJavaBreakpoint;

public interface IJavaLineBreakpoint
extends IJavaBreakpoint,
ILineBreakpoint {
    public boolean supportsCondition();

    public String getCondition() throws CoreException;

    public void setCondition(String var1) throws CoreException;

    public boolean isConditionEnabled() throws CoreException;

    public void setConditionEnabled(boolean var1) throws CoreException;

    public boolean isConditionSuspendOnTrue() throws CoreException;

    public void setConditionSuspendOnTrue(boolean var1) throws CoreException;
}

