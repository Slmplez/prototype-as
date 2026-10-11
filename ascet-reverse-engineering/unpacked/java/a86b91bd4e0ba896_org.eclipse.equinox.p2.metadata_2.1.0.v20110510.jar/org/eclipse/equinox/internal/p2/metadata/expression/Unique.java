/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.equinox.internal.p2.metadata.expression.Binary;
import org.eclipse.equinox.internal.p2.metadata.expression.CollectionFilter;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.Literal;
import org.eclipse.equinox.internal.p2.metadata.expression.MatchIteratorFilter;
import org.eclipse.equinox.internal.p2.metadata.expression.Variable;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
final class Unique
extends Binary {
    Unique(Expression collection, Expression explicitCache) {
        super(collection, explicitCache);
    }

    @Override
    public Object evaluate(IEvaluationContext context) {
        return this.evaluateAsIterator(context);
    }

    @Override
    public Iterator<?> evaluateAsIterator(IEvaluationContext context) {
        Set uniqueSet;
        Object explicitCache = this.rhs.evaluate(context);
        if (explicitCache == null) {
            uniqueSet = new HashSet();
        } else {
            if (!(explicitCache instanceof Set)) {
                throw new IllegalArgumentException("Unique cache must be a java.util.Set");
            }
            uniqueSet = (Set)explicitCache;
        }
        return new UniqueIterator(this.lhs.evaluateAsIterator(context), uniqueSet);
    }

    @Override
    public int getExpressionType() {
        return 34;
    }

    @Override
    public void toString(StringBuffer bld, Variable rootVariable) {
        CollectionFilter.appendProlog(bld, rootVariable, this.lhs, this.getOperator());
        if (this.rhs != Literal.NULL_CONSTANT) {
            Unique.appendOperand(bld, rootVariable, this.rhs, 12);
        }
        bld.append(')');
    }

    @Override
    public String getOperator() {
        return "unique";
    }

    @Override
    public int getPriority() {
        return 4;
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class UniqueIterator<T>
    extends MatchIteratorFilter<T> {
        final Set<T> uniqueSet;

        public UniqueIterator(Iterator<? extends T> iterator, Set<T> uniqueSet) {
            super(iterator);
            this.uniqueSet = uniqueSet;
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        @Override
        protected boolean isMatch(T val) {
            Set<T> set = this.uniqueSet;
            synchronized (set) {
                return this.uniqueSet.add(val);
            }
        }
    }
}

