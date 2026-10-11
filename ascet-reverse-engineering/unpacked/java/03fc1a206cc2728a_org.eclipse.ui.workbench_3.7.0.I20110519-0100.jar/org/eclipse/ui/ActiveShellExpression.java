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

public final class ActiveShellExpression
extends Expression {
    private static final int HASH_INITIAL;
    public static final int SOURCES = 17408;
    private final Shell activeShell;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.ActiveShellExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public ActiveShellExpression(Shell activeShell) {
        this.activeShell = activeShell;
    }

    public final void collectExpressionInfo(ExpressionInfo info) {
        info.addVariableNameAccess("activeShell");
        info.addVariableNameAccess("activeWorkbenchWindow");
    }

    protected final int computeHashCode() {
        return HASH_INITIAL * 89 + ActiveShellExpression.hashCode((Object)this.activeShell);
    }

    public final boolean equals(Object object) {
        if (object instanceof ActiveShellExpression) {
            ActiveShellExpression that = (ActiveShellExpression)((Object)object);
            return ActiveShellExpression.equals((Object)this.activeShell, (Object)that.activeShell);
        }
        return false;
    }

    public final EvaluationResult evaluate(IEvaluationContext context) {
        Object value;
        if (this.activeShell != null && !this.activeShell.equals(value = context.getVariable("activeShell")) && !this.activeShell.equals(value = context.getVariable("activeWorkbenchWindowShell"))) {
            return EvaluationResult.FALSE;
        }
        return EvaluationResult.TRUE;
    }

    public final String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("ActiveShellExpression(");
        buffer.append(this.activeShell);
        buffer.append(')');
        return buffer.toString();
    }
}

