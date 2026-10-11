/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.Iterator;
import org.eclipse.equinox.internal.p2.metadata.expression.CollectionFilter;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.LambdaExpression;
import org.eclipse.equinox.internal.p2.metadata.expression.Variable;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
final class First
extends CollectionFilter {
    First(Expression collection, LambdaExpression lambda) {
        super(collection, lambda);
    }

    @Override
    protected Object evaluate(IEvaluationContext context, Iterator<?> itor) {
        Variable variable = this.lambda.getItemVariable();
        while (itor.hasNext()) {
            Object each = itor.next();
            variable.setValue(context, each);
            if (this.lambda.evaluate(context) != Boolean.TRUE) continue;
            return each;
        }
        return null;
    }

    @Override
    public int getExpressionType() {
        return 24;
    }

    @Override
    public String getOperator() {
        return "first";
    }
}

