/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.metadata.expression;

import org.eclipse.equinox.internal.p2.metadata.expression.Binary;
import org.eclipse.equinox.internal.p2.metadata.expression.ExpressionFactory;
import org.eclipse.equinox.internal.p2.metadata.expression.Literal;
import org.eclipse.equinox.internal.p2.metadata.expression.Member;
import org.eclipse.equinox.internal.p2.metadata.expression.NAry;
import org.eclipse.equinox.internal.p2.metadata.expression.Unary;
import org.eclipse.equinox.internal.p2.metadata.expression.Variable;
import org.eclipse.equinox.internal.p2.metadata.expression.parser.LDAPFilterParser;
import org.eclipse.equinox.internal.p2.metadata.expression.parser.QLParser;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.expression.IExpressionFactory;
import org.eclipse.equinox.p2.metadata.expression.IExpressionParser;
import org.eclipse.equinox.p2.metadata.expression.IFilterExpression;

public final class ExpressionUtil {
    private static final IExpressionParser expressionParser = new QLParser(ExpressionFactory.INSTANCE);
    private static final LDAPFilterParser ldapFilterParser = new LDAPFilterParser(ExpressionFactory.INSTANCE);
    public static final IExpression TRUE_EXPRESSION = ExpressionFactory.INSTANCE.constant(Boolean.TRUE);
    public static final IExpression FALSE_EXPRESSION = ExpressionFactory.INSTANCE.constant(Boolean.FALSE);

    private ExpressionUtil() {
    }

    public static IExpressionFactory getFactory() {
        return ExpressionFactory.INSTANCE;
    }

    public static IExpressionParser getParser() {
        return expressionParser;
    }

    public static IFilterExpression parseLDAP(String filter) throws IllegalArgumentException {
        return (filter = ExpressionUtil.trimmedOrNull(filter)) == null ? null : ldapFilterParser.parse(filter);
    }

    public static IExpression parse(String expression) {
        return (expression = ExpressionUtil.trimmedOrNull(expression)) == null ? null : ExpressionUtil.getParser().parse(expression);
    }

    public static IExpression parseQuery(String expression) {
        return (expression = ExpressionUtil.trimmedOrNull(expression)) == null ? null : ExpressionUtil.getParser().parseQuery(expression);
    }

    public static String trimmedOrNull(String str) {
        if (str != null && (str = str.trim()).length() == 0) {
            str = null;
        }
        return str;
    }

    public static IExpression getLHS(IExpression expression) {
        if (expression instanceof Binary) {
            return ((Binary)expression).lhs;
        }
        throw new IllegalArgumentException();
    }

    public static String getName(IExpression expression) {
        if (expression instanceof Member) {
            return ((Member)expression).getName();
        }
        if (expression instanceof Variable) {
            return ((Variable)expression).getName();
        }
        throw new IllegalArgumentException();
    }

    public static IExpression getOperand(IExpression expression) {
        if (expression instanceof Unary) {
            return ((Unary)expression).operand;
        }
        throw new IllegalArgumentException();
    }

    public static IExpression[] getOperands(IExpression expression) {
        if (expression instanceof NAry) {
            return ((NAry)expression).operands;
        }
        throw new IllegalArgumentException();
    }

    public static IExpression getRHS(IExpression expression) {
        if (expression instanceof Binary) {
            return ((Binary)expression).rhs;
        }
        throw new IllegalArgumentException();
    }

    public static Object getValue(IExpression expression) {
        if (expression instanceof Literal) {
            return ((Literal)expression).value;
        }
        throw new IllegalArgumentException();
    }
}

