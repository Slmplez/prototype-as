/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.ArrayList;
import java.util.Iterator;
import org.eclipse.equinox.internal.p2.metadata.expression.ContextExpression;
import org.eclipse.equinox.internal.p2.metadata.expression.EvaluationContext;
import org.eclipse.equinox.internal.p2.metadata.expression.Everything;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.ExpressionFactory;
import org.eclipse.equinox.internal.p2.metadata.expression.Literal;
import org.eclipse.equinox.internal.p2.metadata.expression.MatchExpression;
import org.eclipse.equinox.internal.p2.metadata.expression.NAry;
import org.eclipse.equinox.internal.p2.metadata.expression.Variable;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.KeyWithLocale;
import org.eclipse.equinox.p2.metadata.expression.ExpressionUtil;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.expression.IExpressionFactory;
import org.eclipse.equinox.p2.metadata.index.IIndex;
import org.eclipse.equinox.p2.metadata.index.IIndexProvider;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Pipe
extends NAry {
    static /* synthetic */ Class class$0;

    public static Expression createPipe(Expression[] operands) {
        int top;
        IExpressionFactory factory = ExpressionUtil.getFactory();
        ArrayList<Expression> pipeables = new ArrayList<Expression>();
        ArrayList<Expression> booleans = new ArrayList<Expression>();
        Expression.VariableFinder finder = new Expression.VariableFinder(ExpressionFactory.EVERYTHING);
        int idx = 0;
        while (idx < operands.length) {
            Expression operand = operands[idx];
            finder.reset();
            operand.accept(finder);
            if (finder.isFound()) {
                if (!booleans.isEmpty()) {
                    pipeables.add(Pipe.makePipeableOfBooleans(factory, booleans));
                    booleans.clear();
                }
                pipeables.add(operand);
            } else {
                booleans.add(operand);
            }
            ++idx;
        }
        if (!booleans.isEmpty()) {
            if (pipeables.isEmpty()) {
                return Pipe.normalizeBoolean(factory, booleans);
            }
            pipeables.add(Pipe.makePipeableOfBooleans(factory, booleans));
        }
        if ((top = pipeables.size()) > 1) {
            return new Pipe(pipeables.toArray(new Expression[top]));
        }
        return top == 1 ? (Expression)pipeables.get(0) : Literal.TRUE_CONSTANT;
    }

    private static Expression normalizeBoolean(IExpressionFactory factory, ArrayList<Expression> booleans) {
        int top = booleans.size();
        Expression boolExpr = top > 1 ? (Expression)factory.and(booleans.toArray(new IExpression[top])) : (top == 1 ? booleans.get(0) : Literal.TRUE_CONSTANT);
        return boolExpr;
    }

    private static Expression makePipeableOfBooleans(IExpressionFactory factory, ArrayList<Expression> booleans) {
        Expression boolExpr = Pipe.normalizeBoolean(factory, booleans);
        Object[] params = null;
        if (boolExpr instanceof MatchExpression) {
            MatchExpression matchExpr = (MatchExpression)boolExpr;
            boolExpr = (Expression)matchExpr.getPredicate();
            params = matchExpr.getParameters();
            if (params.length == 0) {
                params = null;
            }
        }
        ContextExpression expr = (ContextExpression)factory.select(ExpressionFactory.EVERYTHING, factory.lambda(ExpressionFactory.THIS, boolExpr));
        if (params != null) {
            expr = new ContextExpression(expr, params);
        }
        return expr;
    }

    private Pipe(Expression[] operands) {
        super(operands);
    }

    @Override
    public int getExpressionType() {
        return 30;
    }

    @Override
    public String getOperator() {
        return "pipe";
    }

    @Override
    public Object evaluate(IEvaluationContext context) {
        return this.evaluateAsIterator(context);
    }

    @Override
    public Iterator<?> evaluateAsIterator(IEvaluationContext context) {
        Iterator<?> iterator = this.operands[0].evaluateAsIterator(context);
        if (this.operands.length == 0 || !iterator.hasNext()) {
            return iterator;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.Object");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<?> elementClass = clazz;
        Variable everything = ExpressionFactory.EVERYTHING;
        IEvaluationContext nextContext = EvaluationContext.create(context, (IExpression)everything);
        NoIndexProvider noIndexProvider = new NoIndexProvider(context.getIndexProvider());
        everything.setValue(nextContext, noIndexProvider);
        nextContext.setIndexProvider(noIndexProvider);
        int idx = 1;
        while (idx < this.operands.length) {
            Expression expr = this.operands[idx];
            noIndexProvider.setEverything(new Everything(elementClass, iterator, expr));
            iterator = expr.evaluateAsIterator(nextContext);
            if (!iterator.hasNext()) break;
            ++idx;
        }
        return iterator;
    }

    @Override
    public int getPriority() {
        return 4;
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class NoIndexProvider
    implements IIndexProvider<Object> {
        private final IIndexProvider<?> indexProvider;
        private Everything<Object> everything;

        NoIndexProvider(IIndexProvider<?> indexProvider) {
            this.indexProvider = indexProvider;
        }

        @Override
        public IIndex<Object> getIndex(String memberName) {
            return null;
        }

        @Override
        public Iterator<Object> everything() {
            return this.everything.getCopy();
        }

        @Override
        public Object getManagedProperty(Object client, String memberName, Object key) {
            if (this.indexProvider != null) {
                return this.indexProvider.getManagedProperty(client, memberName, key);
            }
            if (client instanceof IInstallableUnit && memberName.equals("translatedProperties")) {
                IInstallableUnit iu = (IInstallableUnit)client;
                return key instanceof KeyWithLocale ? iu.getProperty(((KeyWithLocale)key).getKey()) : iu.getProperty(key.toString());
            }
            return null;
        }

        void setEverything(Everything<?> everything) {
            this.everything = everything;
        }
    }
}

