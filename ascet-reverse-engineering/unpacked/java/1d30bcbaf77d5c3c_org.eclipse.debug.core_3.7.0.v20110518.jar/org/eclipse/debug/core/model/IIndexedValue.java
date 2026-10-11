/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core.model;

import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IValue;
import org.eclipse.debug.core.model.IVariable;

public interface IIndexedValue
extends IValue {
    public IVariable getVariable(int var1) throws DebugException;

    public IVariable[] getVariables(int var1, int var2) throws DebugException;

    public int getSize() throws DebugException;

    public int getInitialOffset();
}

