/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.Filter
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.Variable;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.expression.SimplePattern;
import org.osgi.framework.Filter;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class Literal
extends Expression {
    public static final Literal FALSE_CONSTANT = new Literal(Boolean.FALSE);
    public static final Literal NULL_CONSTANT = new Literal(null);
    public static final Literal TRUE_CONSTANT = new Literal(Boolean.TRUE);
    public final Object value;

    public static Literal create(Object value) {
        if (value == null) {
            return NULL_CONSTANT;
        }
        if (value == Boolean.TRUE) {
            return TRUE_CONSTANT;
        }
        if (value == Boolean.FALSE) {
            return FALSE_CONSTANT;
        }
        return new Literal(value);
    }

    private Literal(Object value) {
        this.value = value;
    }

    @Override
    public int compareTo(Expression e) {
        int cmp = super.compareTo(e);
        if (cmp != 0) {
            return cmp;
        }
        Object eValue = ((Literal)e).value;
        if (this.value == null) {
            return eValue == null ? 0 : -1;
        }
        if (eValue == null) {
            return 1;
        }
        if (eValue.getClass() == this.value.getClass()) {
            return ((Comparable)this.value).compareTo(eValue);
        }
        return eValue.getClass().getName().compareTo(this.value.getClass().getName());
    }

    @Override
    public boolean equals(Object o) {
        if (super.equals(o)) {
            Literal bo = (Literal)o;
            return this.value == null ? bo.value == null : this.value.equals(bo.value);
        }
        return false;
    }

    @Override
    public Object evaluate(IEvaluationContext context) {
        return this.value;
    }

    @Override
    public int getExpressionType() {
        return 11;
    }

    @Override
    public String getOperator() {
        return "<literal>";
    }

    @Override
    public int getPriority() {
        return 1;
    }

    public int hashCode() {
        return 31 + this.value.hashCode();
    }

    @Override
    public void toLDAPString(StringBuffer buf) {
        if (!(this.value instanceof Filter)) {
            throw new UnsupportedOperationException();
        }
        buf.append(this.value.toString());
    }

    @Override
    public void toString(StringBuffer bld, Variable rootVariable) {
        Literal.appendValue(bld, this.value);
    }

    private static void appendValue(StringBuffer bld, Object value) {
        if (value == null) {
            bld.append("null");
        } else if (value == Boolean.TRUE) {
            bld.append("true");
        } else if (value == Boolean.FALSE) {
            bld.append("false");
        } else if (value instanceof String) {
            Literal.appendQuotedString(bld, (String)value);
        } else if (value instanceof Number) {
            bld.append(value.toString());
        } else if (value instanceof SimplePattern) {
            Literal.appendEscaped(bld, '/', value.toString());
        } else if (value instanceof Version) {
            bld.append("version(");
            Literal.appendQuotedString(bld, value.toString());
            bld.append(')');
        } else if (value instanceof VersionRange) {
            bld.append("range(");
            Literal.appendQuotedString(bld, value.toString());
            bld.append(')');
        } else if (value instanceof Class) {
            bld.append("class(");
            Literal.appendQuotedString(bld, value.toString());
            bld.append(')');
        } else if (value instanceof Filter) {
            bld.append("filter(");
            Literal.appendQuotedString(bld, value.toString());
            bld.append(')');
        } else if (value instanceof Set) {
            bld.append("set(");
            Literal.appendLiteralCollection(bld, (Collection)value);
            bld.append(')');
        } else if (value instanceof Collection) {
            Literal.appendLiteralCollection(bld, (Collection)value);
        } else {
            bld.append(value);
        }
    }

    private static void appendLiteralCollection(StringBuffer bld, Collection<?> collection) {
        bld.append('[');
        Iterator<?> iter = collection.iterator();
        if (iter.hasNext()) {
            Literal.appendValue(bld, iter.next());
            while (iter.hasNext()) {
                bld.append(',');
                Literal.appendValue(bld, iter.next());
            }
        }
        bld.append(']');
    }

    private static void appendQuotedString(StringBuffer bld, String str) {
        if (str.indexOf(39) < 0) {
            bld.append('\'');
            bld.append(str);
            bld.append('\'');
        } else {
            Literal.appendEscaped(bld, '\"', str);
        }
    }

    private static void appendEscaped(StringBuffer bld, char delimiter, String str) {
        bld.append(delimiter);
        int top = str.length();
        int idx = 0;
        while (idx < top) {
            char c = str.charAt(idx);
            if (c == delimiter || c == '\\') {
                bld.append('\\');
            }
            bld.append(c);
            ++idx;
        }
        bld.append(delimiter);
    }
}

