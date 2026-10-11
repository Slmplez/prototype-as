/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.EvaluationResult
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.ui.internal.services;

import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.ui.internal.services.IEvaluationResultCache;
import org.eclipse.ui.internal.services.SourcePriorityNameMapping;

public abstract class EvaluationResultCache
implements IEvaluationResultCache {
    private EvaluationResult evaluationResult = null;
    private final Expression expression;
    private final int sourcePriority;

    protected EvaluationResultCache(Expression expression) {
        this.expression = expression;
        this.sourcePriority = SourcePriorityNameMapping.computeSourcePriority(expression);
    }

    public final void clearResult() {
        this.evaluationResult = null;
    }

    public final boolean evaluate(IEvaluationContext context) {
        if (this.expression == null) {
            return true;
        }
        if (this.evaluationResult == null) {
            try {
                this.evaluationResult = this.expression.evaluate(context);
            }
            catch (CoreException coreException) {
                this.evaluationResult = EvaluationResult.FALSE;
                return false;
            }
        }
        return this.evaluationResult != EvaluationResult.FALSE;
    }

    public final Expression getExpression() {
        return this.expression;
    }

    public final int getSourcePriority() {
        return this.sourcePriority;
    }

    public final void setResult(boolean result) {
        this.evaluationResult = result ? EvaluationResult.TRUE : EvaluationResult.FALSE;
    }
}

