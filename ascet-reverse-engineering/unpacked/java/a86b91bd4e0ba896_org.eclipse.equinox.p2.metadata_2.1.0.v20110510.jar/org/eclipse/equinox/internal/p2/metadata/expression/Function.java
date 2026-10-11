/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.Iterator;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.IRepeatableIterator;
import org.eclipse.equinox.internal.p2.metadata.expression.Literal;
import org.eclipse.equinox.internal.p2.metadata.expression.NAry;
import org.eclipse.equinox.internal.p2.metadata.expression.Parameter;
import org.eclipse.equinox.internal.p2.metadata.expression.RepeatableIterator;
import org.eclipse.equinox.internal.p2.metadata.expression.Variable;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class Function
extends NAry {
    private Object instance;

    protected Function(Expression[] operands) {
        super(operands);
    }

    boolean assertSingleArgumentClass(Object v) {
        return true;
    }

    Object createInstance(Object arg) {
        throw new UnsupportedOperationException();
    }

    final Object createInstance(String arg) {
        throw new UnsupportedOperationException();
    }

    @Override
    public Object evaluate(IEvaluationContext context) {
        if (this.instance != null) {
            return this.instance;
        }
        Expression operand = this.operands[0];
        Object arg = operand.evaluate(context);
        if (this.assertSingleArgumentClass(arg)) {
            Object result = this.createInstance(arg);
            if (operand instanceof Literal || operand instanceof Parameter) {
                this.instance = result;
            }
            return result;
        }
        String what = arg == null ? "null" : new StringBuffer("a ").append(arg.getClass().getName()).toString();
        throw new IllegalArgumentException(new StringBuffer("Cannot create a ").append(this.getOperator()).append(" from ").append(what).toString());
    }

    @Override
    public Iterator<?> evaluateAsIterator(IEvaluationContext context) {
        IRepeatableIterator value = this.evaluate(context);
        if (!(value instanceof Iterator)) {
            value = RepeatableIterator.create((Object)value);
        }
        return value;
    }

    @Override
    public int getExpressionType() {
        return 26;
    }

    @Override
    public int getPriority() {
        return 2;
    }

    @Override
    public void toString(StringBuffer bld, Variable rootVariable) {
        bld.append(this.getOperator());
        bld.append('(');
        Function.elementsToString(bld, rootVariable, this.operands);
        bld.append(')');
    }
}

