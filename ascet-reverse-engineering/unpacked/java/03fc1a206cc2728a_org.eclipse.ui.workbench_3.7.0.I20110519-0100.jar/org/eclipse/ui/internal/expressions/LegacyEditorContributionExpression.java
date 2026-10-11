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

public final class LegacyEditorContributionExpression
extends WorkbenchWindowExpression {
    private static final int HASH_INITIAL;
    private final String activeEditorId;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.expressions.LegacyEditorContributionExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public LegacyEditorContributionExpression(String activeEditorId, IWorkbenchWindow window) {
        super(window);
        if (activeEditorId == null) {
            throw new NullPointerException("The targetId for an editor contribution must not be null");
        }
        this.activeEditorId = activeEditorId;
    }

    public final void collectExpressionInfo(ExpressionInfo info) {
        super.collectExpressionInfo(info);
        info.addVariableNameAccess("activePartId");
    }

    protected final int computeHashCode() {
        int hashCode = HASH_INITIAL * 89 + LegacyEditorContributionExpression.hashCode((Object)this.getWindow());
        hashCode = hashCode * 89 + LegacyEditorContributionExpression.hashCode((Object)this.activeEditorId);
        return hashCode;
    }

    public final boolean equals(Object object) {
        if (object instanceof LegacyEditorContributionExpression) {
            LegacyEditorContributionExpression that = (LegacyEditorContributionExpression)((Object)object);
            return LegacyEditorContributionExpression.equals((Object)this.activeEditorId, (Object)that.activeEditorId) && LegacyEditorContributionExpression.equals((Object)this.getWindow(), (Object)that.getWindow());
        }
        return false;
    }

    public final EvaluationResult evaluate(IEvaluationContext context) throws CoreException {
        EvaluationResult result = super.evaluate(context);
        if (result == EvaluationResult.FALSE) {
            return result;
        }
        Object variable = context.getVariable("activePartId");
        if (LegacyEditorContributionExpression.equals((Object)this.activeEditorId, (Object)variable)) {
            return EvaluationResult.TRUE;
        }
        return EvaluationResult.FALSE;
    }

    public final String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("LegacyEditorContributionExpression(");
        buffer.append(this.activeEditorId);
        buffer.append(',');
        buffer.append(this.getWindow());
        buffer.append(')');
        return buffer.toString();
    }
}

