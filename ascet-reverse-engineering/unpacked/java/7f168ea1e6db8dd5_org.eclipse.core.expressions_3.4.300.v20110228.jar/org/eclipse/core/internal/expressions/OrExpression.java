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

public class OrExpression
extends CompositeExpression {
    public EvaluationResult evaluate(IEvaluationContext context) throws CoreException {
        return this.evaluateOr(context);
    }

    public boolean equals(Object object) {
        if (!(object instanceof OrExpression)) {
            return false;
        }
        OrExpression that = (OrExpression)object;
        return OrExpression.equals(this.fExpressions, that.fExpressions);
    }
}

