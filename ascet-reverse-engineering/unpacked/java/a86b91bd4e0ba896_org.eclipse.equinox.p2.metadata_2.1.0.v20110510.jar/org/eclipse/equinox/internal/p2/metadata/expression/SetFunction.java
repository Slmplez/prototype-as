/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.HashSet;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.Function;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;

public final class SetFunction
extends Function {
    public SetFunction(Expression[] operands) {
        super(operands);
    }

    public Object evaluate(IEvaluationContext context) {
        HashSet<Object> result = new HashSet<Object>();
        int idx = 0;
        while (idx < this.operands.length) {
            result.add(this.operands[idx].evaluate(context));
            ++idx;
        }
        return result;
    }

    public String getOperator() {
        return "set";
    }

    boolean isCollection() {
        return true;
    }
}

