/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands;

import org.eclipse.core.commands.IHandler;
import org.eclipse.core.commands.common.AbstractBitSetEvent;

public final class HandlerEvent
extends AbstractBitSetEvent {
    private static final int CHANGED_ENABLED = 1;
    private static final int CHANGED_HANDLED = 2;
    private final IHandler handler;

    public HandlerEvent(IHandler handler, boolean enabledChanged, boolean handledChanged) {
        if (handler == null) {
            throw new NullPointerException();
        }
        this.handler = handler;
        if (enabledChanged) {
            this.changedValues |= 1;
        }
        if (handledChanged) {
            this.changedValues |= 2;
        }
    }

    public IHandler getHandler() {
        return this.handler;
    }

    public boolean isEnabledChanged() {
        return (this.changedValues & 1) != 0;
    }

    public boolean isHandledChanged() {
        return (this.changedValues & 2) != 0;
    }
}

