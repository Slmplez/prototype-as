/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.IEvaluationContext
 */
package org.eclipse.ui.internal.contexts;

import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.ui.contexts.IContextActivation;
import org.eclipse.ui.contexts.IContextService;
import org.eclipse.ui.internal.services.EvaluationResultCache;

final class ContextActivation
extends EvaluationResultCache
implements IContextActivation {
    private final String contextId;
    private final IContextService contextService;

    public ContextActivation(String contextId, Expression expression, IContextService contextService) {
        super(expression);
        if (contextId == null) {
            throw new NullPointerException("The context identifier for a context activation cannot be null");
        }
        if (contextService == null) {
            throw new NullPointerException("The context service for an activation cannot be null");
        }
        this.contextId = contextId;
        this.contextService = contextService;
    }

    public final void clearActive() {
        this.clearResult();
    }

    public final String getContextId() {
        return this.contextId;
    }

    public final IContextService getContextService() {
        return this.contextService;
    }

    public final boolean isActive(IEvaluationContext context) {
        return this.evaluate(context);
    }

    public final String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("ContextActivation(contextId=");
        buffer.append(this.contextId);
        buffer.append(",sourcePriority=");
        buffer.append(this.getSourcePriority());
        buffer.append(')');
        return buffer.toString();
    }
}

