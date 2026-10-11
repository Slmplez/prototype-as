/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.Iterator;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.ExpressionFactory;
import org.eclipse.equinox.internal.p2.metadata.expression.Function;
import org.eclipse.equinox.internal.p2.metadata.expression.Literal;
import org.eclipse.equinox.internal.p2.metadata.expression.Variable;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.query.IMatchQuery;
import org.eclipse.equinox.p2.query.IQuery;

public final class WrappedIQuery
extends Function {
    public WrappedIQuery(Expression[] operands) {
        super(WrappedIQuery.assertLength(operands, 1, 2, "iquery"));
    }

    public Object evaluate(IEvaluationContext context) {
        Object query = this.operands[0].evaluate(context);
        if (query instanceof IMatchQuery) {
            Object value = null;
            value = this.operands.length > 1 ? this.operands[1].evaluate(context) : ExpressionFactory.THIS.evaluate(context);
            return ((IMatchQuery)query).isMatch(value);
        }
        if (!(query instanceof IQuery)) {
            throw new IllegalArgumentException("iquery first argument must be an IQuery instance");
        }
        Iterator<?> iterator = null;
        iterator = this.operands.length > 1 ? this.operands[1].evaluateAsIterator(context) : ExpressionFactory.EVERYTHING.evaluateAsIterator(context);
        return ((IQuery)query).perform(iterator);
    }

    public String getOperator() {
        return "iquery";
    }

    public boolean isReferenceTo(Variable variable) {
        Expression firstOp = this.operands[0];
        if (firstOp instanceof Literal) {
            Object query = ((Literal)firstOp).value;
            return query instanceof IMatchQuery ? variable == ExpressionFactory.THIS : variable == ExpressionFactory.EVERYTHING;
        }
        return false;
    }

    int countAccessToEverything() {
        return this.isReferenceTo(ExpressionFactory.EVERYTHING) ? 1 : 0;
    }
}

