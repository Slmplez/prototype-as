/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core.model;

import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IBreakpoint;
import org.eclipse.debug.core.model.IDebugElement;
import org.eclipse.debug.core.model.IStackFrame;
import org.eclipse.debug.core.model.IStep;
import org.eclipse.debug.core.model.ISuspendResume;
import org.eclipse.debug.core.model.ITerminate;

public interface IThread
extends IDebugElement,
ISuspendResume,
IStep,
ITerminate {
    public IStackFrame[] getStackFrames() throws DebugException;

    public boolean hasStackFrames() throws DebugException;

    public int getPriority() throws DebugException;

    public IStackFrame getTopStackFrame() throws DebugException;

    public String getName() throws DebugException;

    public IBreakpoint[] getBreakpoints();
}

