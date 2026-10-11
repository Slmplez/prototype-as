/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands.contexts;

import org.eclipse.core.commands.common.AbstractNamedHandleEvent;
import org.eclipse.core.commands.contexts.Context;

public final class ContextEvent
extends AbstractNamedHandleEvent {
    private static final int CHANGED_PARENT_ID = 4;
    private final Context context;

    public ContextEvent(Context context, boolean definedChanged, boolean nameChanged, boolean descriptionChanged, boolean parentIdChanged) {
        super(definedChanged, descriptionChanged, nameChanged);
        if (context == null) {
            throw new NullPointerException();
        }
        this.context = context;
        if (parentIdChanged) {
            this.changedValues |= 4;
        }
    }

    public final Context getContext() {
        return this.context;
    }

    public final boolean isParentIdChanged() {
        return (this.changedValues & 4) != 0;
    }
}

