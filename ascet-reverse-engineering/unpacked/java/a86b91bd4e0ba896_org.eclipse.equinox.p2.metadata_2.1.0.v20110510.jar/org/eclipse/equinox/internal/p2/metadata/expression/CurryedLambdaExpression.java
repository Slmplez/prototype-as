/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import org.eclipse.equinox.internal.p2.metadata.expression.Assignment;
import org.eclipse.equinox.internal.p2.metadata.expression.EvaluationContext;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.LambdaExpression;
import org.eclipse.equinox.internal.p2.metadata.expression.Variable;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.expression.IExpressionVisitor;

final class CurryedLambdaExpression
extends LambdaExpression {
    private static final Assignment[] emptyAssignmentArray = new Assignment[0];
    private final Assignment[] assignments;

    CurryedLambdaExpression(Variable each, Assignment[] assignments, Expression body) {
        super(each, body);
        if (assignments == null) {
            assignments = emptyAssignmentArray;
        }
        this.assignments = assignments;
    }

    public boolean accept(IExpressionVisitor visitor) {
        if (super.accept(visitor) && this.each.accept(visitor)) {
            int idx = 0;
            while (idx < this.assignments.length) {
                if (!this.assignments[idx].accept(visitor)) {
                    return false;
                }
                ++idx;
            }
            return true;
        }
        return false;
    }

    public int compareTo(Expression e) {
        int cmp = super.compareTo(e);
        if (cmp == 0) {
            cmp = CurryedLambdaExpression.compare(this.assignments, ((CurryedLambdaExpression)e).assignments);
        }
        return cmp;
    }

    public boolean equals(Object o) {
        return super.equals(o) && CurryedLambdaExpression.equals(this.assignments, ((CurryedLambdaExpression)o).assignments);
    }

    public int hashCode() {
        return 31 * super.hashCode() + CurryedLambdaExpression.hashCode(this.assignments);
    }

    public void toString(StringBuffer bld, Variable rootVariable) {
        int top = this.assignments.length;
        if (top > 0) {
            int idx = 0;
            while (idx < top) {
                CurryedLambdaExpression.appendOperand(bld, rootVariable, this.assignments[idx].rhs, 12);
                bld.append(", ");
                ++idx;
            }
            bld.append("_");
            bld.append(", {");
            idx = 0;
            while (idx < top) {
                CurryedLambdaExpression.appendOperand(bld, rootVariable, this.assignments[idx].lhs, 12);
                bld.append(", ");
                ++idx;
            }
        }
        super.toString(bld, rootVariable);
        if (top > 0) {
            bld.append('}');
        }
    }

    public IEvaluationContext prolog(IEvaluationContext context) {
        int top = this.assignments.length + 1;
        IExpression[] vars = new Variable[top];
        vars[0] = this.getItemVariable();
        int idx = 1;
        while (idx < top) {
            vars[idx] = (Variable)this.assignments[idx - 1].lhs;
            ++idx;
        }
        IEvaluationContext lambdaContext = EvaluationContext.create(context, vars);
        idx = 1;
        while (idx < top) {
            lambdaContext.setValue(vars[idx], this.assignments[idx - 1].rhs.evaluate(context));
            ++idx;
        }
        return lambdaContext;
    }

    int countAccessToEverything() {
        int cnt = 0;
        int idx = 0;
        while (idx < this.assignments.length) {
            cnt += this.assignments[idx].countAccessToEverything();
            ++idx;
        }
        return cnt += super.countAccessToEverything();
    }
}

