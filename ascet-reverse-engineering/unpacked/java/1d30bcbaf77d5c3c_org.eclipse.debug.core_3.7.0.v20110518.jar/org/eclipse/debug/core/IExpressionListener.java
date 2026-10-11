/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core;

import org.eclipse.debug.core.model.IExpression;

public interface IExpressionListener {
    public void expressionAdded(IExpression var1);

    public void expressionRemoved(IExpression var1);

    public void expressionChanged(IExpression var1);
}

