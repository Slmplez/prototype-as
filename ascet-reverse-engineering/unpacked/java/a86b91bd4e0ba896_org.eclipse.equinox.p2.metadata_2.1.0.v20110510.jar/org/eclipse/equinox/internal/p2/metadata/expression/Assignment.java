/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.Iterator;
import org.eclipse.equinox.internal.p2.metadata.expression.Binary;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.Variable;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
class Assignment
extends Binary {
    Assignment(Variable variable, Expression expression) {
        super(variable, expression);
    }

    @Override
    public final Object evaluate(IEvaluationContext context) {
        Object value = this.rhs.evaluate(context);
        context.setValue(this.lhs, value);
        return value;
    }

    @Override
    public int getExpressionType() {
        return 21;
    }

    @Override
    public int getPriority() {
        return 10;
    }

    @Override
    public String getOperator() {
        return "=";
    }

    @Override
    public Iterator<?> evaluateAsIterator(IEvaluationContext context) {
        Iterator<?> value = this.rhs.evaluateAsIterator(context);
        context.setValue(this.lhs, value);
        return value;
    }
}

