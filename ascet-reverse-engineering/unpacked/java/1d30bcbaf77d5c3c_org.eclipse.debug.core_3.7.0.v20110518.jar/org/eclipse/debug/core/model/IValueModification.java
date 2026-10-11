/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core.model;

import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IValue;

public interface IValueModification {
    public void setValue(String var1) throws DebugException;

    public void setValue(IValue var1) throws DebugException;

    public boolean supportsValueModification();

    public boolean verifyValue(String var1) throws DebugException;

    public boolean verifyValue(IValue var1) throws DebugException;
}

