/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands;

import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.common.AbstractNamedHandleEvent;

public final class CommandEvent
extends AbstractNamedHandleEvent {
    private static final int CHANGED_CATEGORY = 4;
    private static final int CHANGED_HANDLED = 8;
    private static final int CHANGED_PARAMETERS = 16;
    private static final int CHANGED_RETURN_TYPE = 32;
    private static final int CHANGED_HELP_CONTEXT_ID = 64;
    private static final int CHANGED_ENABLED = 128;
    private final Command command;

    public CommandEvent(Command command, boolean categoryChanged, boolean definedChanged, boolean descriptionChanged, boolean handledChanged, boolean nameChanged, boolean parametersChanged) {
        this(command, categoryChanged, definedChanged, descriptionChanged, handledChanged, nameChanged, parametersChanged, false);
    }

    public CommandEvent(Command command, boolean categoryChanged, boolean definedChanged, boolean descriptionChanged, boolean handledChanged, boolean nameChanged, boolean parametersChanged, boolean returnTypeChanged) {
        this(command, categoryChanged, definedChanged, descriptionChanged, handledChanged, nameChanged, parametersChanged, returnTypeChanged, false);
    }

    public CommandEvent(Command command, boolean categoryChanged, boolean definedChanged, boolean descriptionChanged, boolean handledChanged, boolean nameChanged, boolean parametersChanged, boolean returnTypeChanged, boolean helpContextIdChanged) {
        this(command, categoryChanged, definedChanged, descriptionChanged, handledChanged, nameChanged, parametersChanged, returnTypeChanged, helpContextIdChanged, false);
    }

    public CommandEvent(Command command, boolean categoryChanged, boolean definedChanged, boolean descriptionChanged, boolean handledChanged, boolean nameChanged, boolean parametersChanged, boolean returnTypeChanged, boolean helpContextIdChanged, boolean enabledChanged) {
        super(definedChanged, descriptionChanged, nameChanged);
        if (command == null) {
            throw new NullPointerException();
        }
        this.command = command;
        if (categoryChanged) {
            this.changedValues |= 4;
        }
        if (handledChanged) {
            this.changedValues |= 8;
        }
        if (parametersChanged) {
            this.changedValues |= 0x10;
        }
        if (returnTypeChanged) {
            this.changedValues |= 0x20;
        }
        if (helpContextIdChanged) {
            this.changedValues |= 0x40;
        }
        if (enabledChanged) {
            this.changedValues |= 0x80;
        }
    }

    public final Command getCommand() {
        return this.command;
    }

    public final boolean isCategoryChanged() {
        return (this.changedValues & 4) != 0;
    }

    public final boolean isHandledChanged() {
        return (this.changedValues & 8) != 0;
    }

    public final boolean isHelpContextIdChanged() {
        return (this.changedValues & 0x40) != 0;
    }

    public final boolean isParametersChanged() {
        return (this.changedValues & 0x10) != 0;
    }

    public final boolean isReturnTypeChanged() {
        return (this.changedValues & 0x20) != 0;
    }

    public final boolean isEnabledChanged() {
        return (this.changedValues & 0x80) != 0;
    }
}

