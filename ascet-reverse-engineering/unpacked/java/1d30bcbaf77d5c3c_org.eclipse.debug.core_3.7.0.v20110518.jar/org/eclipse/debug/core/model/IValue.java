/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core.model;

import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IDebugElement;
import org.eclipse.debug.core.model.IVariable;

public interface IValue
extends IDebugElement {
    public String getReferenceTypeName() throws DebugException;

    public String getValueString() throws DebugException;

    public boolean isAllocated() throws DebugException;

    public IVariable[] getVariables() throws DebugException;

    public boolean hasVariables() throws DebugException;
}

