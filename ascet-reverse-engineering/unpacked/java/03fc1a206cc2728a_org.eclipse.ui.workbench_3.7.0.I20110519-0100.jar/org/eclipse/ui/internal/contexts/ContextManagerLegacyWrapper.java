/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.core.commands.contexts.Context
 *  org.eclipse.core.commands.contexts.ContextManager
 *  org.eclipse.core.commands.contexts.ContextManagerEvent
 *  org.eclipse.core.commands.contexts.IContextManagerListener
 */
package org.eclipse.ui.internal.contexts;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.core.commands.contexts.Context;
import org.eclipse.core.commands.contexts.ContextManager;
import org.eclipse.core.commands.contexts.ContextManagerEvent;
import org.eclipse.ui.contexts.IContext;
import org.eclipse.ui.contexts.IContextManager;
import org.eclipse.ui.contexts.IContextManagerListener;
import org.eclipse.ui.internal.contexts.ContextLegacyWrapper;

public final class ContextManagerLegacyWrapper
implements org.eclipse.core.commands.contexts.IContextManagerListener,
IContextManager {
    private final ContextManager contextManager;
    private List contextManagerListeners;

    public ContextManagerLegacyWrapper(ContextManager contextManager) {
        if (contextManager == null) {
            throw new NullPointerException("The context manager cannot be null");
        }
        this.contextManager = contextManager;
        this.contextManager.addContextManagerListener((org.eclipse.core.commands.contexts.IContextManagerListener)this);
    }

    public void addContextManagerListener(IContextManagerListener contextManagerListener) {
        if (contextManagerListener == null) {
            throw new NullPointerException();
        }
        if (this.contextManagerListeners == null) {
            this.contextManagerListeners = new ArrayList();
        }
        if (!this.contextManagerListeners.contains(contextManagerListener)) {
            this.contextManagerListeners.add(contextManagerListener);
        }
    }

    public void contextManagerChanged(ContextManagerEvent contextManagerEvent) {
        HashSet<String> previouslyDefinedContextIds;
        boolean definedContextsChanged;
        String contextId = contextManagerEvent.getContextId();
        if (contextId == null) {
            definedContextsChanged = false;
            previouslyDefinedContextIds = null;
        } else {
            definedContextsChanged = true;
            previouslyDefinedContextIds = new HashSet<String>();
            previouslyDefinedContextIds.addAll(this.contextManager.getDefinedContextIds());
            if (contextManagerEvent.isContextDefined()) {
                previouslyDefinedContextIds.remove(contextId);
            } else {
                previouslyDefinedContextIds.add(contextId);
            }
        }
        this.fireContextManagerChanged(new org.eclipse.ui.contexts.ContextManagerEvent(this, definedContextsChanged, contextManagerEvent.isActiveContextsChanged(), previouslyDefinedContextIds, contextManagerEvent.getPreviouslyActiveContextIds()));
    }

    protected void fireContextManagerChanged(org.eclipse.ui.contexts.ContextManagerEvent contextManagerEvent) {
        if (contextManagerEvent == null) {
            throw new NullPointerException();
        }
        if (this.contextManagerListeners != null) {
            int i = 0;
            while (i < this.contextManagerListeners.size()) {
                ((IContextManagerListener)this.contextManagerListeners.get(i)).contextManagerChanged(contextManagerEvent);
                ++i;
            }
        }
    }

    public IContext getContext(String contextId) {
        return new ContextLegacyWrapper(this.contextManager.getContext(contextId), this.contextManager);
    }

    public SortedSet getDefinedContextIds() {
        return new DepthSortedContextIdSet(this.contextManager.getDefinedContextIds());
    }

    public SortedSet getEnabledContextIds() {
        return new DepthSortedContextIdSet(this.contextManager.getActiveContextIds());
    }

    public void removeContextManagerListener(IContextManagerListener contextManagerListener) {
        if (contextManagerListener == null) {
            throw new NullPointerException();
        }
        if (this.contextManagerListeners != null) {
            this.contextManagerListeners.remove(contextManagerListener);
        }
    }

    public void setEnabledContextIds(Set enabledContextIds) {
        this.contextManager.setActiveContextIds(enabledContextIds);
    }

    private class ContextIdDepthComparator
    implements Comparator {
        private ContextIdDepthComparator() {
        }

        public final int compare(Object object1, Object object2) {
            String parentId;
            String contextId1 = (String)object1;
            String contextId2 = (String)object2;
            int depth1 = 0;
            Context context = ContextManagerLegacyWrapper.this.contextManager.getContext(contextId1);
            try {
                parentId = context.getParentId();
                while (parentId != null) {
                    ++depth1;
                    context = ContextManagerLegacyWrapper.this.contextManager.getContext(parentId);
                    parentId = context.getParentId();
                }
            }
            catch (NotDefinedException notDefinedException) {}
            int depth2 = 0;
            context = ContextManagerLegacyWrapper.this.contextManager.getContext(contextId2);
            try {
                parentId = context.getParentId();
                while (parentId != null) {
                    ++depth2;
                    context = ContextManagerLegacyWrapper.this.contextManager.getContext(parentId);
                    parentId = context.getParentId();
                }
            }
            catch (NotDefinedException notDefinedException) {}
            int compare = depth2 - depth1;
            if (compare == 0) {
                compare = contextId1.compareTo(contextId2);
            }
            return compare;
        }
    }

    private class DepthSortedContextIdSet
    extends TreeSet {
        private static final long serialVersionUID = 3257291326872892465L;

        private DepthSortedContextIdSet(Set contextIds) {
            super(new ContextIdDepthComparator());
            this.addAll(contextIds);
        }
    }
}

