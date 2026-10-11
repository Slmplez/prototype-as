/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.core.internal.expressions;

import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.internal.expressions.CompositeExpression;
import org.eclipse.core.internal.expressions.Expressions;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.w3c.dom.Element;

public class EnablementExpression
extends CompositeExpression {
    public EnablementExpression(IConfigurationElement configElement) {
    }

    public EnablementExpression(Element element) {
    }

    public boolean equals(Object object) {
        if (!(object instanceof EnablementExpression)) {
            return false;
        }
        EnablementExpression that = (EnablementExpression)object;
        return EnablementExpression.equals(this.fExpressions, that.fExpressions);
    }

    public EvaluationResult evaluate(IEvaluationContext context) throws CoreException {
        long start = 0L;
        if (Expressions.TRACING) {
            start = System.currentTimeMillis();
        }
        EvaluationResult result = this.evaluateAnd(context);
        if (Expressions.TRACING) {
            System.out.println("[Enablement Expression] - evaluation time: " + (System.currentTimeMillis() - start) + " ms.");
        }
        return result;
    }
}

