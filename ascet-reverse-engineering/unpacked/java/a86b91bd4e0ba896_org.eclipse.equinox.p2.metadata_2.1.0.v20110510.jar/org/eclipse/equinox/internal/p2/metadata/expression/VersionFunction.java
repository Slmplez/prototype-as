/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.Function;
import org.eclipse.equinox.p2.metadata.Version;

public final class VersionFunction
extends Function {
    public VersionFunction(Expression[] operands) {
        super(VersionFunction.assertLength(operands, 1, 1, "version"));
    }

    boolean assertSingleArgumentClass(Object v) {
        return v instanceof String;
    }

    Object createInstance(Object arg) {
        return Version.create((String)arg);
    }

    public String getOperator() {
        return "version";
    }
}

