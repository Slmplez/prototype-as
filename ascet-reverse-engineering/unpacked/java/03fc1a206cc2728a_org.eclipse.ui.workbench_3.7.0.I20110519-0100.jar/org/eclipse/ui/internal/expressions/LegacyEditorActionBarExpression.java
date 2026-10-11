/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.EvaluationResult
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.ExpressionInfo
 *  org.eclipse.core.expressions.IEvaluationContext
 */
package org.eclipse.ui.internal.expressions;

import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionInfo;
import org.eclipse.core.expressions.IEvaluationContext;

public class LegacyEditorActionBarExpression
extends Expression {
    private static final int HASH_INITIAL;
    private final String activeEditorId;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.expressions.LegacyEditorActionBarExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public LegacyEditorActionBarExpression(String editorId) {
        if (editorId == null) {
            throw new IllegalArgumentException("The targetId for an editor contribution must not be null");
        }
        this.activeEditorId = editorId;
    }

    public final void collectExpressionInfo(ExpressionInfo info) {
        info.addVariableNameAccess("activePartId");
        info.addVariableNameAccess("LEGACY");
    }

    protected final int computeHashCode() {
        int hashCode = HASH_INITIAL * 89 + LegacyEditorActionBarExpression.hashCode((Object)this.activeEditorId);
        return hashCode;
    }

    public final boolean equals(Object object) {
        if (object instanceof LegacyEditorActionBarExpression) {
            LegacyEditorActionBarExpression that = (LegacyEditorActionBarExpression)((Object)object);
            return this.activeEditorId.equals(that.activeEditorId);
        }
        return false;
    }

    public final EvaluationResult evaluate(IEvaluationContext context) {
        Object variable = context.getVariable("activePartId");
        if (LegacyEditorActionBarExpression.equals((Object)this.activeEditorId, (Object)variable)) {
            return EvaluationResult.TRUE;
        }
        return EvaluationResult.FALSE;
    }

    public final String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("LegacyEditorActionBarExpression(");
        buffer.append(this.activeEditorId);
        buffer.append(')');
        return buffer.toString();
    }
}

