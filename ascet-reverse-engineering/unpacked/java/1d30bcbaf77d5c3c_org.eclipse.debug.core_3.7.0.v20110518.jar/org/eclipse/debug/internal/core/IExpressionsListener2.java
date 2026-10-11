/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.internal.core;

import org.eclipse.debug.core.IExpressionsListener;
import org.eclipse.debug.core.model.IExpression;

public interface IExpressionsListener2
extends IExpressionsListener {
    public void expressionsMoved(IExpression[] var1, int var2);

    public void expressionsInserted(IExpression[] var1, int var2);
}

