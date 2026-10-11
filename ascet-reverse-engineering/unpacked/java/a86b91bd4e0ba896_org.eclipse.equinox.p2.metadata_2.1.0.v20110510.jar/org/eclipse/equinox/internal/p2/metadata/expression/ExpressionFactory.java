/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.equinox.internal.p2.metadata.expression.All;
import org.eclipse.equinox.internal.p2.metadata.expression.And;
import org.eclipse.equinox.internal.p2.metadata.expression.Array;
import org.eclipse.equinox.internal.p2.metadata.expression.Assignment;
import org.eclipse.equinox.internal.p2.metadata.expression.At;
import org.eclipse.equinox.internal.p2.metadata.expression.Collect;
import org.eclipse.equinox.internal.p2.metadata.expression.Compare;
import org.eclipse.equinox.internal.p2.metadata.expression.Condition;
import org.eclipse.equinox.internal.p2.metadata.expression.ContextExpression;
import org.eclipse.equinox.internal.p2.metadata.expression.CurryedLambdaExpression;
import org.eclipse.equinox.internal.p2.metadata.expression.Equals;
import org.eclipse.equinox.internal.p2.metadata.expression.EvaluationContext;
import org.eclipse.equinox.internal.p2.metadata.expression.Exists;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.First;
import org.eclipse.equinox.internal.p2.metadata.expression.Flatten;
import org.eclipse.equinox.internal.p2.metadata.expression.IExpressionConstants;
import org.eclipse.equinox.internal.p2.metadata.expression.Intersect;
import org.eclipse.equinox.internal.p2.metadata.expression.LDAPFilter;
import org.eclipse.equinox.internal.p2.metadata.expression.LambdaExpression;
import org.eclipse.equinox.internal.p2.metadata.expression.Latest;
import org.eclipse.equinox.internal.p2.metadata.expression.Limit;
import org.eclipse.equinox.internal.p2.metadata.expression.Literal;
import org.eclipse.equinox.internal.p2.metadata.expression.MatchExpression;
import org.eclipse.equinox.internal.p2.metadata.expression.Matches;
import org.eclipse.equinox.internal.p2.metadata.expression.Member;
import org.eclipse.equinox.internal.p2.metadata.expression.Not;
import org.eclipse.equinox.internal.p2.metadata.expression.Or;
import org.eclipse.equinox.internal.p2.metadata.expression.Parameter;
import org.eclipse.equinox.internal.p2.metadata.expression.Pipe;
import org.eclipse.equinox.internal.p2.metadata.expression.Select;
import org.eclipse.equinox.internal.p2.metadata.expression.Traverse;
import org.eclipse.equinox.internal.p2.metadata.expression.Union;
import org.eclipse.equinox.internal.p2.metadata.expression.Unique;
import org.eclipse.equinox.internal.p2.metadata.expression.Variable;
import org.eclipse.equinox.internal.p2.metadata.expression.WrappedIQuery;
import org.eclipse.equinox.p2.metadata.expression.IContextExpression;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.expression.IExpressionFactory;
import org.eclipse.equinox.p2.metadata.expression.IFilterExpression;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;
import org.eclipse.equinox.p2.query.IQuery;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ExpressionFactory
implements IExpressionFactory,
IExpressionConstants {
    public static final Variable EVERYTHING = new Variable("everything");
    protected static final Map<String, Constructor<?>> functionMap;
    public static final IExpressionFactory INSTANCE;
    public static final Variable THIS;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;
    static /* synthetic */ Class class$6;
    static /* synthetic */ Class class$7;

    static {
        INSTANCE = new ExpressionFactory();
        THIS = new Variable("this");
        Class[] classArray = new Class[1];
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("[Lorg.eclipse.equinox.internal.p2.metadata.expression.Expression;");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[0] = clazz;
        Class[] args = classArray;
        HashMap f = new HashMap();
        try {
            Class<?> clazz2 = class$1;
            if (clazz2 == null) {
                try {
                    clazz2 = class$1 = Class.forName("org.eclipse.equinox.internal.p2.metadata.expression.BooleanFunction");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            f.put("boolean", clazz2.getConstructor(args));
            Class<?> clazz3 = class$2;
            if (clazz3 == null) {
                try {
                    clazz3 = class$2 = Class.forName("org.eclipse.equinox.internal.p2.metadata.expression.FilterFunction");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            f.put("filter", clazz3.getConstructor(args));
            Class<?> clazz4 = class$3;
            if (clazz4 == null) {
                try {
                    clazz4 = class$3 = Class.forName("org.eclipse.equinox.internal.p2.metadata.expression.VersionFunction");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            f.put("version", clazz4.getConstructor(args));
            Class<?> clazz5 = class$4;
            if (clazz5 == null) {
                try {
                    clazz5 = class$4 = Class.forName("org.eclipse.equinox.internal.p2.metadata.expression.RangeFunction");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            f.put("range", clazz5.getConstructor(args));
            Class<?> clazz6 = class$5;
            if (clazz6 == null) {
                try {
                    clazz6 = class$5 = Class.forName("org.eclipse.equinox.internal.p2.metadata.expression.ClassFunction");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            f.put("class", clazz6.getConstructor(args));
            Class<?> clazz7 = class$6;
            if (clazz7 == null) {
                try {
                    clazz7 = class$6 = Class.forName("org.eclipse.equinox.internal.p2.metadata.expression.SetFunction");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            f.put("set", clazz7.getConstructor(args));
            Class<?> clazz8 = class$7;
            if (clazz8 == null) {
                try {
                    clazz8 = class$7 = Class.forName("org.eclipse.equinox.internal.p2.metadata.expression.WrappedIQuery");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            f.put("iquery", clazz8.getConstructor(args));
            functionMap = Collections.unmodifiableMap(f);
        }
        catch (Exception e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    protected static Expression[] convertArray(IExpression[] operands) {
        Expression[] ops = new Expression[operands.length];
        System.arraycopy(operands, 0, ops, 0, operands.length);
        return ops;
    }

    @Override
    public IExpression all(IExpression collection, IExpression lambda) {
        return new All((Expression)collection, (LambdaExpression)lambda);
    }

    @Override
    public IExpression and(IExpression[] operands) {
        if (operands.length == 0) {
            return Literal.TRUE_CONSTANT;
        }
        if (operands.length == 1) {
            return operands[0];
        }
        return new And(ExpressionFactory.convertArray(operands));
    }

    @Override
    public IExpression array(IExpression[] operands) {
        return new Array(ExpressionFactory.convertArray(operands));
    }

    @Override
    public IExpression assignment(IExpression variable, IExpression expression) {
        return new Assignment((Variable)variable, (Expression)expression);
    }

    @Override
    public IExpression at(IExpression target, IExpression key) {
        return new At((Expression)target, (Expression)key);
    }

    @Override
    public IExpression collect(IExpression collection, IExpression lambda) {
        return new Collect((Expression)collection, (LambdaExpression)lambda);
    }

    @Override
    public IExpression condition(IExpression test, IExpression ifTrue, IExpression ifFalse) {
        return new Condition((Expression)test, (Expression)ifTrue, (Expression)ifFalse);
    }

    @Override
    public IExpression constant(Object value) {
        return Literal.create(value);
    }

    @Override
    public <T> IContextExpression<T> contextExpression(IExpression expression, Object[] parameters) {
        if (expression instanceof IContextExpression) {
            if (parameters.length > 0) {
                throw new IllegalArgumentException("IContextExpression cannot be parameterized (it already is)");
            }
            return (IContextExpression)expression;
        }
        if (expression instanceof IMatchExpression) {
            throw new IllegalArgumentException("IMatchExpression cannot be turned into a context expression");
        }
        return new ContextExpression((Expression)expression, parameters);
    }

    @Override
    public IEvaluationContext createContext(IExpression[] variables, Object[] parameters) {
        return EvaluationContext.create(parameters, variables);
    }

    @Override
    public IEvaluationContext createContext(Object[] parameters) {
        return EvaluationContext.create(parameters, null);
    }

    @Override
    public IExpression equals(IExpression lhs, IExpression rhs) {
        return new Equals((Expression)lhs, (Expression)rhs, false);
    }

    @Override
    public IExpression exists(IExpression collection, IExpression lambda) {
        return new Exists((Expression)collection, (LambdaExpression)lambda);
    }

    @Override
    public IFilterExpression filterExpression(IExpression expression) {
        return new LDAPFilter((Expression)expression);
    }

    @Override
    public IExpression first(IExpression collection, IExpression lambda) {
        return new First((Expression)collection, (LambdaExpression)lambda);
    }

    @Override
    public IExpression flatten(IExpression collection) {
        return new Flatten((Expression)collection);
    }

    @Override
    public IExpression function(Object function, IExpression[] args) {
        try {
            return (IExpression)((Constructor)function).newInstance(new Object[]{ExpressionFactory.convertArray(args)});
        }
        catch (IllegalArgumentException e) {
            throw e;
        }
        catch (InvocationTargetException e) {
            Throwable t = e.getCause();
            if (t instanceof RuntimeException) {
                throw (RuntimeException)t;
            }
            throw new RuntimeException(t);
        }
        catch (InstantiationException e) {
            throw new RuntimeException(e);
        }
        catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public Map<String, ? extends Object> getFunctionMap() {
        return functionMap;
    }

    @Override
    public IExpression greater(IExpression lhs, IExpression rhs) {
        return new Compare((Expression)lhs, (Expression)rhs, false, false);
    }

    @Override
    public IExpression greaterEqual(IExpression lhs, IExpression rhs) {
        return new Compare((Expression)lhs, (Expression)rhs, false, true);
    }

    @Override
    public IExpression indexedParameter(int index) {
        return new Parameter(index);
    }

    @Override
    public IExpression intersect(IExpression c1, IExpression c2) {
        return new Intersect((Expression)c1, (Expression)c2);
    }

    @Override
    public IExpression lambda(IExpression variable, IExpression body) {
        return new LambdaExpression((Variable)variable, (Expression)body);
    }

    @Override
    public IExpression lambda(IExpression variable, IExpression[] assignments, IExpression body) {
        if (assignments.length == 0) {
            return this.lambda(variable, body);
        }
        Assignment[] asgns = new Assignment[assignments.length];
        System.arraycopy(assignments, 0, asgns, 0, assignments.length);
        return new CurryedLambdaExpression((Variable)variable, asgns, (Expression)body);
    }

    @Override
    public IExpression latest(IExpression collection) {
        return new Latest((Expression)collection);
    }

    @Override
    public IExpression less(IExpression lhs, IExpression rhs) {
        return new Compare((Expression)lhs, (Expression)rhs, true, false);
    }

    @Override
    public IExpression lessEqual(IExpression lhs, IExpression rhs) {
        return new Compare((Expression)lhs, (Expression)rhs, true, true);
    }

    @Override
    public IExpression limit(IExpression collection, IExpression limit) {
        return new Limit((Expression)collection, (Expression)limit);
    }

    @Override
    public IExpression limit(IExpression collection, int count) {
        return new Limit((Expression)collection, Literal.create(new Integer(count)));
    }

    @Override
    public IExpression matches(IExpression lhs, IExpression rhs) {
        return new Matches((Expression)lhs, (Expression)rhs);
    }

    @Override
    public <T> IMatchExpression<T> matchExpression(IExpression expression, Object[] parameters) {
        if (expression instanceof IMatchExpression) {
            if (parameters.length > 0) {
                throw new IllegalArgumentException("IMatchExpression cannot be parameterized (it already is)");
            }
            return (IMatchExpression)expression;
        }
        if (expression instanceof IContextExpression) {
            throw new IllegalArgumentException("IContextExpression cannot be turned into a match expression");
        }
        return new MatchExpression((Expression)expression, parameters);
    }

    @Override
    public IExpression member(IExpression target, String name) {
        if ("empty".equals(name)) {
            return new Member.EmptyMember((Expression)target);
        }
        if ("length".equals(name)) {
            return new Member.LengthMember((Expression)target);
        }
        return new Member.DynamicMember((Expression)target, name);
    }

    @Override
    public IExpression memberCall(IExpression target, String name, IExpression[] args) {
        if (args.length == 0) {
            return this.member(target, name);
        }
        Expression[] eargs = ExpressionFactory.convertArray(args);
        StringBuffer bld = new StringBuffer();
        bld.append("Don't know how to do a member call with ");
        bld.append(name);
        bld.append('(');
        Expression.elementsToString(bld, null, eargs);
        bld.append(')');
        throw new IllegalArgumentException(bld.toString());
    }

    @Override
    public IExpression normalize(List<? extends IExpression> operands, int expressionType) {
        return Expression.normalize(operands, expressionType);
    }

    @Override
    public IExpression not(IExpression operand) {
        if (operand instanceof Equals) {
            Equals eq = (Equals)operand;
            return new Equals(eq.lhs, eq.rhs, !eq.negate);
        }
        if (operand instanceof Compare) {
            Compare cmp = (Compare)operand;
            return new Compare(cmp.lhs, cmp.rhs, !cmp.compareLess, !cmp.equalOK);
        }
        if (operand instanceof Not) {
            return ((Not)operand).operand;
        }
        return new Not((Expression)operand);
    }

    @Override
    public IExpression or(IExpression[] operands) {
        if (operands.length == 0) {
            return Literal.TRUE_CONSTANT;
        }
        if (operands.length == 1) {
            return operands[0];
        }
        return new Or(ExpressionFactory.convertArray(operands));
    }

    @Override
    public IExpression pipe(IExpression[] operands) {
        return Pipe.createPipe(ExpressionFactory.convertArray(operands));
    }

    @Override
    public IExpression select(IExpression collection, IExpression lambda) {
        return new Select((Expression)collection, (LambdaExpression)lambda);
    }

    @Override
    public IExpression thisVariable() {
        return THIS;
    }

    @Override
    public IExpression toExpression(IQuery<?> query) {
        Literal queryConstant = Literal.create(query);
        return new WrappedIQuery(new Expression[]{queryConstant});
    }

    @Override
    public IExpression traverse(IExpression collection, IExpression lambda) {
        return new Traverse((Expression)collection, (LambdaExpression)lambda);
    }

    @Override
    public IExpression union(IExpression c1, IExpression c2) {
        return new Union((Expression)c1, (Expression)c2);
    }

    @Override
    public IExpression unique(IExpression collection, IExpression cache) {
        return new Unique((Expression)collection, (Expression)cache);
    }

    @Override
    public IExpression variable(String name) {
        if ("everything".equals(name)) {
            return EVERYTHING;
        }
        if ("this".equals(name)) {
            return THIS;
        }
        return new Variable(name);
    }
}

