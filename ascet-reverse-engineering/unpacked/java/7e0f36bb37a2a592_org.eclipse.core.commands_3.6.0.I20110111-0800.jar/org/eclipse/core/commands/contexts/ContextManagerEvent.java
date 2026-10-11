/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands.contexts;

import java.util.Set;
import org.eclipse.core.commands.common.AbstractBitSetEvent;
import org.eclipse.core.commands.contexts.ContextManager;

public final class ContextManagerEvent
extends AbstractBitSetEvent {
    private static final int CHANGED_CONTEXT_DEFINED = 2;
    private static final int CHANGED_CONTEXTS_ACTIVE = 1;
    private final String contextId;
    private final ContextManager contextManager;
    private final Set previouslyActiveContextIds;

    public ContextManagerEvent(ContextManager contextManager, String contextId, boolean contextIdAdded, boolean activeContextsChanged, Set previouslyActiveContextIds) {
        if (contextManager == null) {
            throw new NullPointerException();
        }
        this.contextManager = contextManager;
        this.contextId = contextId;
        this.previouslyActiveContextIds = previouslyActiveContextIds;
        if (contextIdAdded) {
            this.changedValues |= 2;
        }
        if (activeContextsChanged) {
            this.changedValues |= 1;
        }
    }

    public final String getContextId() {
        return this.contextId;
    }

    public final ContextManager getContextManager() {
        return this.contextManager;
    }

    public final Set getPreviouslyActiveContextIds() {
        return this.previouslyActiveContextIds;
    }

    public final boolean isActiveContextsChanged() {
        return (this.changedValues & 1) != 0;
    }

    public final boolean isContextChanged() {
        return this.contextId != null;
    }

    public final boolean isContextDefined() {
        return (this.changedValues & 2) != 0 && this.contextId != null;
    }
}

