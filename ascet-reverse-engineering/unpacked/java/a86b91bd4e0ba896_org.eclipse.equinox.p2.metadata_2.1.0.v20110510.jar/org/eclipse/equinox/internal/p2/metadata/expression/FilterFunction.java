/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.Function;
import org.eclipse.equinox.p2.metadata.expression.ExpressionUtil;

public final class FilterFunction
extends Function {
    public FilterFunction(Expression[] operands) {
        super(FilterFunction.assertLength(operands, 1, 1, "filter"));
    }

    boolean assertSingleArgumentClass(Object v) {
        return v instanceof String;
    }

    Object createInstance(Object arg) {
        return ExpressionUtil.parseLDAP((String)arg);
    }

    public String getOperator() {
        return "filter";
    }
}

