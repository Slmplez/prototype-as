/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core.model;

import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IDebugElement;
import org.eclipse.debug.core.model.IRegister;

public interface IRegisterGroup
extends IDebugElement {
    public String getName() throws DebugException;

    public IRegister[] getRegisters() throws DebugException;

    public boolean hasRegisters() throws DebugException;
}

