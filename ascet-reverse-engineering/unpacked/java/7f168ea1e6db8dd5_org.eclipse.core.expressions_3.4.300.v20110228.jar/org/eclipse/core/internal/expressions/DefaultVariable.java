/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.internal.expressions;

import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;

public final class DefaultVariable
implements IEvaluationContext {
    private Object fDefaultVariable;
    private IEvaluationContext fParent;
    private IEvaluationContext fManagedPool;

    public DefaultVariable(IEvaluationContext parent, Object defaultVariable) {
        Assert.isNotNull((Object)parent);
        Assert.isNotNull((Object)defaultVariable);
        this.fParent = parent;
        while (parent instanceof DefaultVariable) {
            parent = parent.getParent();
        }
        this.fManagedPool = parent;
        this.fDefaultVariable = defaultVariable;
    }

    public IEvaluationContext getParent() {
        return this.fParent;
    }

    public IEvaluationContext getRoot() {
        return this.fParent.getRoot();
    }

    public Object getDefaultVariable() {
        return this.fDefaultVariable;
    }

    public void setAllowPluginActivation(boolean value) {
        this.fParent.setAllowPluginActivation(value);
    }

    public boolean getAllowPluginActivation() {
        return this.fParent.getAllowPluginActivation();
    }

    public void addVariable(String name, Object value) {
        this.fManagedPool.addVariable(name, value);
    }

    public Object removeVariable(String name) {
        return this.fManagedPool.removeVariable(name);
    }

    public Object getVariable(String name) {
        return this.fManagedPool.getVariable(name);
    }

    public Object resolveVariable(String name, Object[] args) throws CoreException {
        return this.fManagedPool.resolveVariable(name, args);
    }
}

