/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core;

import org.eclipse.debug.core.model.IExpression;

public interface IExpressionsListener {
    public void expressionsAdded(IExpression[] var1);

    public void expressionsRemoved(IExpression[] var1);

    public void expressionsChanged(IExpression[] var1);
}

