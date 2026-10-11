/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.internal.expressions;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionInfo;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.runtime.CoreException;

public abstract class CompositeExpression
extends Expression {
    private static final Expression[] EMPTY_ARRAY = new Expression[0];
    private static final int HASH_INITIAL;
    protected List fExpressions;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.internal.expressions.CompositeExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public void add(Expression expression) {
        if (this.fExpressions == null) {
            this.fExpressions = new ArrayList(2);
        }
        this.fExpressions.add(expression);
    }

    public Expression[] getChildren() {
        if (this.fExpressions == null) {
            return EMPTY_ARRAY;
        }
        return this.fExpressions.toArray(new Expression[this.fExpressions.size()]);
    }

    protected EvaluationResult evaluateAnd(IEvaluationContext scope) throws CoreException {
        if (this.fExpressions == null) {
            return EvaluationResult.TRUE;
        }
        EvaluationResult result = EvaluationResult.TRUE;
        Iterator iter = this.fExpressions.iterator();
        while (iter.hasNext()) {
            Expression expression = (Expression)iter.next();
            if ((result = result.and(expression.evaluate(scope))) != EvaluationResult.FALSE) continue;
            return result;
        }
        return result;
    }

    protected EvaluationResult evaluateOr(IEvaluationContext scope) throws CoreException {
        if (this.fExpressions == null) {
            return EvaluationResult.TRUE;
        }
        EvaluationResult result = EvaluationResult.FALSE;
        Iterator iter = this.fExpressions.iterator();
        while (iter.hasNext()) {
            Expression expression = (Expression)iter.next();
            if ((result = result.or(expression.evaluate(scope))) != EvaluationResult.TRUE) continue;
            return result;
        }
        return result;
    }

    public void collectExpressionInfo(ExpressionInfo info) {
        if (this.fExpressions == null) {
            return;
        }
        Iterator iter = this.fExpressions.iterator();
        while (iter.hasNext()) {
            Expression expression = (Expression)iter.next();
            expression.collectExpressionInfo(info);
        }
    }

    protected int computeHashCode() {
        return HASH_INITIAL * 89 + CompositeExpression.hashCode(this.fExpressions);
    }
}

