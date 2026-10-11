/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.Variable;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;

public class Parameter
extends Expression {
    final int position;

    Parameter(int position) {
        this.position = position;
    }

    public int compareTo(Expression e) {
        int cmp = super.compareTo(e);
        if (cmp == 0) {
            cmp = this.position - ((Parameter)e).position;
        }
        return cmp;
    }

    public boolean equals(Object o) {
        if (o == this) {
            return true;
        }
        if (o == null) {
            return false;
        }
        return this.getClass() == o.getClass() && this.position == ((Parameter)o).position;
    }

    public Object evaluate(IEvaluationContext context) {
        return context.getParameter(this.position);
    }

    public int getExpressionType() {
        return 17;
    }

    public String getOperator() {
        return "$";
    }

    public int getPriority() {
        return 1;
    }

    public int hashCode() {
        return 31 * (1 + this.position);
    }

    public void toString(StringBuffer bld, Variable rootVariable) {
        bld.append('$');
        bld.append(this.position);
    }
}

