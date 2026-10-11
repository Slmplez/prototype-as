/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.internal.expressions;

import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionInfo;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;

public class NotExpression
extends Expression {
    private static final int HASH_INITIAL;
    private Expression fExpression;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.internal.expressions.NotExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public NotExpression(Expression expression) {
        Assert.isNotNull((Object)expression);
        this.fExpression = expression;
    }

    public EvaluationResult evaluate(IEvaluationContext context) throws CoreException {
        return this.fExpression.evaluate(context).not();
    }

    public void collectExpressionInfo(ExpressionInfo info) {
        this.fExpression.collectExpressionInfo(info);
    }

    public boolean equals(Object object) {
        if (!(object instanceof NotExpression)) {
            return false;
        }
        NotExpression that = (NotExpression)object;
        return this.fExpression.equals(that.fExpression);
    }

    protected int computeHashCode() {
        return HASH_INITIAL * 89 + this.fExpression.hashCode();
    }
}

