/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.Iterator;
import org.eclipse.equinox.internal.p2.metadata.expression.CollectionFilter;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.LambdaExpression;
import org.eclipse.equinox.internal.p2.metadata.expression.MatchIteratorFilter;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
final class Select
extends CollectionFilter {
    Select(Expression collection, LambdaExpression lambda) {
        super(collection, lambda);
    }

    @Override
    protected Object evaluate(IEvaluationContext context, Iterator<?> itor) {
        return this.evaluateAsIterator(context, itor);
    }

    @Override
    protected Iterator<?> evaluateAsIterator(final IEvaluationContext context, Iterator<?> itor) {
        return new MatchIteratorFilter<Object>(itor){

            @Override
            protected boolean isMatch(Object val) {
                Select.this.lambda.getItemVariable().setValue(context, val);
                return Select.this.lambda.evaluate(context) == Boolean.TRUE;
            }
        };
    }

    @Override
    public int getExpressionType() {
        return 31;
    }

    @Override
    public String getOperator() {
        return "select";
    }

    boolean isCollection() {
        return true;
    }
}

