/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.contexts.Context
 *  org.eclipse.core.commands.contexts.ContextManager
 *  org.eclipse.core.commands.contexts.IContextManagerListener
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.contexts;

import java.util.Collection;
import java.util.Iterator;
import org.eclipse.core.commands.contexts.Context;
import org.eclipse.core.commands.contexts.ContextManager;
import org.eclipse.core.commands.contexts.IContextManagerListener;
import org.eclipse.core.expressions.Expression;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.ISourceProvider;
import org.eclipse.ui.contexts.IContextActivation;
import org.eclipse.ui.contexts.IContextService;
import org.eclipse.ui.internal.contexts.ContextActivation;
import org.eclipse.ui.internal.contexts.ContextAuthority;
import org.eclipse.ui.internal.contexts.ContextPersistence;

public final class ContextService
implements IContextService {
    private final ContextAuthority contextAuthority;
    private final ContextManager contextManager;
    private final ContextPersistence contextPersistence;

    public ContextService(ContextManager contextManager) {
        if (contextManager == null) {
            throw new NullPointerException("Cannot create a context service with a null manager");
        }
        this.contextManager = contextManager;
        this.contextAuthority = new ContextAuthority(contextManager, this);
        this.contextPersistence = new ContextPersistence(contextManager);
    }

    public void deferUpdates(boolean defer) {
        this.contextManager.deferUpdates(defer);
    }

    public final IContextActivation activateContext(String contextId) {
        return this.activateContext(contextId, null);
    }

    public final IContextActivation activateContext(String contextId, Expression expression) {
        ContextActivation activation = new ContextActivation(contextId, expression, this);
        this.contextAuthority.activateContext(activation);
        return activation;
    }

    public IContextActivation activateContext(String contextId, Expression expression, boolean global) {
        return this.activateContext(contextId, expression);
    }

    public final IContextActivation activateContext(String contextId, Expression expression, int sourcePriority) {
        return this.activateContext(contextId, expression);
    }

    public final void addContextManagerListener(IContextManagerListener listener) {
        this.contextManager.addContextManagerListener(listener);
    }

    public final void addSourceProvider(ISourceProvider provider) {
        this.contextAuthority.addSourceProvider(provider);
    }

    public final void deactivateContext(IContextActivation activation) {
        if (activation.getContextService() == this) {
            this.contextAuthority.deactivateContext(activation);
        }
    }

    public final void deactivateContexts(Collection activations) {
        Iterator activationItr = activations.iterator();
        while (activationItr.hasNext()) {
            IContextActivation activation = (IContextActivation)activationItr.next();
            this.deactivateContext(activation);
        }
    }

    public final void dispose() {
        this.contextPersistence.dispose();
        this.contextAuthority.dispose();
    }

    public final Collection getActiveContextIds() {
        return this.contextManager.getActiveContextIds();
    }

    public final Context getContext(String contextId) {
        return this.contextManager.getContext(contextId);
    }

    public final Collection getDefinedContextIds() {
        return this.contextManager.getDefinedContextIds();
    }

    public final Context[] getDefinedContexts() {
        return this.contextManager.getDefinedContexts();
    }

    public final int getShellType(Shell shell) {
        return this.contextAuthority.getShellType(shell);
    }

    public final void readRegistry() {
        this.contextPersistence.read();
    }

    public final boolean registerShell(Shell shell, int type) {
        return this.contextAuthority.registerShell(shell, type);
    }

    public final void removeContextManagerListener(IContextManagerListener listener) {
        this.contextManager.removeContextManagerListener(listener);
    }

    public final void removeSourceProvider(ISourceProvider provider) {
        this.contextAuthority.removeSourceProvider(provider);
    }

    public final boolean unregisterShell(Shell shell) {
        return this.contextAuthority.unregisterShell(shell);
    }

    public final void updateShellKludge() {
        this.contextAuthority.updateShellKludge();
    }

    public final void updateShellKludge(Shell shell) {
        Shell currentActiveShell = this.contextAuthority.getActiveShell();
        if (currentActiveShell != shell) {
            this.contextAuthority.sourceChanged(1024, "activeShell", shell);
        }
    }
}

