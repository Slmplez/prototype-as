/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.expressions;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.expressions.IVariableResolver;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;

public class EvaluationContext
implements IEvaluationContext {
    private IEvaluationContext fParent;
    private Object fDefaultVariable;
    private Map fVariables;
    private IVariableResolver[] fVariableResolvers;
    private Boolean fAllowPluginActivation;

    public EvaluationContext(IEvaluationContext parent, Object defaultVariable) {
        Assert.isNotNull((Object)defaultVariable);
        this.fParent = parent;
        this.fDefaultVariable = defaultVariable;
    }

    public EvaluationContext(IEvaluationContext parent, Object defaultVariable, IVariableResolver[] resolvers) {
        Assert.isNotNull((Object)defaultVariable);
        Assert.isNotNull((Object)resolvers);
        this.fParent = parent;
        this.fDefaultVariable = defaultVariable;
        this.fVariableResolvers = resolvers;
    }

    public IEvaluationContext getParent() {
        return this.fParent;
    }

    public IEvaluationContext getRoot() {
        if (this.fParent == null) {
            return this;
        }
        return this.fParent.getRoot();
    }

    public Object getDefaultVariable() {
        return this.fDefaultVariable;
    }

    public void setAllowPluginActivation(boolean value) {
        this.fAllowPluginActivation = value ? Boolean.TRUE : Boolean.FALSE;
    }

    public boolean getAllowPluginActivation() {
        if (this.fAllowPluginActivation == null) {
            if (this.fParent != null) {
                return this.fParent.getAllowPluginActivation();
            }
            return false;
        }
        return this.fAllowPluginActivation;
    }

    public void addVariable(String name, Object value) {
        Assert.isNotNull((Object)name);
        Assert.isNotNull((Object)value);
        if (this.fVariables == null) {
            this.fVariables = new HashMap();
        }
        this.fVariables.put(name, value);
    }

    public Object removeVariable(String name) {
        Assert.isNotNull((Object)name);
        if (this.fVariables == null) {
            return null;
        }
        return this.fVariables.remove(name);
    }

    public Object getVariable(String name) {
        Assert.isNotNull((Object)name);
        Object result = null;
        if (this.fVariables != null) {
            result = this.fVariables.get(name);
        }
        if (result != null) {
            return result;
        }
        if (this.fParent != null) {
            return this.fParent.getVariable(name);
        }
        return null;
    }

    public Object resolveVariable(String name, Object[] args) throws CoreException {
        if (this.fVariableResolvers != null && this.fVariableResolvers.length > 0) {
            int i = 0;
            while (i < this.fVariableResolvers.length) {
                IVariableResolver resolver = this.fVariableResolvers[i];
                Object variable = resolver.resolve(name, args);
                if (variable != null) {
                    return variable;
                }
                ++i;
            }
        }
        if (this.fParent != null) {
            return this.fParent.resolveVariable(name, args);
        }
        return null;
    }
}

