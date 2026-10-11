/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.Iterator;
import java.util.Set;
import org.eclipse.equinox.internal.p2.metadata.expression.Binary;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.RepeatableIterator;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
final class Union
extends Binary {
    Union(Expression operand, Expression param) {
        super(operand, param);
    }

    @Override
    public Object evaluate(IEvaluationContext context) {
        return this.evaluateAsIterator(context);
    }

    @Override
    public Iterator<?> evaluateAsIterator(IEvaluationContext context) {
        Set<?> resultSet = Union.asSet(this.lhs.evaluate(context), true);
        Iterator<?> itor = this.rhs.evaluateAsIterator(context);
        while (itor.hasNext()) {
            resultSet.add(itor.next());
        }
        return RepeatableIterator.create(resultSet);
    }

    @Override
    public int getExpressionType() {
        return 33;
    }

    @Override
    public String getOperator() {
        return "union";
    }

    @Override
    public int getPriority() {
        return 4;
    }
}

