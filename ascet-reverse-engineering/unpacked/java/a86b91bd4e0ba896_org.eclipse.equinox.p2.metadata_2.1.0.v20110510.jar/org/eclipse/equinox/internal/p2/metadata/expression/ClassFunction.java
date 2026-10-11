/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.Function;

public final class ClassFunction
extends Function {
    public ClassFunction(Expression[] operands) {
        super(ClassFunction.assertLength(operands, 1, 1, "class"));
    }

    boolean assertSingleArgumentClass(Object v) {
        return v instanceof String;
    }

    Object createInstance(Object arg) {
        try {
            return Class.forName((String)arg);
        }
        catch (ClassNotFoundException e) {
            throw new IllegalArgumentException(e.getMessage());
        }
    }

    public String getOperator() {
        return "class";
    }
}

