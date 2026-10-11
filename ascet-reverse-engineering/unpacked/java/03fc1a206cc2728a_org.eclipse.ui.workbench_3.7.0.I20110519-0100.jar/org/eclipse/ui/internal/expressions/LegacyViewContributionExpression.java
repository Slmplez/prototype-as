/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.EvaluationResult
 *  org.eclipse.core.expressions.ExpressionInfo
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.ui.internal.expressions;

import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.ExpressionInfo;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.expressions.WorkbenchWindowExpression;

public final class LegacyViewContributionExpression
extends WorkbenchWindowExpression {
    private static final int HASH_INITIAL;
    private final String activePartId;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.expressions.LegacyViewContributionExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public LegacyViewContributionExpression(String activePartId, IWorkbenchWindow window) {
        super(window);
        if (activePartId == null) {
            throw new NullPointerException("The targetId for a view contribution must not be null");
        }
        this.activePartId = activePartId;
    }

    public final void collectExpressionInfo(ExpressionInfo info) {
        super.collectExpressionInfo(info);
        info.addVariableNameAccess("activePartId");
    }

    protected final int computeHashCode() {
        int hashCode = HASH_INITIAL * 89 + LegacyViewContributionExpression.hashCode((Object)this.getWindow());
        hashCode = hashCode * 89 + LegacyViewContributionExpression.hashCode((Object)this.activePartId);
        return hashCode;
    }

    public final boolean equals(Object object) {
        if (object instanceof LegacyViewContributionExpression) {
            LegacyViewContributionExpression that = (LegacyViewContributionExpression)((Object)object);
            return LegacyViewContributionExpression.equals((Object)this.activePartId, (Object)that.activePartId) && LegacyViewContributionExpression.equals((Object)this.getWindow(), (Object)that.getWindow());
        }
        return false;
    }

    public final EvaluationResult evaluate(IEvaluationContext context) throws CoreException {
        EvaluationResult result = super.evaluate(context);
        if (result == EvaluationResult.FALSE) {
            return result;
        }
        Object variable = context.getVariable("activePartId");
        if (LegacyViewContributionExpression.equals((Object)this.activePartId, (Object)variable)) {
            return EvaluationResult.TRUE;
        }
        return EvaluationResult.FALSE;
    }

    public final String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("LegacyViewContributionExpression(");
        buffer.append(this.activePartId);
        buffer.append(',');
        buffer.append(this.getWindow());
        buffer.append(')');
        return buffer.toString();
    }
}

