/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.Arrays;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.internal.p2.metadata.expression.EvaluationContext;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.ExpressionFactory;
import org.eclipse.equinox.internal.p2.metadata.expression.Unary;
import org.eclipse.equinox.internal.p2.metadata.expression.Variable;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.expression.IExpressionVisitor;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MatchExpression<T>
extends Unary
implements IMatchExpression<T> {
    private static final Object[] noParams = new Object[0];
    private final Object[] parameters;

    MatchExpression(Expression expression, Object[] parameters) {
        super(expression);
        this.parameters = parameters == null ? noParams : parameters;
    }

    @Override
    public boolean accept(IExpressionVisitor visitor) {
        return this.operand.accept(visitor);
    }

    @Override
    public IEvaluationContext createContext() {
        return EvaluationContext.create(this.parameters, (IExpression)ExpressionFactory.THIS);
    }

    @Override
    public boolean equals(Object o) {
        return super.equals(o) && Arrays.equals(this.parameters, ((MatchExpression)o).parameters);
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
    public Object[] getParameters() {
        return this.parameters;
    }

    IExpression getPredicate() {
        return this.operand;
    }

    @Override
    public int getPriority() {
        return this.operand.getPriority();
    }

    @Override
    public int hashCode() {
        return this.operand.hashCode() * 31 + CollectionUtils.hashCode((Object[])this.parameters);
    }

    @Override
    public boolean isMatch(IEvaluationContext context, T value) {
        ExpressionFactory.THIS.setValue(context, value);
        return Boolean.TRUE == this.operand.evaluate(context);
    }

    @Override
    public boolean isMatch(T value) {
        return this.isMatch(this.createContext(), value);
    }

    @Override
    public void toLDAPString(StringBuffer bld) {
        this.operand.toLDAPString(bld);
    }

    @Override
    public void toString(StringBuffer bld, Variable rootVariable) {
        this.operand.toString(bld, rootVariable);
    }
}

