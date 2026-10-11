/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core.model;

import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IRegisterGroup;
import org.eclipse.debug.core.model.IVariable;

public interface IRegister
extends IVariable {
    public IRegisterGroup getRegisterGroup() throws DebugException;
}

