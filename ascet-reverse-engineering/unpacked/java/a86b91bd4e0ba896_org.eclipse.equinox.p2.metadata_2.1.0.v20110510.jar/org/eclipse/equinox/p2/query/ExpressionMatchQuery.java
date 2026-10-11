/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.query;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.ExpressionFactory;
import org.eclipse.equinox.internal.p2.metadata.expression.MatchExpression;
import org.eclipse.equinox.internal.p2.metadata.expression.QueryResult;
import org.eclipse.equinox.internal.p2.metadata.expression.RepeatableIterator;
import org.eclipse.equinox.p2.metadata.expression.ExpressionUtil;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;
import org.eclipse.equinox.p2.metadata.index.IIndex;
import org.eclipse.equinox.p2.metadata.index.IIndexProvider;
import org.eclipse.equinox.p2.metadata.index.IQueryWithIndex;
import org.eclipse.equinox.p2.query.CollectionResult;
import org.eclipse.equinox.p2.query.Collector;
import org.eclipse.equinox.p2.query.IMatchQuery;
import org.eclipse.equinox.p2.query.IQueryResult;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ExpressionMatchQuery<T>
implements IMatchQuery<T>,
IQueryWithIndex<T> {
    private final IMatchExpression<T> expression;
    private final Class<? extends T> matchingClass;
    private final IEvaluationContext context;
    private final List<String> indexedMembers;

    public ExpressionMatchQuery(Class<? extends T> matchingClass, IExpression expression, Object[] parameters) {
        this.matchingClass = matchingClass;
        this.expression = ExpressionUtil.getFactory().matchExpression(expression, parameters);
        this.context = this.expression.createContext();
        this.indexedMembers = Expression.getIndexCandidateMembers(matchingClass, ExpressionFactory.THIS, (Expression)expression);
    }

    public ExpressionMatchQuery(Class<? extends T> matchingClass, String expression, Object[] parameters) {
        this(matchingClass, ExpressionUtil.parse(expression), parameters);
    }

    public IEvaluationContext getContext() {
        return this.context;
    }

    public Class<? extends T> getMatchingClass() {
        return this.matchingClass;
    }

    @Override
    public IQueryResult<T> perform(IIndexProvider<T> indexProvider) {
        if (((MatchExpression)this.expression).operand == ExpressionUtil.TRUE_EXPRESSION) {
            return new QueryResult<T>(RepeatableIterator.create(indexProvider));
        }
        Iterator<T> iterator = null;
        int top = this.indexedMembers.size();
        int idx = 0;
        while (idx < top) {
            IIndex<T> index = indexProvider.getIndex(this.indexedMembers.get(idx));
            if (index != null && (iterator = index.getCandidates(this.context, ExpressionFactory.THIS, this.expression)) != null) break;
            ++idx;
        }
        if (iterator == null) {
            iterator = RepeatableIterator.create(indexProvider);
        }
        this.context.setIndexProvider(indexProvider);
        return this.perform(iterator);
    }

    @Override
    public IQueryResult<T> perform(Iterator<T> iterator) {
        if (((MatchExpression)this.expression).operand == ExpressionUtil.TRUE_EXPRESSION) {
            return new QueryResult<T>(iterator);
        }
        HashSet<T> result = null;
        while (iterator.hasNext()) {
            T value = iterator.next();
            if (!this.isMatch(value)) continue;
            if (result == null) {
                result = new HashSet<T>();
            }
            result.add(value);
        }
        return result == null ? Collector.emptyCollector() : new CollectionResult(result);
    }

    @Override
    public boolean isMatch(T candidate) {
        if (!this.matchingClass.isInstance(candidate)) {
            return false;
        }
        ExpressionFactory.THIS.setValue(this.context, candidate);
        return Boolean.TRUE == this.expression.evaluate(this.context);
    }

    @Override
    public IMatchExpression<T> getExpression() {
        return this.expression;
    }

    public void setIndexProvider(IIndexProvider<T> indexProvider) {
        this.context.setIndexProvider(indexProvider);
    }

    public void prePerform() {
    }

    public void postPerform() {
    }
}

