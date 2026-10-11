/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.core.commands.contexts.Context
 *  org.eclipse.core.commands.contexts.ContextManager
 *  org.eclipse.core.commands.contexts.IContextListener
 *  org.eclipse.core.commands.contexts.IContextManagerListener
 */
package org.eclipse.ui.internal.contexts;

import org.eclipse.core.commands.contexts.Context;
import org.eclipse.core.commands.contexts.ContextManager;
import org.eclipse.core.commands.contexts.IContextManagerListener;
import org.eclipse.ui.contexts.IContext;
import org.eclipse.ui.contexts.IContextListener;
import org.eclipse.ui.contexts.NotDefinedException;
import org.eclipse.ui.internal.contexts.LegacyContextListenerWrapper;
import org.eclipse.ui.internal.util.Util;

public class ContextLegacyWrapper
implements IContext {
    private final ContextManager contextManager;
    private final Context wrappedContext;

    public ContextLegacyWrapper(Context context, ContextManager contextManager) {
        if (context == null) {
            throw new NullPointerException("A wrapper cannot be created on a null context");
        }
        if (contextManager == null) {
            throw new NullPointerException("A wrapper cannot be created with a null manager");
        }
        this.wrappedContext = context;
        this.contextManager = contextManager;
    }

    public void addContextListener(IContextListener contextListener) {
        LegacyContextListenerWrapper wrapper = new LegacyContextListenerWrapper(contextListener, this.contextManager, this);
        this.wrappedContext.addContextListener((org.eclipse.core.commands.contexts.IContextListener)wrapper);
        this.contextManager.addContextManagerListener((IContextManagerListener)wrapper);
    }

    public int compareTo(Object o) {
        return Util.compare((Comparable)this.wrappedContext, (Comparable)((ContextLegacyWrapper)o).wrappedContext);
    }

    public String getId() {
        return this.wrappedContext.getId();
    }

    public String getName() throws NotDefinedException {
        try {
            return this.wrappedContext.getName();
        }
        catch (org.eclipse.core.commands.common.NotDefinedException e) {
            throw new NotDefinedException(e);
        }
    }

    public String getParentId() throws NotDefinedException {
        try {
            return this.wrappedContext.getParentId();
        }
        catch (org.eclipse.core.commands.common.NotDefinedException e) {
            throw new NotDefinedException(e);
        }
    }

    public boolean isDefined() {
        return this.wrappedContext.isDefined();
    }

    public boolean isEnabled() {
        return this.contextManager.getActiveContextIds().contains(this.wrappedContext.getId());
    }

    public void removeContextListener(IContextListener contextListener) {
        LegacyContextListenerWrapper wrapper = new LegacyContextListenerWrapper(contextListener, this.contextManager, this);
        this.wrappedContext.removeContextListener((org.eclipse.core.commands.contexts.IContextListener)wrapper);
        this.contextManager.removeContextManagerListener((IContextManagerListener)wrapper);
    }
}

