/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.index.IIndexProvider;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EvaluationContext
implements IEvaluationContext {
    private static final Object[] noParameters = new Object[0];
    private static final EvaluationContext INSTANCE = new EvaluationContext(null, noParameters);
    final EvaluationContext parentContext;
    private final Object[] parameters;
    private IIndexProvider<?> indexProvider;

    public static IEvaluationContext create() {
        return INSTANCE;
    }

    public static IEvaluationContext create(IEvaluationContext parent, IExpression variable) {
        return new SingleVariableContext((EvaluationContext)parent, variable, ((EvaluationContext)parent).parameters);
    }

    public static IEvaluationContext create(IEvaluationContext parent, IExpression[] variables) {
        return EvaluationContext.create(parent, ((EvaluationContext)parent).parameters, variables);
    }

    public static IEvaluationContext create(IEvaluationContext parent, Object[] parameters, IExpression[] variables) {
        if (variables == null || variables.length == 0) {
            return EvaluationContext.create(parent, parameters);
        }
        if (parameters == null) {
            parameters = noParameters;
        }
        return variables.length == 1 ? new SingleVariableContext((EvaluationContext)parent, variables[0], parameters) : new MultiVariableContext((EvaluationContext)parent, variables, parameters);
    }

    public static IEvaluationContext create(IEvaluationContext parent, Object[] parameters) {
        if (parameters == null) {
            parameters = noParameters;
        }
        return new EvaluationContext((EvaluationContext)parent, parameters);
    }

    public static IEvaluationContext create(IExpression variable) {
        return new SingleVariableContext(INSTANCE, variable, noParameters);
    }

    public static IEvaluationContext create(IExpression[] variables) {
        return EvaluationContext.create(INSTANCE, noParameters, variables);
    }

    public static IEvaluationContext create(Object[] parameters, IExpression variable) {
        if (parameters == null) {
            parameters = noParameters;
        }
        return new SingleVariableContext(INSTANCE, variable, parameters);
    }

    public static IEvaluationContext create(Object[] parameters, IExpression[] variables) {
        return EvaluationContext.create(INSTANCE, parameters, variables);
    }

    EvaluationContext(EvaluationContext parentContext, Object[] parameters) {
        this.parentContext = parentContext;
        this.parameters = parameters;
    }

    @Override
    public final Object getParameter(int position) {
        return this.parameters[position];
    }

    @Override
    public Object getValue(IExpression variable) {
        if (this.parentContext == null) {
            throw new IllegalArgumentException(new StringBuffer("No such variable: ").append(variable).toString());
        }
        return this.parentContext.getValue(variable);
    }

    @Override
    public void setValue(IExpression variable, Object value) {
        if (this.parentContext == null) {
            throw new IllegalArgumentException(new StringBuffer("No such variable: ").append(variable).toString());
        }
        this.parentContext.setValue(variable, value);
    }

    @Override
    public IIndexProvider<?> getIndexProvider() {
        if (this.indexProvider == null) {
            if (this.parentContext == null) {
                return null;
            }
            return this.parentContext.getIndexProvider();
        }
        return this.indexProvider;
    }

    @Override
    public void setIndexProvider(IIndexProvider<?> indexProvider) {
        this.indexProvider = indexProvider;
    }

    public static class MultiVariableContext
    extends EvaluationContext {
        private final Object[] values;

        public MultiVariableContext(EvaluationContext parentContext, IExpression[] variables, Object[] parameters) {
            super(parentContext, parameters);
            this.values = new Object[variables.length * 2];
            int idx = 0;
            int ndx = 0;
            while (ndx < variables.length) {
                this.values[idx] = variables[ndx];
                ++ndx;
                idx += 2;
            }
        }

        public Object getValue(IExpression variable) {
            int idx = 0;
            while (idx < this.values.length) {
                if (this.values[idx++] == variable) {
                    return this.values[idx];
                }
                ++idx;
            }
            return this.parentContext.getValue(variable);
        }

        public void setValue(IExpression variable, Object value) {
            int idx = 0;
            while (idx < this.values.length) {
                if (this.values[idx++] == variable) {
                    this.values[idx] = value;
                    return;
                }
                ++idx;
            }
            this.parentContext.setValue(variable, value);
        }
    }

    public static class SingleVariableContext
    extends EvaluationContext {
        private Object value;
        private final IExpression variable;

        public SingleVariableContext(EvaluationContext parentContext, IExpression variable, Object[] parameters) {
            super(parentContext, parameters);
            this.variable = variable;
        }

        public Object getValue(IExpression var) {
            return this.variable == var ? this.value : this.parentContext.getValue(var);
        }

        public void setValue(IExpression var, Object val) {
            if (this.variable == var) {
                this.value = val;
            } else {
                this.parentContext.setValue(var, val);
            }
        }
    }
}

