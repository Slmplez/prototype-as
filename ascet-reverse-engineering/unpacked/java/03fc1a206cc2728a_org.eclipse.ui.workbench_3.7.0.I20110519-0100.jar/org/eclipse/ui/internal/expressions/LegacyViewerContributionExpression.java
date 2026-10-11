/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.EvaluationResult
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.ExpressionInfo
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.ui.internal.expressions;

import java.util.Collection;
import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionInfo;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.expressions.WorkbenchWindowExpression;

public final class LegacyViewerContributionExpression
extends WorkbenchWindowExpression {
    private static final int HASH_INITIAL;
    private final Expression expression;
    private final String targetId;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.expressions.LegacyViewerContributionExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public LegacyViewerContributionExpression(String targetId, IWorkbenchWindow window, Expression childExpression) {
        super(window);
        if (targetId == null) {
            throw new NullPointerException("The targetId cannot be null");
        }
        this.targetId = targetId;
        this.expression = childExpression;
    }

    public final void collectExpressionInfo(ExpressionInfo info) {
        super.collectExpressionInfo(info);
        info.addVariableNameAccess("activeMenu");
        if (this.expression != null) {
            this.expression.collectExpressionInfo(info);
        }
    }

    protected final int computeHashCode() {
        int hashCode = HASH_INITIAL * 89 + LegacyViewerContributionExpression.hashCode((Object)this.getWindow());
        hashCode = hashCode * 89 + LegacyViewerContributionExpression.hashCode((Object)this.expression);
        hashCode = hashCode * 89 + LegacyViewerContributionExpression.hashCode((Object)this.targetId);
        return hashCode;
    }

    public final boolean equals(Object object) {
        if (object instanceof LegacyViewerContributionExpression) {
            LegacyViewerContributionExpression that = (LegacyViewerContributionExpression)((Object)object);
            return LegacyViewerContributionExpression.equals((Object)this.targetId, (Object)that.targetId) && LegacyViewerContributionExpression.equals((Object)this.expression, (Object)that.expression) && LegacyViewerContributionExpression.equals((Object)this.getWindow(), (Object)that.getWindow());
        }
        return false;
    }

    public final EvaluationResult evaluate(IEvaluationContext context) throws CoreException {
        Collection menuIds;
        EvaluationResult result = super.evaluate(context);
        if (result == EvaluationResult.FALSE) {
            return result;
        }
        Object value = context.getVariable("activeMenu");
        if (value instanceof String) {
            String menuId = (String)value;
            if (this.targetId.equals(menuId)) {
                if (this.expression == null) {
                    return EvaluationResult.TRUE;
                }
                return this.expression.evaluate(context);
            }
        } else if (value instanceof Collection && (menuIds = (Collection)value).contains(this.targetId)) {
            if (this.expression == null) {
                return EvaluationResult.TRUE;
            }
            return this.expression.evaluate(context);
        }
        return EvaluationResult.FALSE;
    }

    public final String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("ViewerContributionExpression(");
        buffer.append(this.targetId);
        buffer.append(',');
        buffer.append(this.expression);
        buffer.append(',');
        buffer.append(this.getWindow());
        buffer.append(')');
        return buffer.toString();
    }
}

