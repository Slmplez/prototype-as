/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import org.eclipse.equinox.internal.p2.metadata.expression.EvaluationContext;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.Unary;
import org.eclipse.equinox.internal.p2.metadata.expression.Variable;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.expression.IExpressionVisitor;

public class LambdaExpression
extends Unary {
    protected final Variable each;

    protected LambdaExpression(Variable each, Expression body) {
        super(body);
        this.each = each;
    }

    public boolean accept(IExpressionVisitor visitor) {
        return super.accept(visitor) && this.each.accept(visitor);
    }

    public int compareTo(Expression e) {
        int cmp = super.compareTo(e);
        if (cmp == 0) {
            cmp = this.each.compareTo(((LambdaExpression)e).each);
        }
        return cmp;
    }

    public boolean equals(Object o) {
        return super.equals(o) && this.each.equals(((LambdaExpression)o).each);
    }

    public int hashCode() {
        int result = 31 + this.operand.hashCode();
        return 31 * result + this.each.hashCode();
    }

    public int getExpressionType() {
        return 8;
    }

    public void toString(StringBuffer bld, Variable rootVariable) {
        this.each.toString(bld, rootVariable);
        bld.append(" | ");
        LambdaExpression.appendOperand(bld, rootVariable, this.operand, 12);
    }

    public Variable getItemVariable() {
        return this.each;
    }

    public String getOperator() {
        return "|";
    }

    public int getPriority() {
        return 11;
    }

    public IEvaluationContext prolog(IEvaluationContext context) {
        return EvaluationContext.create(context, (IExpression)this.each);
    }

    int countAccessToEverything() {
        return 2 * super.countAccessToEverything();
    }
}

