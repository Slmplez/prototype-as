/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.Filter
 *  org.osgi.framework.ServiceReference
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.Dictionary;
import java.util.Map;
import org.eclipse.equinox.internal.p2.metadata.expression.EvaluationContext;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.ExpressionFactory;
import org.eclipse.equinox.internal.p2.metadata.expression.MemberProvider;
import org.eclipse.equinox.internal.p2.metadata.expression.Unary;
import org.eclipse.equinox.internal.p2.metadata.expression.Variable;
import org.eclipse.equinox.p2.metadata.expression.ExpressionUtil;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.expression.IExpressionVisitor;
import org.eclipse.equinox.p2.metadata.expression.IFilterExpression;
import org.osgi.framework.Filter;
import org.osgi.framework.ServiceReference;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class LDAPFilter
extends Unary
implements IFilterExpression {
    LDAPFilter(Expression expression) {
        super(expression);
    }

    @Override
    public boolean accept(IExpressionVisitor visitor) {
        return this.operand.accept(visitor);
    }

    @Override
    public boolean equals(Object o) {
        return o instanceof Filter && !(o instanceof LDAPFilter) ? this.equals(ExpressionUtil.parseLDAP(o.toString())) : super.equals(o);
    }

    @Override
    public String getOperator() {
        return this.operand.getOperator();
    }

    @Override
    public int getPriority() {
        return this.operand.getPriority();
    }

    @Override
    public int getExpressionType() {
        return 0;
    }

    @Override
    public boolean match(Map<String, ? extends Object> map) {
        return this.isMatch(MemberProvider.create(map, true));
    }

    public boolean match(Dictionary dictionary) {
        return this.isMatch(dictionary == null ? MemberProvider.emptyProvider() : MemberProvider.create(dictionary, true));
    }

    public boolean isMatch(Object candidate) {
        Variable self = ExpressionFactory.THIS;
        IEvaluationContext ctx = EvaluationContext.create(self);
        self.setValue(ctx, candidate);
        return Boolean.TRUE == this.operand.evaluate(ctx);
    }

    public boolean match(ServiceReference<?> reference) {
        return this.isMatch(reference == null ? MemberProvider.emptyProvider() : MemberProvider.create(reference, true));
    }

    @Override
    public boolean matchCase(Map<String, ? extends Object> map) {
        return this.isMatch(map == null ? MemberProvider.emptyProvider() : MemberProvider.create(map, false));
    }

    public boolean matches(Map<String, ?> map) {
        return this.matchCase(map);
    }

    public boolean matchCase(Dictionary dictionary) {
        return this.isMatch(dictionary == null ? MemberProvider.emptyProvider() : MemberProvider.create(dictionary, false));
    }

    @Override
    public void toString(StringBuffer bld, Variable rootVariable) {
        this.operand.toLDAPString(bld);
    }

    @Override
    public Object evaluate(IEvaluationContext context) {
        return null;
    }
}

