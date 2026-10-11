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
import org.eclipse.ui.IWorkbenchPart;

public final class ActivePartExpression
extends Expression {
    private static final int HASH_INITIAL;
    private final IWorkbenchPart activePart;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.expressions.ActivePartExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public ActivePartExpression(IWorkbenchPart activePart) {
        if (activePart == null) {
            throw new NullPointerException("The active part must not be null");
        }
        this.activePart = activePart;
    }

    public final void collectExpressionInfo(ExpressionInfo info) {
        info.addVariableNameAccess("activePart");
    }

    protected final int computeHashCode() {
        return HASH_INITIAL * 89 + ActivePartExpression.hashCode((Object)this.activePart);
    }

    public final boolean equals(Object object) {
        if (object instanceof ActivePartExpression) {
            ActivePartExpression that = (ActivePartExpression)((Object)object);
            return ActivePartExpression.equals((Object)this.activePart, (Object)that.activePart);
        }
        return false;
    }

    public final EvaluationResult evaluate(IEvaluationContext context) {
        Object variable = context.getVariable("activePart");
        if (ActivePartExpression.equals((Object)this.activePart, (Object)variable)) {
            return EvaluationResult.TRUE;
        }
        return EvaluationResult.FALSE;
    }

    public final String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("ActivePartExpression(");
        buffer.append(this.activePart);
        buffer.append(')');
        return buffer.toString();
    }
}

