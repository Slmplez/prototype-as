/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.Variable;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.expression.IExpressionVisitor;

public abstract class Unary
extends Expression {
    public final Expression operand;

    protected Unary(Expression operand) {
        this.operand = operand;
    }

    public boolean accept(IExpressionVisitor visitor) {
        return super.accept(visitor) && this.operand.accept(visitor);
    }

    public int compareTo(Expression e) {
        int cmp = super.compareTo(e);
        if (cmp == 0) {
            cmp = this.operand.compareTo(((Unary)e).operand);
        }
        return cmp;
    }

    public boolean equals(Object o) {
        return super.equals(o) && this.operand.equals(((Unary)o).operand);
    }

    public Object evaluate(IEvaluationContext context) {
        return this.operand.evaluate(context);
    }

    public int hashCode() {
        return this.operand.hashCode() * 3 + this.operand.getExpressionType();
    }

    public Expression getOperand() {
        return this.operand;
    }

    public void toString(StringBuffer bld, Variable rootVariable) {
        bld.append(this.getOperator());
        Unary.appendOperand(bld, rootVariable, this.operand, this.getPriority());
    }

    int countAccessToEverything() {
        return this.operand.countAccessToEverything();
    }
}

