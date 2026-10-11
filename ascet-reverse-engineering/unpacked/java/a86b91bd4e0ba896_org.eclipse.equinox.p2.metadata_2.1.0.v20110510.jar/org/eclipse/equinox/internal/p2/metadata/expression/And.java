/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.NAry;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;

final class And
extends NAry {
    And(Expression[] operands) {
        super(And.assertLength(operands, 2, "&&"));
    }

    public Object evaluate(IEvaluationContext context) {
        int idx = 0;
        while (idx < this.operands.length) {
            if (this.operands[idx].evaluate(context) != Boolean.TRUE) {
                return Boolean.FALSE;
            }
            ++idx;
        }
        return Boolean.TRUE;
    }

    public int getExpressionType() {
        return 2;
    }

    public String getOperator() {
        return "&&";
    }

    public int getPriority() {
        return 7;
    }

    public void toLDAPString(StringBuffer buf) {
        buf.append("(&");
        int idx = 0;
        while (idx < this.operands.length) {
            this.operands[idx].toLDAPString(buf);
            ++idx;
        }
        buf.append(')');
    }
}

