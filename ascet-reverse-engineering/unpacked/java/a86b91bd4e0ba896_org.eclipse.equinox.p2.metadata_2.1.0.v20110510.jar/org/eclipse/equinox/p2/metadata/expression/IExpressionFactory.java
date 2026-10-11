/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.metadata.expression;

import java.util.List;
import java.util.Map;
import org.eclipse.equinox.p2.metadata.expression.IContextExpression;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.expression.IFilterExpression;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;
import org.eclipse.equinox.p2.query.IQuery;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IExpressionFactory {
    public static final String FUNC_BOOLEAN = "boolean";
    public static final String FUNC_VERSION = "version";
    public static final String FUNC_CLASS = "class";
    public static final String FUNC_RANGE = "range";
    public static final String FUNC_FILTER = "filter";
    public static final IExpression[] NO_ARGS = new IExpression[0];

    public IExpression all(IExpression var1, IExpression var2);

    public IExpression and(IExpression[] var1);

    public IExpression assignment(IExpression var1, IExpression var2);

    public IExpression collect(IExpression var1, IExpression var2);

    public IExpression condition(IExpression var1, IExpression var2, IExpression var3);

    public IExpression first(IExpression var1, IExpression var2);

    public IExpression flatten(IExpression var1);

    public IExpression lambda(IExpression var1, IExpression[] var2, IExpression var3);

    public IExpression memberCall(IExpression var1, String var2, IExpression[] var3);

    public IExpression traverse(IExpression var1, IExpression var2);

    public IExpression unique(IExpression var1, IExpression var2);

    public IExpression array(IExpression[] var1);

    public IExpression at(IExpression var1, IExpression var2);

    public IEvaluationContext createContext(Object[] var1);

    public IEvaluationContext createContext(IExpression[] var1, Object[] var2);

    public IExpression constant(Object var1);

    public <T> IContextExpression<T> contextExpression(IExpression var1, Object[] var2);

    public IExpression equals(IExpression var1, IExpression var2);

    public IExpression exists(IExpression var1, IExpression var2);

    public IFilterExpression filterExpression(IExpression var1);

    public IExpression function(Object var1, IExpression[] var2);

    public Map<String, ? extends Object> getFunctionMap();

    public IExpression greater(IExpression var1, IExpression var2);

    public IExpression greaterEqual(IExpression var1, IExpression var2);

    public IExpression indexedParameter(int var1);

    public IExpression intersect(IExpression var1, IExpression var2);

    public IExpression lambda(IExpression var1, IExpression var2);

    public IExpression latest(IExpression var1);

    public IExpression less(IExpression var1, IExpression var2);

    public IExpression lessEqual(IExpression var1, IExpression var2);

    public IExpression limit(IExpression var1, int var2);

    public IExpression limit(IExpression var1, IExpression var2);

    public IExpression normalize(List<? extends IExpression> var1, int var2);

    public IExpression matches(IExpression var1, IExpression var2);

    public <T> IMatchExpression<T> matchExpression(IExpression var1, Object[] var2);

    public IExpression member(IExpression var1, String var2);

    public IExpression not(IExpression var1);

    public IExpression or(IExpression[] var1);

    public IExpression pipe(IExpression[] var1);

    public IExpression select(IExpression var1, IExpression var2);

    public IExpression thisVariable();

    public IExpression toExpression(IQuery<?> var1);

    public IExpression union(IExpression var1, IExpression var2);

    public IExpression variable(String var1);
}

