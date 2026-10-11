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
final class Condition
extends Binary {
    final Expression ifFalse;

    Condition(Expression test, Expression ifTrue, Expression ifFalse) {
        super(test, ifTrue);
        this.ifFalse = ifFalse;
    }

    @Override
    public boolean equals(Object o) {
        return super.equals(o) && this.ifFalse.equals(((Condition)o).ifFalse);
    }

    @Override
    public Object evaluate(IEvaluationContext context) {
        return this.lhs.evaluate(context) == Boolean.TRUE ? this.rhs.evaluate(context) : this.ifFalse.evaluate(context);
    }

    @Override
    public Iterator<?> evaluateAsIterator(IEvaluationContext context) {
        return this.lhs.evaluate(context) == Boolean.TRUE ? this.rhs.evaluateAsIterator(context) : this.ifFalse.evaluateAsIterator(context);
    }

    @Override
    public int hashCode() {
        return super.hashCode() * 31 + this.ifFalse.hashCode();
    }

    @Override
    public void toString(StringBuffer bld, Variable rootVariable) {
        super.toString(bld, rootVariable);
        bld.append(' ');
        bld.append(":");
        bld.append(' ');
        Condition.appendOperand(bld, rootVariable, this.ifFalse, this.getPriority());
    }

    @Override
    public int getExpressionType() {
        return 23;
    }

    @Override
    public String getOperator() {
        return "?";
    }

    @Override
    public int getPriority() {
        return 9;
    }
}

