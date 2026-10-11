/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core.model;

import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IDebugElement;
import org.eclipse.debug.core.model.IRegisterGroup;
import org.eclipse.debug.core.model.IStep;
import org.eclipse.debug.core.model.ISuspendResume;
import org.eclipse.debug.core.model.ITerminate;
import org.eclipse.debug.core.model.IThread;
import org.eclipse.debug.core.model.IVariable;

public interface IStackFrame
extends IDebugElement,
IStep,
ISuspendResume,
ITerminate {
    public IThread getThread();

    public IVariable[] getVariables() throws DebugException;

    public boolean hasVariables() throws DebugException;

    public int getLineNumber() throws DebugException;

    public int getCharStart() throws DebugException;

    public int getCharEnd() throws DebugException;

    public String getName() throws DebugException;

    public IRegisterGroup[] getRegisterGroups() throws DebugException;

    public boolean hasRegisterGroups() throws DebugException;
}

