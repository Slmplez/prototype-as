/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.contexts.ContextEvent
 *  org.eclipse.core.commands.contexts.ContextManager
 *  org.eclipse.core.commands.contexts.ContextManagerEvent
 *  org.eclipse.core.commands.contexts.IContextListener
 *  org.eclipse.core.commands.contexts.IContextManagerListener
 */
package org.eclipse.ui.internal.contexts;

import java.util.Set;
import org.eclipse.core.commands.contexts.ContextManager;
import org.eclipse.core.commands.contexts.ContextManagerEvent;
import org.eclipse.core.commands.contexts.IContextManagerListener;
import org.eclipse.ui.contexts.ContextEvent;
import org.eclipse.ui.contexts.IContext;
import org.eclipse.ui.contexts.IContextListener;
import org.eclipse.ui.internal.contexts.ContextLegacyWrapper;

public class LegacyContextListenerWrapper
implements org.eclipse.core.commands.contexts.IContextListener,
IContextManagerListener {
    private final IContext context;
    private final ContextManager contextManager;
    private final IContextListener wrappedListener;

    public LegacyContextListenerWrapper(IContextListener listener, ContextManager contextManager, IContext context) {
        if (listener == null) {
            throw new NullPointerException("Cannot create a listener wrapper on a null listener");
        }
        if (contextManager == null) {
            throw new NullPointerException("Cannot create a listener wrapper with a null context manager");
        }
        if (context == null) {
            throw new NullPointerException("Cannot create a listener wrapper with a null context");
        }
        this.wrappedListener = listener;
        this.contextManager = contextManager;
        this.context = context;
    }

    public final void contextChanged(org.eclipse.core.commands.contexts.ContextEvent contextEvent) {
        this.wrappedListener.contextChanged(new ContextEvent(new ContextLegacyWrapper(contextEvent.getContext(), this.contextManager), contextEvent.isDefinedChanged(), false, contextEvent.isNameChanged(), contextEvent.isParentIdChanged()));
    }

    public final void contextManagerChanged(ContextManagerEvent event) {
        boolean enabledChanged;
        String contextId = this.context.getId();
        if (event.isActiveContextsChanged()) {
            Set previousContexts = event.getPreviouslyActiveContextIds();
            Set currentContexts = this.contextManager.getActiveContextIds();
            enabledChanged = previousContexts != null && previousContexts.contains(contextId) && (currentContexts == null || currentContexts.contains(contextId)) ? true : currentContexts != null && currentContexts.contains(contextId) && (previousContexts == null || previousContexts.contains(contextId));
        } else {
            enabledChanged = false;
        }
        this.wrappedListener.contextChanged(new ContextEvent(this.context, false, enabledChanged, false, false));
    }

    public final boolean equals(Object object) {
        if (object instanceof LegacyContextListenerWrapper) {
            LegacyContextListenerWrapper other = (LegacyContextListenerWrapper)object;
            return this.wrappedListener.equals(other.wrappedListener);
        }
        if (object instanceof IContextListener) {
            IContextListener other = (IContextListener)object;
            return this.wrappedListener.equals(other);
        }
        return false;
    }

    public final int hashCode() {
        return this.wrappedListener.hashCode();
    }
}

