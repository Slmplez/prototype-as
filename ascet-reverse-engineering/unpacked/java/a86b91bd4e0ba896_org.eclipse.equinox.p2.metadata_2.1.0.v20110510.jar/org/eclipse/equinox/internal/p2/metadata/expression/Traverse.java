/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.equinox.internal.p2.metadata.expression.CollectionFilter;
import org.eclipse.equinox.internal.p2.metadata.expression.EvaluationContext;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.LambdaExpression;
import org.eclipse.equinox.internal.p2.metadata.expression.Variable;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.expression.IExpression;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
final class Traverse
extends CollectionFilter {
    Traverse(Expression collection, LambdaExpression lambda) {
        super(collection, lambda);
    }

    @Override
    public Object evaluate(IEvaluationContext context, Iterator<?> itor) {
        return this.evaluateAsIterator(context, itor);
    }

    @Override
    public Iterator<?> evaluateAsIterator(IEvaluationContext context, Iterator<?> iterator) {
        HashSet<Object> collector = new HashSet<Object>();
        while (iterator.hasNext()) {
            this.traverse(collector, iterator.next(), context);
        }
        return collector.iterator();
    }

    @Override
    public int getExpressionType() {
        return 32;
    }

    @Override
    public String getOperator() {
        return "traverse";
    }

    void traverse(Set<Object> collector, Object parent, IEvaluationContext context) {
        if (collector.add(parent)) {
            Variable variable = this.lambda.getItemVariable();
            context = EvaluationContext.create(context, (IExpression)variable);
            variable.setValue(context, parent);
            Iterator<?> subIterator = this.lambda.evaluateAsIterator(context);
            while (subIterator.hasNext()) {
                this.traverse(collector, subIterator.next(), context);
            }
        }
    }
}

