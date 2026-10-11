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
final class All
extends CollectionFilter {
    All(Expression collection, LambdaExpression lambda) {
        super(collection, lambda);
    }

    @Override
    protected Object evaluate(IEvaluationContext context, Iterator<?> itor) {
        Variable variable = this.lambda.getItemVariable();
        while (itor.hasNext()) {
            variable.setValue(context, itor.next());
            if (this.lambda.evaluate(context) == Boolean.TRUE) continue;
            return Boolean.FALSE;
        }
        return Boolean.TRUE;
    }

    @Override
    public int getExpressionType() {
        return 1;
    }

    @Override
    public String getOperator() {
        return "all";
    }
}

