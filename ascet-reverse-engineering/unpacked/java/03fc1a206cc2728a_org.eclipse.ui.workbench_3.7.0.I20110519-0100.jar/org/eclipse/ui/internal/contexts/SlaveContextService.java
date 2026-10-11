/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.contexts.Context
 *  org.eclipse.core.commands.contexts.IContextManagerListener
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.contexts;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.commands.contexts.Context;
import org.eclipse.core.commands.contexts.IContextManagerListener;
import org.eclipse.core.expressions.Expression;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.ISourceProvider;
import org.eclipse.ui.contexts.IContextActivation;
import org.eclipse.ui.contexts.IContextService;
import org.eclipse.ui.internal.contexts.ContextActivation;
import org.eclipse.ui.internal.expressions.AndExpression;

public class SlaveContextService
implements IContextService {
    protected IContextService fParentService;
    protected Expression fDefaultExpression;
    protected Set fParentActivations;
    protected Map fLocalActivations;
    private Collection fContextManagerListeners;
    private Collection fSourceProviders;
    private Collection fRegisteredShells;

    public SlaveContextService(IContextService parentService, Expression defaultExpression) {
        if (parentService == null) {
            throw new NullPointerException("The parent context service must not be null");
        }
        this.fParentService = parentService;
        this.fDefaultExpression = defaultExpression;
        this.fParentActivations = new HashSet();
        this.fLocalActivations = new HashMap();
        this.fContextManagerListeners = new ArrayList();
        this.fSourceProviders = new ArrayList();
        this.fRegisteredShells = new ArrayList();
    }

    public void deferUpdates(boolean defer) {
        this.fParentService.deferUpdates(defer);
    }

    public IContextActivation activateContext(String contextId) {
        ContextActivation activation = new ContextActivation(contextId, this.fDefaultExpression, this);
        return this.doActivateContext(activation);
    }

    public IContextActivation activateContext(String contextId, Expression expression) {
        return this.activateContext(contextId, expression, false);
    }

    public IContextActivation activateContext(String contextId, Expression expression, boolean global) {
        if (global) {
            IContextActivation activation = this.fParentService.activateContext(contextId, expression, global);
            this.fParentActivations.add(activation);
            return activation;
        }
        Expression aExpression = this.fDefaultExpression;
        if (expression != null && this.fDefaultExpression != null) {
            AndExpression andExpression = new AndExpression();
            andExpression.add(expression);
            andExpression.add(this.fDefaultExpression);
            aExpression = andExpression;
        } else if (expression != null) {
            aExpression = expression;
        }
        ContextActivation activation = new ContextActivation(contextId, aExpression, this);
        return this.doActivateContext(activation);
    }

    public IContextActivation activateContext(String contextId, Expression expression, int sourcePriorities) {
        return this.activateContext(contextId, expression);
    }

    public void addContextManagerListener(IContextManagerListener listener) {
        if (!this.fContextManagerListeners.contains(listener)) {
            this.fContextManagerListeners.add(listener);
        }
        this.fParentService.addContextManagerListener(listener);
    }

    public void addSourceProvider(ISourceProvider provider) {
        if (!this.fSourceProviders.contains(provider)) {
            this.fSourceProviders.add(provider);
        }
        this.fParentService.addSourceProvider(provider);
    }

    public void deactivateContext(IContextActivation activation) {
        IContextActivation parentActivation = null;
        parentActivation = this.fLocalActivations.containsKey(activation) ? (IContextActivation)this.fLocalActivations.remove(activation) : activation;
        if (parentActivation != null) {
            this.fParentService.deactivateContext(parentActivation);
            this.fParentActivations.remove(parentActivation);
        }
    }

    public void deactivateContexts(Collection activations) {
        Object[] array = activations.toArray();
        int i = 0;
        while (i < array.length) {
            this.deactivateContext((IContextActivation)array[i]);
            array[i] = null;
            ++i;
        }
    }

    public void dispose() {
        int i;
        Object[] array;
        this.fParentService.deactivateContexts(this.fParentActivations);
        this.fParentActivations.clear();
        this.fLocalActivations.clear();
        if (!this.fContextManagerListeners.isEmpty()) {
            array = this.fContextManagerListeners.toArray();
            i = 0;
            while (i < array.length) {
                this.removeContextManagerListener((IContextManagerListener)array[i]);
                ++i;
            }
            this.fContextManagerListeners.clear();
        }
        if (!this.fSourceProviders.isEmpty()) {
            array = this.fSourceProviders.toArray();
            i = 0;
            while (i < array.length) {
                this.removeSourceProvider((ISourceProvider)array[i]);
                ++i;
            }
            this.fSourceProviders.clear();
        }
        if (!this.fRegisteredShells.isEmpty()) {
            array = this.fRegisteredShells.toArray();
            i = 0;
            while (i < array.length) {
                this.unregisterShell((Shell)array[i]);
                ++i;
            }
            this.fRegisteredShells.clear();
        }
    }

    protected IContextActivation doActivateContext(IContextActivation activation) {
        IContextActivation parentActivation = this.fParentService.activateContext(activation.getContextId(), activation.getExpression());
        this.fParentActivations.add(parentActivation);
        this.fLocalActivations.put(activation, parentActivation);
        return activation;
    }

    public Collection getActiveContextIds() {
        return this.fParentService.getActiveContextIds();
    }

    public Context getContext(String contextId) {
        return this.fParentService.getContext(contextId);
    }

    public Collection getDefinedContextIds() {
        return this.fParentService.getDefinedContextIds();
    }

    public Context[] getDefinedContexts() {
        return this.fParentService.getDefinedContexts();
    }

    public int getShellType(Shell shell) {
        return this.fParentService.getShellType(shell);
    }

    public void readRegistry() {
        this.fParentService.readRegistry();
    }

    public boolean registerShell(Shell shell, int type) {
        if (!this.fRegisteredShells.contains(shell)) {
            this.fRegisteredShells.add(shell);
        }
        return this.fParentService.registerShell(shell, type);
    }

    public void removeContextManagerListener(IContextManagerListener listener) {
        this.fContextManagerListeners.remove(listener);
        this.fParentService.removeContextManagerListener(listener);
    }

    public void removeSourceProvider(ISourceProvider provider) {
        this.fSourceProviders.remove(provider);
        this.fParentService.removeSourceProvider(provider);
    }

    public boolean unregisterShell(Shell shell) {
        this.fRegisteredShells.remove(shell);
        return this.fParentService.unregisterShell(shell);
    }
}

