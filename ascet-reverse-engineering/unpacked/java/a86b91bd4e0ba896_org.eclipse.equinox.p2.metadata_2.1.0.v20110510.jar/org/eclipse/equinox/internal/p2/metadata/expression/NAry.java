/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.Variable;
import org.eclipse.equinox.p2.metadata.expression.IExpressionVisitor;

public abstract class NAry
extends Expression {
    public final Expression[] operands;

    protected NAry(Expression[] operands) {
        this.operands = operands;
    }

    public boolean accept(IExpressionVisitor visitor) {
        if (super.accept(visitor)) {
            int idx = 0;
            while (idx < this.operands.length) {
                if (!this.operands[idx].accept(visitor)) {
                    return false;
                }
                ++idx;
            }
        }
        return true;
    }

    public int compareTo(Expression e) {
        int cmp = super.compareTo(e);
        if (cmp == 0) {
            cmp = NAry.compare(this.operands, ((NAry)e).operands);
        }
        return cmp;
    }

    public boolean equals(Object o) {
        return super.equals(o) && NAry.equals(this.operands, ((NAry)o).operands);
    }

    public abstract String getOperator();

    public int hashCode() {
        return NAry.hashCode(this.operands);
    }

    public void toString(StringBuffer bld, Variable rootVariable) {
        NAry.appendOperand(bld, rootVariable, this.operands[0], this.getPriority());
        int idx = 1;
        while (idx < this.operands.length) {
            bld.append(' ');
            bld.append(this.getOperator());
            bld.append(' ');
            NAry.appendOperand(bld, rootVariable, this.operands[idx], this.getPriority());
            ++idx;
        }
    }

    int countAccessToEverything() {
        int cnt = 0;
        int idx = 0;
        while (idx < this.operands.length) {
            cnt += this.operands[idx].countAccessToEverything();
            ++idx;
        }
        return cnt;
    }
}

