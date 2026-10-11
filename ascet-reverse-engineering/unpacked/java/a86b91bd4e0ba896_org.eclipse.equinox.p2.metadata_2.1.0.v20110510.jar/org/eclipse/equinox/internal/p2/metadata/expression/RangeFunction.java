/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.Function;
import org.eclipse.equinox.p2.metadata.VersionRange;

public final class RangeFunction
extends Function {
    public RangeFunction(Expression[] operands) {
        super(RangeFunction.assertLength(operands, 1, 1, "range"));
    }

    boolean assertSingleArgumentClass(Object v) {
        return v instanceof String;
    }

    Object createInstance(Object arg) {
        return new VersionRange((String)arg);
    }

    public String getOperator() {
        return "range";
    }
}

