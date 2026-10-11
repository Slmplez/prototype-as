/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.Function;

public final class BooleanFunction
extends Function {
    public BooleanFunction(Expression[] operands) {
        super(BooleanFunction.assertLength(operands, 1, 1, "boolean"));
    }

    boolean assertSingleArgumentClass(Object v) {
        return v instanceof String || v instanceof Boolean;
    }

    Object createInstance(Object arg) {
        if (arg instanceof String) {
            return "true".equalsIgnoreCase((String)arg);
        }
        if (arg instanceof Boolean) {
            return arg;
        }
        return Boolean.FALSE;
    }

    public String getOperator() {
        return "boolean";
    }
}

