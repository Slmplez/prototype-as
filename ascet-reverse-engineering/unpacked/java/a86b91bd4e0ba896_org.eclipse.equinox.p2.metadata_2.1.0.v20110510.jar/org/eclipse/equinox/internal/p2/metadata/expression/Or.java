/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.NAry;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;

final class Or
extends NAry {
    public Or(Expression[] operands) {
        super(Or.assertLength(operands, 2, "||"));
    }

    public Object evaluate(IEvaluationContext context) {
        int idx = 0;
        while (idx < this.operands.length) {
            if (this.operands[idx].evaluate(context) == Boolean.TRUE) {
                return Boolean.TRUE;
            }
            ++idx;
        }
        return Boolean.FALSE;
    }

    public int getExpressionType() {
        return 16;
    }

    public String getOperator() {
        return "||";
    }

    public int getPriority() {
        return 8;
    }

    public void toLDAPString(StringBuffer buf) {
        buf.append("(|");
        int idx = 0;
        while (idx < this.operands.length) {
            this.operands[idx].toLDAPString(buf);
            ++idx;
        }
        buf.append(')');
    }
}

