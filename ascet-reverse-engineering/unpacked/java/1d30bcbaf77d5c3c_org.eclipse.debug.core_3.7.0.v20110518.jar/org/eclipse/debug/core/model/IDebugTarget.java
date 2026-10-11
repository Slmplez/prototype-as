/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core.model;

import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.IBreakpointListener;
import org.eclipse.debug.core.model.IBreakpoint;
import org.eclipse.debug.core.model.IDebugElement;
import org.eclipse.debug.core.model.IDisconnect;
import org.eclipse.debug.core.model.IMemoryBlockRetrieval;
import org.eclipse.debug.core.model.IProcess;
import org.eclipse.debug.core.model.ISuspendResume;
import org.eclipse.debug.core.model.ITerminate;
import org.eclipse.debug.core.model.IThread;

public interface IDebugTarget
extends IDebugElement,
ITerminate,
ISuspendResume,
IBreakpointListener,
IDisconnect,
IMemoryBlockRetrieval {
    public IProcess getProcess();

    public IThread[] getThreads() throws DebugException;

    public boolean hasThreads() throws DebugException;

    public String getName() throws DebugException;

    public boolean supportsBreakpoint(IBreakpoint var1);
}

