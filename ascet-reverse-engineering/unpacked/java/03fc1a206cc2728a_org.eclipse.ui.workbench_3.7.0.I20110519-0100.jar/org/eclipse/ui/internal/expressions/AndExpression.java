/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.EvaluationResult
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.ui.internal.expressions;

import java.util.Iterator;
import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.ui.internal.expressions.CompositeExpression;

public final class AndExpression
extends CompositeExpression {
    private static final int HASH_INITIAL;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.expressions.AndExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    protected final int computeHashCode() {
        return HASH_INITIAL * 89 + AndExpression.hashCode((Object)this.fExpressions);
    }

    public final boolean equals(Object object) {
        if (object instanceof AndExpression) {
            AndExpression that = (AndExpression)((Object)object);
            return AndExpression.equals((Object)this.fExpressions, (Object)that.fExpressions);
        }
        return false;
    }

    public final EvaluationResult evaluate(IEvaluationContext context) throws CoreException {
        return this.evaluateAnd(context);
    }

    public final String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("AndExpression(");
        if (this.fExpressions != null) {
            Iterator itr = this.fExpressions.iterator();
            while (itr.hasNext()) {
                Expression expression = (Expression)itr.next();
                buffer.append(expression.toString());
                if (!itr.hasNext()) continue;
                buffer.append(',');
            }
        }
        buffer.append(')');
        return buffer.toString();
    }
}

