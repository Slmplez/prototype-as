/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.NAry;
import org.eclipse.equinox.internal.p2.metadata.expression.Variable;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
final class Array
extends NAry {
    Array(Expression[] operands) {
        super(Array.assertLength(operands, 0, "[]"));
    }

    @Override
    public Object evaluate(IEvaluationContext context) {
        return this.evaluateAsIterator(context);
    }

    @Override
    public Iterator<?> evaluateAsIterator(IEvaluationContext context) {
        return new ArrayIterator(context);
    }

    @Override
    public int getExpressionType() {
        return 20;
    }

    @Override
    public void toString(StringBuffer bld, Variable rootVariable) {
        bld.append('[');
        Array.elementsToString(bld, rootVariable, this.operands);
        bld.append(']');
    }

    @Override
    public String getOperator() {
        return "[]";
    }

    @Override
    public int getPriority() {
        return 2;
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    final class ArrayIterator
    implements Iterator<Object> {
        private final IEvaluationContext context;
        private int pos = -1;

        public ArrayIterator(IEvaluationContext context) {
            this.context = context;
        }

        @Override
        public boolean hasNext() {
            return this.pos + 1 < Array.this.operands.length;
        }

        @Override
        public Object next() {
            if (++this.pos >= Array.this.operands.length) {
                --this.pos;
                throw new NoSuchElementException();
            }
            return Array.this.operands[this.pos].evaluate(this.context);
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }
}

