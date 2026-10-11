/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core.model;

import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IValue;

public interface IWatchExpressionResult {
    public IValue getValue();

    public boolean hasErrors();

    public String[] getErrorMessages();

    public String getExpressionText();

    public DebugException getException();
}

