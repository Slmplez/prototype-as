/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.contexts;

import java.util.Set;
import org.eclipse.ui.contexts.IContextManager;
import org.eclipse.ui.internal.util.Util;

public final class ContextManagerEvent {
    private final IContextManager contextManager;
    private final boolean definedContextIdsChanged;
    private final boolean enabledContextIdsChanged;
    private final Set previouslyDefinedContextIds;
    private final Set previouslyEnabledContextIds;
    static /* synthetic */ Class class$0;

    public ContextManagerEvent(IContextManager contextManager, boolean definedContextIdsChanged, boolean enabledContextIdsChanged, Set previouslyDefinedContextIds, Set previouslyEnabledContextIds) {
        if (contextManager == null) {
            throw new NullPointerException();
        }
        if (!definedContextIdsChanged && previouslyDefinedContextIds != null) {
            throw new IllegalArgumentException();
        }
        if (!enabledContextIdsChanged && previouslyEnabledContextIds != null) {
            throw new IllegalArgumentException();
        }
        if (definedContextIdsChanged) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.lang.String");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.previouslyDefinedContextIds = Util.safeCopy(previouslyDefinedContextIds, (Class)clazz);
        } else {
            this.previouslyDefinedContextIds = null;
        }
        if (enabledContextIdsChanged) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.lang.String");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.previouslyEnabledContextIds = Util.safeCopy(previouslyEnabledContextIds, (Class)clazz);
        } else {
            this.previouslyEnabledContextIds = null;
        }
        this.contextManager = contextManager;
        this.definedContextIdsChanged = definedContextIdsChanged;
        this.enabledContextIdsChanged = enabledContextIdsChanged;
    }

    public IContextManager getContextManager() {
        return this.contextManager;
    }

    public Set getPreviouslyDefinedContextIds() {
        return this.previouslyDefinedContextIds;
    }

    public Set getPreviouslyEnabledContextIds() {
        return this.previouslyEnabledContextIds;
    }

    public boolean haveDefinedContextIdsChanged() {
        return this.definedContextIdsChanged;
    }

    public boolean haveEnabledContextIdsChanged() {
        return this.enabledContextIdsChanged;
    }
}

