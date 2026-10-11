/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.Literal;
import org.eclipse.equinox.internal.p2.metadata.expression.Member;
import org.eclipse.equinox.internal.p2.metadata.expression.Variable;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.expression.IExpressionVisitor;

public abstract class Binary
extends Expression {
    public final Expression lhs;
    public final Expression rhs;

    protected Binary(Expression lhs, Expression rhs) {
        this.lhs = lhs;
        this.rhs = rhs;
    }

    public boolean accept(IExpressionVisitor visitor) {
        return super.accept(visitor) && this.lhs.accept(visitor) && this.rhs.accept(visitor);
    }

    public int compareTo(Expression e) {
        int cmp = super.compareTo(e);
        if (cmp == 0) {
            Binary be = (Binary)e;
            cmp = this.lhs.compareTo(be.lhs);
            if (cmp == 0) {
                cmp = this.rhs.compareTo(be.rhs);
            }
        }
        return cmp;
    }

    public boolean equals(Object o) {
        if (super.equals(o)) {
            Binary bo = (Binary)o;
            return this.lhs.equals(bo.lhs) && this.rhs.equals(bo.rhs);
        }
        return false;
    }

    public int getPriority() {
        return 6;
    }

    public int hashCode() {
        int result = 31 + this.lhs.hashCode();
        return 31 * result + this.rhs.hashCode();
    }

    public void toString(StringBuffer bld, Variable rootVariable) {
        Binary.appendOperand(bld, rootVariable, this.lhs, this.getPriority());
        bld.append(' ');
        bld.append(this.getOperator());
        bld.append(' ');
        Binary.appendOperand(bld, rootVariable, this.rhs, this.getPriority());
    }

    void appendLDAPAttribute(StringBuffer buf) {
        if (this.lhs instanceof Member.DynamicMember) {
            Member.DynamicMember attr = (Member.DynamicMember)this.lhs;
            if (attr.operand instanceof Variable) {
                buf.append(attr.getName());
                return;
            }
        }
        throw new UnsupportedOperationException();
    }

    private static char hexChar(int value) {
        return (char)(value < 10 ? 48 + value : 97 + (value - 10));
    }

    static void appendLDAPEscaped(StringBuffer bld, String str) {
        Binary.appendLDAPEscaped(bld, str, true);
    }

    /*
     * Unable to fully structure code
     */
    static void appendLDAPEscaped(StringBuffer bld, String str, boolean escapeWild) {
        top = str.length();
        idx = 0;
        while (idx < top) {
            c = str.charAt(idx);
            if (escapeWild) ** GOTO lbl-1000
            if (c == '*') {
                bld.append(c);
            } else if (c == '\\' && idx + 1 < top && str.charAt(idx + 1) == '*') {
                bld.append("\\2a");
                ++idx;
            } else if (c == '(' || c == ')' || c == '*' || c == '\\' || c < ' ' || c > '\u007f') {
                cs = (short)c;
                bld.append('\\');
                bld.append(Binary.hexChar((cs & 240) >> 4));
                bld.append(Binary.hexChar(cs & 15));
            } else {
                bld.append(c);
            }
            ++idx;
        }
    }

    void appendLDAPValue(StringBuffer buf) {
        Object value;
        if (this.rhs instanceof Literal && ((value = this.rhs.evaluate(null)) instanceof String || value instanceof Version)) {
            Binary.appendLDAPEscaped(buf, value.toString());
            return;
        }
        throw new UnsupportedOperationException();
    }

    int countAccessToEverything() {
        return this.lhs.countAccessToEverything() + this.rhs.countAccessToEverything();
    }
}

