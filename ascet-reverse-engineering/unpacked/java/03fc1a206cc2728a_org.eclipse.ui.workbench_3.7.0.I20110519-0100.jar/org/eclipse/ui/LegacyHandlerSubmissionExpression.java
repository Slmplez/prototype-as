/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.EvaluationResult
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.ExpressionInfo
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui;

import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionInfo;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IWorkbenchPartSite;

public final class LegacyHandlerSubmissionExpression
extends Expression {
    private static final int HASH_INITIAL;
    private final String activePartId;
    private final Shell activeShell;
    private final IWorkbenchPartSite activeSite;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.LegacyHandlerSubmissionExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public LegacyHandlerSubmissionExpression(String activePartId, Shell activeShell, IWorkbenchPartSite activeSite) {
        this.activePartId = activePartId;
        this.activeShell = activeShell;
        this.activeSite = activeSite;
    }

    public final void collectExpressionInfo(ExpressionInfo info) {
        if (this.activePartId != null) {
            info.addVariableNameAccess("activePartId");
        }
        if (this.activeShell != null) {
            info.addVariableNameAccess("activeShell");
            info.addVariableNameAccess("activeWorkbenchWindowShell");
        }
        if (this.activeSite != null) {
            info.addVariableNameAccess("activeSite");
        }
    }

    protected final int computeHashCode() {
        int hashCode = HASH_INITIAL * 89 + LegacyHandlerSubmissionExpression.hashCode((Object)this.activePartId);
        hashCode = hashCode * 89 + LegacyHandlerSubmissionExpression.hashCode((Object)this.activeShell);
        hashCode = hashCode * 89 + LegacyHandlerSubmissionExpression.hashCode((Object)this.activeSite);
        return hashCode;
    }

    public final boolean equals(Object object) {
        if (object instanceof LegacyHandlerSubmissionExpression) {
            LegacyHandlerSubmissionExpression that = (LegacyHandlerSubmissionExpression)((Object)object);
            return LegacyHandlerSubmissionExpression.equals((Object)this.activePartId, (Object)that.activePartId) && LegacyHandlerSubmissionExpression.equals((Object)this.activeShell, (Object)that.activeShell) && LegacyHandlerSubmissionExpression.equals((Object)this.activeSite, (Object)that.activeSite);
        }
        return false;
    }

    public final EvaluationResult evaluate(IEvaluationContext context) {
        Object value;
        if (this.activePartId != null && !this.activePartId.equals(value = context.getVariable("activePartId"))) {
            return EvaluationResult.FALSE;
        }
        if (this.activeShell != null && !this.activeShell.equals(value = context.getVariable("activeShell")) && !this.activeShell.equals(value = context.getVariable("activeWorkbenchWindowShell"))) {
            return EvaluationResult.FALSE;
        }
        if (this.activeSite != null && !this.activeSite.equals(value = context.getVariable("activeSite"))) {
            return EvaluationResult.FALSE;
        }
        return EvaluationResult.TRUE;
    }

    public final String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("LegacyHandlerSubmission(");
        buffer.append(this.activeShell);
        buffer.append(',');
        buffer.append(this.activePartId);
        buffer.append(',');
        buffer.append(this.activeSite);
        buffer.append(')');
        return buffer.toString();
    }
}

