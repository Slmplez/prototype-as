/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.debug.core.model.IDebugTarget
 *  org.eclipse.debug.core.model.IWatchpoint
 */
package org.eclipse.jdt.debug.core;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.debug.core.model.IWatchpoint;
import org.eclipse.jdt.debug.core.IJavaLineBreakpoint;

public interface IJavaWatchpoint
extends IJavaLineBreakpoint,
IWatchpoint {
    public String getFieldName() throws CoreException;

    public boolean isAccessSuspend(IDebugTarget var1);
}

