/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.EvaluationResult
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.IEvaluationContext
 */
package org.eclipse.ui.internal.expressions;

import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.IEvaluationContext;

public final class AlwaysEnabledExpression
extends Expression {
    public static final AlwaysEnabledExpression INSTANCE = new AlwaysEnabledExpression();

    private AlwaysEnabledExpression() {
    }

    public EvaluationResult evaluate(IEvaluationContext context) {
        return EvaluationResult.TRUE;
    }
}

