/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.metadata.expression;

import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.expression.IExpressionVisitor;

public interface IExpression {
    public static final int TYPE_ALL = 1;
    public static final int TYPE_AND = 2;
    public static final int TYPE_AT = 3;
    public static final int TYPE_EQUALS = 4;
    public static final int TYPE_EXISTS = 5;
    public static final int TYPE_GREATER = 6;
    public static final int TYPE_GREATER_EQUAL = 7;
    public static final int TYPE_LAMBDA = 8;
    public static final int TYPE_LESS = 9;
    public static final int TYPE_LESS_EQUAL = 10;
    public static final int TYPE_LITERAL = 11;
    public static final int TYPE_MATCHES = 12;
    public static final int TYPE_MEMBER = 13;
    public static final int TYPE_NOT = 14;
    public static final int TYPE_NOT_EQUALS = 15;
    public static final int TYPE_OR = 16;
    public static final int TYPE_PARAMETER = 17;
    public static final int TYPE_VARIABLE = 18;
    public static final int TYPE_ARRAY = 20;
    public static final int TYPE_ASSIGNMENT = 21;
    public static final int TYPE_COLLECT = 22;
    public static final int TYPE_CONDITION = 23;
    public static final int TYPE_FIRST = 24;
    public static final int TYPE_FLATTEN = 25;
    public static final int TYPE_FUNCTION = 26;
    public static final int TYPE_INTERSECT = 27;
    public static final int TYPE_LATEST = 28;
    public static final int TYPE_LIMIT = 29;
    public static final int TYPE_PIPE = 30;
    public static final int TYPE_SELECT = 31;
    public static final int TYPE_TRAVERSE = 32;
    public static final int TYPE_UNION = 33;
    public static final int TYPE_UNIQUE = 34;

    public boolean accept(IExpressionVisitor var1);

    public Object evaluate(IEvaluationContext var1);

    public int getExpressionType();

    public void toString(StringBuffer var1);

    public void toLDAPString(StringBuffer var1);
}

