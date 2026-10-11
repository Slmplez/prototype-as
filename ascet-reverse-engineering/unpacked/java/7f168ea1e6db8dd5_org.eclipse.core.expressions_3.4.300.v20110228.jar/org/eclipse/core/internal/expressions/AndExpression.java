/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.internal.expressions;

import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.internal.expressions.CompositeExpression;
import org.eclipse.core.runtime.CoreException;

public class AndExpression
extends CompositeExpression {
    public boolean equals(Object object) {
        if (!(object instanceof AndExpression)) {
            return false;
        }
        AndExpression that = (AndExpression)object;
        return AndExpression.equals(this.fExpressions, that.fExpressions);
    }

    public EvaluationResult evaluate(IEvaluationContext context) throws CoreException {
        return this.evaluateAnd(context);
    }
}

