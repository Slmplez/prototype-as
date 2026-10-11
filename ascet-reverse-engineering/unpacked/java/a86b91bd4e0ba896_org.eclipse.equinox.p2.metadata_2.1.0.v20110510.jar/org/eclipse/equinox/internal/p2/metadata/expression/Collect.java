/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.Iterator;
import org.eclipse.equinox.internal.p2.metadata.expression.CollectionFilter;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.LambdaExpression;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.expression.IExpression;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
final class Collect
extends CollectionFilter {
    Collect(Expression collection, LambdaExpression lambda) {
        super(collection, lambda);
    }

    @Override
    public Object evaluate(IEvaluationContext context, Iterator<?> itor) {
        return this.evaluateAsIterator(context, itor);
    }

    @Override
    public Iterator<?> evaluateAsIterator(IEvaluationContext context, Iterator<?> itor) {
        return new CollectIterator(context, itor);
    }

    @Override
    public int getExpressionType() {
        return 22;
    }

    @Override
    public String getOperator() {
        return "collect";
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    final class CollectIterator
    implements Iterator<Object> {
        private final IEvaluationContext context;
        private final IExpression variable;
        private final Iterator<?> innerIterator;

        public CollectIterator(IEvaluationContext context, Iterator<?> iterator) {
            this.context = context;
            this.variable = Collect.this.lambda.getItemVariable();
            this.innerIterator = iterator;
        }

        @Override
        public boolean hasNext() {
            return this.innerIterator.hasNext();
        }

        @Override
        public Object next() {
            this.context.setValue(this.variable, this.innerIterator.next());
            return Collect.this.lambda.evaluate(this.context);
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }
}

