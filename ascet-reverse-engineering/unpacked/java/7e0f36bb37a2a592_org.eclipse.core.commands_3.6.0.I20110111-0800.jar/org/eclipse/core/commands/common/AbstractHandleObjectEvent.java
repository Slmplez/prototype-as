/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands.common;

import org.eclipse.core.commands.common.AbstractBitSetEvent;

public abstract class AbstractHandleObjectEvent
extends AbstractBitSetEvent {
    protected static final int CHANGED_DEFINED = 1;
    protected static final int LAST_BIT_USED_ABSTRACT_HANDLE = 1;

    protected AbstractHandleObjectEvent(boolean definedChanged) {
        if (definedChanged) {
            this.changedValues |= 1;
        }
    }

    public final boolean isDefinedChanged() {
        return (this.changedValues & 1) != 0;
    }
}

