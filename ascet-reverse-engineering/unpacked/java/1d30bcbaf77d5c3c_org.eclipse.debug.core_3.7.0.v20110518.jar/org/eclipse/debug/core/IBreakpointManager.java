/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.debug.core;

import org.eclipse.core.resources.IMarker;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.IBreakpointListener;
import org.eclipse.debug.core.IBreakpointManagerListener;
import org.eclipse.debug.core.IBreakpointsListener;
import org.eclipse.debug.core.model.IBreakpoint;
import org.eclipse.debug.core.model.IBreakpointImportParticipant;

public interface IBreakpointManager {
    public void addBreakpoint(IBreakpoint var1) throws CoreException;

    public void addBreakpoints(IBreakpoint[] var1) throws CoreException;

    public IBreakpoint getBreakpoint(IMarker var1);

    public IBreakpoint[] getBreakpoints();

    public boolean hasBreakpoints();

    public IBreakpoint[] getBreakpoints(String var1);

    public boolean isRegistered(IBreakpoint var1);

    public void fireBreakpointChanged(IBreakpoint var1);

    public void removeBreakpoint(IBreakpoint var1, boolean var2) throws CoreException;

    public void removeBreakpoints(IBreakpoint[] var1, boolean var2) throws CoreException;

    public void addBreakpointListener(IBreakpointListener var1);

    public void removeBreakpointListener(IBreakpointListener var1);

    public void addBreakpointListener(IBreakpointsListener var1);

    public void removeBreakpointListener(IBreakpointsListener var1);

    public void addBreakpointManagerListener(IBreakpointManagerListener var1);

    public void removeBreakpointManagerListener(IBreakpointManagerListener var1);

    public boolean isEnabled();

    public void setEnabled(boolean var1);

    public String getTypeName(IBreakpoint var1);

    public IBreakpointImportParticipant[] getImportParticipants(String var1) throws CoreException;
}

