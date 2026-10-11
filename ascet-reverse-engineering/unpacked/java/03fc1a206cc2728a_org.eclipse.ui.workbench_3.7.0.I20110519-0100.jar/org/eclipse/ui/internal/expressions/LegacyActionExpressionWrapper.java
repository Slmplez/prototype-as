/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.EvaluationResult
 *  org.eclipse.core.expressions.ExpressionInfo
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.jface.viewers.IStructuredSelection
 */
package org.eclipse.ui.internal.expressions;

import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.ExpressionInfo;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.ActionExpression;
import org.eclipse.ui.internal.expressions.WorkbenchWindowExpression;

public final class LegacyActionExpressionWrapper
extends WorkbenchWindowExpression {
    private static final int HASH_INITIAL;
    private final ActionExpression expression;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.expressions.LegacyActionExpressionWrapper");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public LegacyActionExpressionWrapper(ActionExpression expression, IWorkbenchWindow window) {
        super(window);
        if (expression == null) {
            throw new NullPointerException("The action expression cannot be null");
        }
        this.expression = expression;
    }

    public final void collectExpressionInfo(ExpressionInfo info) {
        super.collectExpressionInfo(info);
        info.markDefaultVariableAccessed();
    }

    protected final int computeHashCode() {
        int hashCode = HASH_INITIAL * 89 + LegacyActionExpressionWrapper.hashCode((Object)this.getWindow());
        hashCode = hashCode * 89 + LegacyActionExpressionWrapper.hashCode((Object)this.expression);
        return hashCode;
    }

    public final boolean equals(Object object) {
        if (object instanceof LegacyActionExpressionWrapper) {
            LegacyActionExpressionWrapper that = (LegacyActionExpressionWrapper)((Object)object);
            return LegacyActionExpressionWrapper.equals((Object)this.expression, (Object)that.expression) && LegacyActionExpressionWrapper.equals((Object)this.getWindow(), (Object)that.getWindow());
        }
        return false;
    }

    public final EvaluationResult evaluate(IEvaluationContext context) throws CoreException {
        IStructuredSelection selection;
        EvaluationResult result = super.evaluate(context);
        if (result == EvaluationResult.FALSE) {
            return result;
        }
        Object defaultVariable = context.getVariable("selection");
        if (defaultVariable instanceof IStructuredSelection ? this.expression.isEnabledFor(selection = (IStructuredSelection)defaultVariable) : this.expression.isEnabledFor(defaultVariable)) {
            return EvaluationResult.TRUE;
        }
        return EvaluationResult.FALSE;
    }

    public final String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("LegacyActionExpressionWrapper(");
        buffer.append(this.expression);
        buffer.append(',');
        buffer.append(this.getWindow());
        buffer.append(')');
        return buffer.toString();
    }
}

