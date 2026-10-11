/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.equinox.internal.p2.metadata.expression.Binary;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.RepeatableIterator;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
final class Intersect
extends Binary {
    Intersect(Expression operand, Expression param) {
        super(operand, param);
    }

    @Override
    public Object evaluate(IEvaluationContext context) {
        return this.evaluateAsIterator(context);
    }

    @Override
    public Iterator<?> evaluateAsIterator(IEvaluationContext context) {
        Set<?> resultSet = Intersect.asSet(this.lhs.evaluate(context), false);
        Iterator<?> itor = this.rhs.evaluateAsIterator(context);
        HashSet retained = new HashSet();
        while (itor.hasNext()) {
            Object value = itor.next();
            if (!resultSet.contains(value)) continue;
            retained.add(value);
        }
        return RepeatableIterator.create(retained);
    }

    @Override
    public int getExpressionType() {
        return 27;
    }

    @Override
    public String getOperator() {
        return "intersect";
    }

    @Override
    public int getPriority() {
        return 4;
    }
}

