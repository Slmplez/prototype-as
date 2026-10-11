/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core.model;

import org.eclipse.debug.core.model.IDebugElement;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.debug.core.model.IValue;

public interface IExpression
extends IDebugElement {
    public String getExpressionText();

    public IValue getValue();

    public IDebugTarget getDebugTarget();

    public void dispose();
}

