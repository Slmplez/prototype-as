/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.expressions;

import org.eclipse.core.runtime.CoreException;

public interface IEvaluationContext {
    public static final Object UNDEFINED_VARIABLE = new Object();

    public IEvaluationContext getParent();

    public IEvaluationContext getRoot();

    public void setAllowPluginActivation(boolean var1);

    public boolean getAllowPluginActivation();

    public Object getDefaultVariable();

    public void addVariable(String var1, Object var2);

    public Object removeVariable(String var1);

    public Object getVariable(String var1);

    public Object resolveVariable(String var1, Object[] var2) throws CoreException;
}

