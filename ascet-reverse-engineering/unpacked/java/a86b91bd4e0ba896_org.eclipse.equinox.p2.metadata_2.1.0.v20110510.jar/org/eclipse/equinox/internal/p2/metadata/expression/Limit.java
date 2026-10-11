/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.internal.p2.metadata.expression.Binary;
import org.eclipse.equinox.internal.p2.metadata.expression.CollectionFilter;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.ExpressionFactory;
import org.eclipse.equinox.internal.p2.metadata.expression.Variable;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
final class Limit
extends Binary {
    Limit(Expression operand, Expression param) {
        super(operand, param);
    }

    Limit(Expression operand, int limit) {
        this(operand, (Expression)ExpressionFactory.INSTANCE.constant(new Integer(limit)));
    }

    @Override
    public Object evaluate(IEvaluationContext context) {
        return this.evaluateAsIterator(context);
    }

    @Override
    public Iterator<?> evaluateAsIterator(IEvaluationContext context) {
        Object rval = this.rhs.evaluate(context);
        int limit = -1;
        if (rval instanceof Integer) {
            limit = (Integer)rval;
        }
        if (limit < 0) {
            throw new IllegalArgumentException("limit expression did not evalutate to a positive integer");
        }
        return limit == 0 ? CollectionUtils.emptySet().iterator() : new CountingIterator(this.lhs.evaluateAsIterator(context), limit);
    }

    @Override
    public int getExpressionType() {
        return 29;
    }

    @Override
    public void toString(StringBuffer bld, Variable rootVariable) {
        CollectionFilter.appendProlog(bld, rootVariable, this.lhs, this.getOperator());
        Limit.appendOperand(bld, rootVariable, this.rhs, 12);
        bld.append(')');
    }

    @Override
    public String getOperator() {
        return "limit";
    }

    @Override
    public int getPriority() {
        return 4;
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static final class CountingIterator<T>
    implements Iterator<T> {
        private final Iterator<? extends T> innerIterator;
        private int counter;

        public CountingIterator(Iterator<? extends T> iterator, int count) {
            this.innerIterator = iterator;
            this.counter = count;
        }

        @Override
        public boolean hasNext() {
            return this.counter > 0 && this.innerIterator.hasNext();
        }

        @Override
        public T next() {
            if (this.counter > 0) {
                --this.counter;
                return this.innerIterator.next();
            }
            throw new NoSuchElementException();
        }

        @Override
        public void remove() {
            this.innerIterator.remove();
        }
    }
}

