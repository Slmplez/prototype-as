/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import org.eclipse.equinox.internal.p2.metadata.expression.Binary;
import org.eclipse.equinox.internal.p2.metadata.expression.CoercingComparator;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;

final class Compare
extends Binary {
    final boolean compareLess;
    final boolean equalOK;

    static IllegalArgumentException uncomparable(Object lval, Object rval) {
        return new IllegalArgumentException("Cannot compare a " + lval.getClass().getName() + " to a " + rval.getClass().getName());
    }

    Compare(Expression lhs, Expression rhs, boolean compareLess, boolean equalOK) {
        super(lhs, rhs);
        this.compareLess = compareLess;
        this.equalOK = equalOK;
    }

    public Object evaluate(IEvaluationContext context) {
        int cmpResult = CoercingComparator.coerceAndCompare(this.lhs.evaluate(context), this.rhs.evaluate(context));
        return cmpResult == 0 ? this.equalOK : (cmpResult < 0 ? this.compareLess : !this.compareLess);
    }

    public int getExpressionType() {
        return this.compareLess ? (this.equalOK ? 10 : 9) : (this.equalOK ? 7 : 6);
    }

    public String getOperator() {
        return this.compareLess ? (this.equalOK ? "<=" : "<") : (this.equalOK ? ">=" : ">");
    }

    public void toLDAPString(StringBuffer buf) {
        if (!this.equalOK) {
            buf.append("(!");
        }
        buf.append('(');
        this.appendLDAPAttribute(buf);
        if (this.equalOK) {
            buf.append(this.compareLess ? "<=" : ">=");
        } else {
            buf.append(this.compareLess ? ">=" : "<=");
        }
        this.appendLDAPValue(buf);
        buf.append(')');
        if (!this.equalOK) {
            buf.append(')');
        }
    }
}

