/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.query;

import java.util.Iterator;
import org.eclipse.equinox.internal.p2.metadata.expression.ContextExpression;
import org.eclipse.equinox.internal.p2.metadata.expression.ExpressionFactory;
import org.eclipse.equinox.internal.p2.metadata.expression.MatchExpression;
import org.eclipse.equinox.internal.p2.metadata.expression.QueryResult;
import org.eclipse.equinox.p2.metadata.expression.ExpressionUtil;
import org.eclipse.equinox.p2.metadata.expression.IContextExpression;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.expression.IExpressionFactory;
import org.eclipse.equinox.p2.metadata.index.IIndexProvider;
import org.eclipse.equinox.p2.metadata.index.IQueryWithIndex;
import org.eclipse.equinox.p2.query.ExpressionMatchQuery;
import org.eclipse.equinox.p2.query.IMatchQuery;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ExpressionQuery<T>
implements IQueryWithIndex<T> {
    private final IContextExpression<T> expression;
    private final Class<? extends T> elementClass;
    static /* synthetic */ Class class$0;

    public ExpressionQuery(Class<? extends T> elementClass, IExpression expression, Object[] parameters) {
        this.elementClass = elementClass;
        this.expression = ExpressionUtil.getFactory().contextExpression(expression, parameters);
    }

    public ExpressionQuery(Class<? extends T> matchingClass, String expression, Object[] parameters) {
        this(matchingClass, ExpressionUtil.parseQuery(expression), parameters);
    }

    public Class<? extends T> getElementClass() {
        return this.elementClass;
    }

    @Override
    public IQueryResult<T> perform(IIndexProvider<T> indexProvider) {
        return new QueryResult<T>(this.expression.iterator(this.expression.createContext(this.elementClass, indexProvider)));
    }

    @Override
    public IQueryResult<T> perform(Iterator<T> iterator) {
        return new QueryResult<T>(this.expression.iterator(this.expression.createContext(this.elementClass, iterator)));
    }

    @Override
    public IContextExpression<T> getExpression() {
        return this.expression;
    }

    public static <T> Class<? extends T> getElementClass(IQuery<T> query) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.Object");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<Object> elementClass = clazz;
        if (query instanceof ExpressionMatchQuery) {
            elementClass = ((ExpressionMatchQuery)query).getMatchingClass();
        } else if (query instanceof ExpressionQuery) {
            elementClass = ((ExpressionQuery)query).getElementClass();
        }
        return elementClass;
    }

    public static <T> IContextExpression<T> createExpression(IQuery<T> query) {
        Object[] parameters;
        IExpressionFactory factory = ExpressionUtil.getFactory();
        IExpression expr = query.getExpression();
        if (expr == null) {
            expr = factory.toExpression(query);
            if (query instanceof IMatchQuery) {
                expr = factory.select(ExpressionFactory.EVERYTHING, factory.lambda(ExpressionFactory.THIS, expr));
            }
            parameters = new Object[]{};
        } else if (expr instanceof MatchExpression) {
            MatchExpression matchExpr = (MatchExpression)expr;
            parameters = matchExpr.getParameters();
            expr = factory.select(ExpressionFactory.EVERYTHING, factory.lambda(ExpressionFactory.THIS, matchExpr.operand));
        } else if (expr instanceof ContextExpression) {
            ContextExpression contextExpr = (ContextExpression)expr;
            parameters = contextExpr.getParameters();
            expr = contextExpr.operand;
        } else {
            parameters = new Object[]{};
        }
        return factory.contextExpression(expr, parameters);
    }
}

