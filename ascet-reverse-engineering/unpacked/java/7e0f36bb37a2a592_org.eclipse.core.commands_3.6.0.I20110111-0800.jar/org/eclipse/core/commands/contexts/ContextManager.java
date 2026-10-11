/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands.contexts;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.eclipse.core.commands.common.HandleObjectManager;
import org.eclipse.core.commands.contexts.Context;
import org.eclipse.core.commands.contexts.ContextEvent;
import org.eclipse.core.commands.contexts.ContextManagerEvent;
import org.eclipse.core.commands.contexts.IContextListener;
import org.eclipse.core.commands.contexts.IContextManagerListener;
import org.eclipse.core.commands.util.Tracing;
import org.eclipse.core.internal.commands.util.Util;

public final class ContextManager
extends HandleObjectManager
implements IContextListener {
    public static boolean DEBUG = false;
    private Set activeContextIds = new HashSet();
    private boolean caching = false;
    private int cachingRef = 0;
    private boolean activeContextsChange = false;
    private Set oldIds = null;

    public void deferUpdates(boolean defer) {
        if (defer) {
            ++this.cachingRef;
            if (this.cachingRef == 1) {
                this.setEventCaching(true);
            }
        } else {
            --this.cachingRef;
            if (this.cachingRef == 0) {
                this.setEventCaching(false);
            }
        }
    }

    public final void addActiveContext(String contextId) {
        if (this.activeContextIds.contains(contextId)) {
            return;
        }
        this.activeContextsChange = true;
        if (this.caching) {
            this.activeContextIds.add(contextId);
        } else {
            HashSet previouslyActiveContextIds = new HashSet(this.activeContextIds);
            this.activeContextIds.add(contextId);
            this.fireContextManagerChanged(new ContextManagerEvent(this, null, false, true, previouslyActiveContextIds));
        }
        if (DEBUG) {
            Tracing.printTrace("CONTEXTS", this.activeContextIds.toString());
        }
    }

    public final void addContextManagerListener(IContextManagerListener listener) {
        this.addListenerObject(listener);
    }

    public final void contextChanged(ContextEvent contextEvent) {
        if (contextEvent.isDefinedChanged()) {
            Context context = contextEvent.getContext();
            String contextId = context.getId();
            boolean contextIdAdded = context.isDefined();
            if (contextIdAdded) {
                this.definedHandleObjects.add(context);
            } else {
                this.definedHandleObjects.remove(context);
            }
            if (this.isListenerAttached()) {
                this.fireContextManagerChanged(new ContextManagerEvent(this, contextId, contextIdAdded, false, null));
            }
        }
    }

    private final void fireContextManagerChanged(ContextManagerEvent event) {
        if (event == null) {
            throw new NullPointerException();
        }
        Object[] listeners = this.getListeners();
        int i = 0;
        while (i < listeners.length) {
            IContextManagerListener listener = (IContextManagerListener)listeners[i];
            listener.contextManagerChanged(event);
            ++i;
        }
    }

    public final Set getActiveContextIds() {
        return Collections.unmodifiableSet(this.activeContextIds);
    }

    public final Context getContext(String contextId) {
        this.checkId(contextId);
        Context context = (Context)this.handleObjectsById.get(contextId);
        if (context == null) {
            context = new Context(contextId);
            this.handleObjectsById.put(contextId, context);
            context.addContextListener(this);
        }
        return context;
    }

    public final Set getDefinedContextIds() {
        return this.getDefinedHandleObjectIds();
    }

    public final Context[] getDefinedContexts() {
        return this.definedHandleObjects.toArray(new Context[this.definedHandleObjects.size()]);
    }

    public final void removeActiveContext(String contextId) {
        if (!this.activeContextIds.contains(contextId)) {
            return;
        }
        this.activeContextsChange = true;
        if (this.caching) {
            this.activeContextIds.remove(contextId);
        } else {
            HashSet previouslyActiveContextIds = new HashSet(this.activeContextIds);
            this.activeContextIds.remove(contextId);
            this.fireContextManagerChanged(new ContextManagerEvent(this, null, false, true, previouslyActiveContextIds));
        }
        if (DEBUG) {
            Tracing.printTrace("CONTEXTS", this.activeContextIds.toString());
        }
    }

    public final void removeContextManagerListener(IContextManagerListener listener) {
        this.removeListenerObject(listener);
    }

    public final void setActiveContextIds(Set activeContextIds) {
        if (Util.equals(this.activeContextIds, activeContextIds)) {
            return;
        }
        this.activeContextsChange = true;
        Set previouslyActiveContextIds = this.activeContextIds;
        if (activeContextIds != null) {
            this.activeContextIds = new HashSet();
            this.activeContextIds.addAll(activeContextIds);
        } else {
            this.activeContextIds = null;
        }
        if (DEBUG) {
            Tracing.printTrace("CONTEXTS", activeContextIds == null ? "none" : activeContextIds.toString());
        }
        if (!this.caching) {
            this.fireContextManagerChanged(new ContextManagerEvent(this, null, false, true, previouslyActiveContextIds));
        }
    }

    private void setEventCaching(boolean cache) {
        if (this.caching == cache) {
            return;
        }
        this.caching = cache;
        boolean fireChange = this.activeContextsChange;
        Set holdOldIds = this.oldIds == null ? Collections.EMPTY_SET : this.oldIds;
        this.oldIds = this.caching ? new HashSet(this.activeContextIds) : null;
        this.activeContextsChange = false;
        if (!this.caching && fireChange) {
            this.fireContextManagerChanged(new ContextManagerEvent(this, null, false, true, holdOldIds));
        }
    }
}

