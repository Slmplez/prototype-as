/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import org.eclipse.equinox.internal.p2.metadata.expression.Binary;
import org.eclipse.equinox.internal.p2.metadata.expression.CoercingComparator;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;

final class Equals
extends Binary {
    final boolean negate;

    Equals(Expression lhs, Expression rhs, boolean negate) {
        super(lhs, rhs);
        this.negate = negate;
    }

    public Object evaluate(IEvaluationContext context) {
        boolean result = CoercingComparator.coerceAndEquals(this.lhs.evaluate(context), this.rhs.evaluate(context));
        if (this.negate) {
            result = !result;
        }
        return result;
    }

    public int getExpressionType() {
        return this.negate ? 15 : 4;
    }

    public String getOperator() {
        return this.negate ? "!=" : "==";
    }

    public void toLDAPString(StringBuffer buf) {
        if (this.negate) {
            buf.append("(!");
        }
        buf.append('(');
        this.appendLDAPAttribute(buf);
        buf.append('=');
        this.appendLDAPValue(buf);
        buf.append(')');
        if (this.negate) {
            buf.append(')');
        }
    }
}

