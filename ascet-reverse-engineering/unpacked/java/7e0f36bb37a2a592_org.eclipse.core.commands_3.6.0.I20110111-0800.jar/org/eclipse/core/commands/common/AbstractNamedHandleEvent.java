/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands.common;

import org.eclipse.core.commands.common.AbstractHandleObjectEvent;

public abstract class AbstractNamedHandleEvent
extends AbstractHandleObjectEvent {
    protected static final int CHANGED_DESCRIPTION = 2;
    protected static final int CHANGED_NAME = 2;
    protected static final int LAST_USED_BIT = 2;

    protected AbstractNamedHandleEvent(boolean definedChanged, boolean descriptionChanged, boolean nameChanged) {
        super(definedChanged);
        if (descriptionChanged) {
            this.changedValues |= 2;
        }
        if (nameChanged) {
            this.changedValues |= 2;
        }
    }

    public final boolean isDescriptionChanged() {
        return (this.changedValues & 2) != 0;
    }

    public final boolean isNameChanged() {
        return (this.changedValues & 2) != 0;
    }
}

