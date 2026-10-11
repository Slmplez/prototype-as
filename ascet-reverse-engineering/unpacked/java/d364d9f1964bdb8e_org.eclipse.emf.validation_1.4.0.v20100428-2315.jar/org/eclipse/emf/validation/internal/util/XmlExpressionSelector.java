/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.EvaluationContext
 *  org.eclipse.core.expressions.EvaluationResult
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.ExpressionConverter
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.emf.validation.internal.util;

import org.eclipse.core.expressions.EvaluationContext;
import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionConverter;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.emf.validation.internal.util.Trace;
import org.eclipse.emf.validation.model.IClientSelector;

public class XmlExpressionSelector
implements IClientSelector {
    private final Expression expression;

    public XmlExpressionSelector(IConfigurationElement enablement) throws CoreException {
        this.expression = ExpressionConverter.getDefault().perform(enablement);
    }

    public boolean selects(Object object) {
        boolean result = false;
        EvaluationContext ctx = (EvaluationContext)object;
        try {
            EvaluationResult res = this.expression.evaluate((IEvaluationContext)ctx);
            result = res.equals(EvaluationResult.TRUE);
        }
        catch (CoreException e) {
            Trace.catching(this.getClass(), "selects", e);
            RuntimeException re = new RuntimeException(e);
            Trace.throwing(this.getClass(), "selects", re);
            throw re;
        }
        return result;
    }
}

