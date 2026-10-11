/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.IEvaluationContext
 */
package org.eclipse.ui.internal.services;

import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.IEvaluationContext;

public interface IEvaluationResultCache {
    public void clearResult();

    public Expression getExpression();

    public int getSourcePriority();

    public boolean evaluate(IEvaluationContext var1);

    public void setResult(boolean var1);
}

