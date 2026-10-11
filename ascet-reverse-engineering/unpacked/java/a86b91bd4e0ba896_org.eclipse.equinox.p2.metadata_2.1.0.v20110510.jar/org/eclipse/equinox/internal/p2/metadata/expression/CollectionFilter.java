/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.Iterator;
import org.eclipse.equinox.internal.p2.metadata.expression.Everything;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.IRepeatableIterator;
import org.eclipse.equinox.internal.p2.metadata.expression.LambdaExpression;
import org.eclipse.equinox.internal.p2.metadata.expression.RepeatableIterator;
import org.eclipse.equinox.internal.p2.metadata.expression.Unary;
import org.eclipse.equinox.internal.p2.metadata.expression.Variable;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.expression.IExpressionVisitor;
import org.eclipse.equinox.p2.metadata.index.IIndex;
import org.eclipse.equinox.p2.metadata.index.IIndexProvider;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class CollectionFilter
extends Unary {
    public final LambdaExpression lambda;
    private transient IIndexProvider<?> lastIndexProvider;
    private transient IIndex<?> lastIndex;

    public static void appendProlog(StringBuffer bld, Variable rootVariable, Expression lhs, String operator) {
        if (lhs != rootVariable) {
            CollectionFilter.appendOperand(bld, rootVariable, lhs, 4);
            bld.append('.');
        }
        bld.append(operator);
        bld.append('(');
    }

    protected CollectionFilter(Expression collection, LambdaExpression lambda) {
        super(collection);
        this.lambda = lambda;
    }

    @Override
    public boolean accept(IExpressionVisitor visitor) {
        return super.accept(visitor) && this.lambda.accept(visitor);
    }

    @Override
    public int compareTo(Expression e) {
        int cmp = super.compareTo(e);
        if (cmp == 0) {
            cmp = this.lambda.compareTo(((CollectionFilter)e).lambda);
        }
        return cmp;
    }

    @Override
    public boolean equals(Object o) {
        return super.equals(o) && this.lambda.equals(((CollectionFilter)o).lambda);
    }

    @Override
    public final Object evaluate(IEvaluationContext context) {
        Iterator<?> lval = this.getInnerIterator(context);
        context = this.lambda.prolog(context);
        return this.evaluate(context, lval);
    }

    @Override
    public final Iterator<?> evaluateAsIterator(IEvaluationContext context) {
        Iterator<?> lval = this.getInnerIterator(context);
        context = this.lambda.prolog(context);
        return this.evaluateAsIterator(context, lval);
    }

    @Override
    public void toString(StringBuffer bld, Variable rootVariable) {
        CollectionFilter.appendProlog(bld, rootVariable, this.operand, this.getOperator());
        CollectionFilter.appendOperand(bld, rootVariable, this.lambda, 11);
        bld.append(')');
    }

    @Override
    public int hashCode() {
        int result = 31 + this.operand.hashCode();
        return 31 * result + this.lambda.hashCode();
    }

    @Override
    public int getPriority() {
        return 4;
    }

    protected abstract Object evaluate(IEvaluationContext var1, Iterator<?> var2);

    protected Iterator<?> evaluateAsIterator(IEvaluationContext context, Iterator<?> iterator) {
        throw new UnsupportedOperationException();
    }

    private IIndex<?> getIndex(Class<?> elementClass, IIndexProvider<?> indexProvider) {
        if (this.lastIndexProvider == indexProvider) {
            return this.lastIndex;
        }
        for (String member : CollectionFilter.getIndexCandidateMembers(elementClass, this.lambda.getItemVariable(), this.lambda.getOperand())) {
            IIndex<?> index = indexProvider.getIndex(member);
            if (index == null) continue;
            this.lastIndex = index;
        }
        this.lastIndexProvider = indexProvider;
        return this.lastIndex;
    }

    protected Iterator<?> getInnerIterator(IEvaluationContext context) {
        Iterator<?> indexed;
        Class elementClass;
        IIndex<?> index;
        IIndexProvider<?> indexProvider;
        Object collection = this.operand.evaluate(context);
        if (collection instanceof Everything && (indexProvider = context.getIndexProvider()) != null && (index = this.getIndex(elementClass = ((Everything)collection).getElementClass(), indexProvider)) != null && (indexed = index.getCandidates(context, this.lambda.getItemVariable(), this.lambda.getOperand())) != null) {
            return indexed;
        }
        if (collection instanceof IRepeatableIterator) {
            return ((IRepeatableIterator)collection).getCopy();
        }
        IRepeatableIterator itor = RepeatableIterator.create(collection);
        if (this.operand instanceof Variable) {
            ((Variable)this.operand).setValue(context, itor);
        }
        return itor;
    }

    @Override
    int countAccessToEverything() {
        return this.operand.countAccessToEverything() + this.lambda.countAccessToEverything();
    }
}

