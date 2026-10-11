/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.contexts;

import org.eclipse.ui.contexts.IContext;

public final class ContextEvent {
    private final IContext context;
    private final boolean definedChanged;
    private final boolean enabledChanged;
    private final boolean nameChanged;
    private final boolean parentIdChanged;

    public ContextEvent(IContext context, boolean definedChanged, boolean enabledChanged, boolean nameChanged, boolean parentIdChanged) {
        if (context == null) {
            throw new NullPointerException();
        }
        this.context = context;
        this.definedChanged = definedChanged;
        this.enabledChanged = enabledChanged;
        this.nameChanged = nameChanged;
        this.parentIdChanged = parentIdChanged;
    }

    public IContext getContext() {
        return this.context;
    }

    public boolean hasDefinedChanged() {
        return this.definedChanged;
    }

    public boolean hasEnabledChanged() {
        return this.enabledChanged;
    }

    public boolean hasNameChanged() {
        return this.nameChanged;
    }

    public boolean hasParentIdChanged() {
        return this.parentIdChanged;
    }
}

