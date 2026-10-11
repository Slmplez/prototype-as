/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.Iterator;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.ExpressionFactory;
import org.eclipse.equinox.internal.p2.metadata.expression.IRepeatableIterator;
import org.eclipse.equinox.internal.p2.metadata.expression.RepeatableIterator;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Variable
extends Expression {
    private final String name;

    public Variable(String name) {
        this.name = name;
    }

    @Override
    public int compareTo(Expression e) {
        int cmp = super.compareTo(e);
        if (cmp == 0) {
            cmp = this.name.compareTo(((Variable)e).name);
        }
        return cmp;
    }

    @Override
    public boolean equals(Object o) {
        return super.equals(o) && this.name.equals(((Variable)o).name);
    }

    @Override
    public final Object evaluate(IEvaluationContext context) {
        return context.getValue(this);
    }

    @Override
    public Iterator<?> evaluateAsIterator(IEvaluationContext context) {
        Object value = context.getValue(this);
        if (value instanceof IRepeatableIterator) {
            return ((IRepeatableIterator)value).getCopy();
        }
        IRepeatableIterator itor = RepeatableIterator.create(value);
        this.setValue(context, itor);
        return itor;
    }

    @Override
    public int getExpressionType() {
        return 18;
    }

    public String getName() {
        return this.name;
    }

    @Override
    public String getOperator() {
        return "<variable>";
    }

    @Override
    public int getPriority() {
        return 1;
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    public final void setValue(IEvaluationContext context, Object value) {
        context.setValue(this, value);
    }

    @Override
    public void toString(StringBuffer bld, Variable rootVariable) {
        bld.append(this.name);
    }

    @Override
    int countAccessToEverything() {
        return this == ExpressionFactory.EVERYTHING ? 1 : 0;
    }
}

