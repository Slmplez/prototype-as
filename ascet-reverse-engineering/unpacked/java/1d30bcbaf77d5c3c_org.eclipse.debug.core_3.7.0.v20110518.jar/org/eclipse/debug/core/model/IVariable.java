/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core.model;

import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IDebugElement;
import org.eclipse.debug.core.model.IValue;
import org.eclipse.debug.core.model.IValueModification;

public interface IVariable
extends IDebugElement,
IValueModification {
    public IValue getValue() throws DebugException;

    public String getName() throws DebugException;

    public String getReferenceTypeName() throws DebugException;

    public boolean hasValueChanged() throws DebugException;
}

