/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.Unary;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;

final class Not
extends Unary {
    Not(Expression operand) {
        super(operand);
    }

    public Object evaluate(IEvaluationContext context) {
        return this.operand.evaluate(context) != Boolean.TRUE;
    }

    public int getExpressionType() {
        return 14;
    }

    public String getOperator() {
        return "!";
    }

    public int getPriority() {
        return 5;
    }

    public int hashCode() {
        return 3 * this.operand.hashCode();
    }

    public void toLDAPString(StringBuffer buf) {
        buf.append("(!");
        this.operand.toLDAPString(buf);
        buf.append(')');
    }
}

