/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.Iterator;
import org.eclipse.equinox.internal.p2.metadata.expression.EvaluationContext;
import org.eclipse.equinox.internal.p2.metadata.expression.Everything;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.ExpressionFactory;
import org.eclipse.equinox.internal.p2.metadata.expression.Unary;
import org.eclipse.equinox.internal.p2.metadata.expression.Variable;
import org.eclipse.equinox.p2.metadata.expression.IContextExpression;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.expression.IExpressionVisitor;
import org.eclipse.equinox.p2.metadata.index.IIndexProvider;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ContextExpression<T>
extends Unary
implements IContextExpression<T> {
    private static final Object[] noParams = new Object[0];
    protected final Object[] parameters;

    public ContextExpression(Expression expression, Object[] parameters) {
        super(expression);
        this.parameters = parameters == null ? noParams : parameters;
    }

    @Override
    public boolean accept(IExpressionVisitor visitor) {
        return super.accept(visitor) && this.operand.accept(visitor);
    }

    @Override
    public void toString(StringBuffer bld, Variable rootVariable) {
        this.operand.toString(bld, rootVariable);
    }

    @Override
    public IEvaluationContext createContext(Class<? extends T> elementClass, IIndexProvider<T> indexProvider) {
        Variable everything = ExpressionFactory.EVERYTHING;
        IEvaluationContext context = EvaluationContext.create(this.parameters, (IExpression)everything);
        context.setValue(everything, new Everything<T>(elementClass, indexProvider));
        context.setIndexProvider(indexProvider);
        return context;
    }

    @Override
    public IEvaluationContext createContext(Class<? extends T> elementClass, Iterator<T> iterator) {
        Variable everything = ExpressionFactory.EVERYTHING;
        IEvaluationContext context = EvaluationContext.create(this.parameters, (IExpression)everything);
        context.setValue(everything, new Everything<T>(elementClass, iterator, this.operand));
        return context;
    }

    @Override
    public Object evaluate(IEvaluationContext context) {
        return this.operand.evaluate(this.parameters.length == 0 ? context : EvaluationContext.create(context, this.parameters));
    }

    @Override
    public int getExpressionType() {
        return 0;
    }

    @Override
    public String getOperator() {
        throw new UnsupportedOperationException();
    }

    @Override
    public int getPriority() {
        return this.operand.getPriority();
    }

    @Override
    public Object[] getParameters() {
        return this.parameters;
    }

    @Override
    public int hashCode() {
        return this.operand.hashCode();
    }

    @Override
    public Iterator<T> iterator(IEvaluationContext context) {
        return this.operand.evaluateAsIterator(context);
    }

    @Override
    public void toString(StringBuffer bld) {
        this.toString(bld, ExpressionFactory.EVERYTHING);
    }
}

