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

import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionInfo;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.ui.IWorkbenchWindow;

public class WorkbenchWindowExpression
extends Expression {
    private static final int HASH_INITIAL;
    private final IWorkbenchWindow window;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.expressions.WorkbenchWindowExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public WorkbenchWindowExpression(IWorkbenchWindow window) {
        this.window = window;
    }

    public void collectExpressionInfo(ExpressionInfo info) {
        if (this.window != null) {
            info.addVariableNameAccess("activeWorkbenchWindow");
        }
    }

    protected int computeHashCode() {
        return HASH_INITIAL * 89 + WorkbenchWindowExpression.hashCode((Object)this.window);
    }

    public boolean equals(Object object) {
        if (object instanceof WorkbenchWindowExpression) {
            WorkbenchWindowExpression that = (WorkbenchWindowExpression)((Object)object);
            return WorkbenchWindowExpression.equals((Object)this.window, (Object)that.window);
        }
        return false;
    }

    public EvaluationResult evaluate(IEvaluationContext context) throws CoreException {
        Object value;
        if (this.window != null && this.window.equals(value = context.getVariable("activeWorkbenchWindow"))) {
            return EvaluationResult.TRUE;
        }
        return EvaluationResult.FALSE;
    }

    protected final IWorkbenchWindow getWindow() {
        return this.window;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("WorkbenchWindowExpression(");
        buffer.append(this.window);
        buffer.append(')');
        return buffer.toString();
    }
}

