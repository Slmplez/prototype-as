/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands;

import org.eclipse.core.commands.CommandManager;

public final class CommandManagerEvent {
    private static final int CHANGED_CATEGORY_DEFINED = 1;
    private static final int CHANGED_COMMAND_DEFINED = 2;
    private static final int CHANGED_PARAMETER_TYPE_DEFINED = 4;
    private final String categoryId;
    private final int changedValues;
    private final String commandId;
    private final String parameterTypeId;
    private final CommandManager commandManager;

    public CommandManagerEvent(CommandManager commandManager, String commandId, boolean commandIdAdded, boolean commandIdChanged, String categoryId, boolean categoryIdAdded, boolean categoryIdChanged) {
        if (commandManager == null) {
            throw new NullPointerException("An event must refer to its command manager");
        }
        if (commandIdChanged && commandId == null) {
            throw new NullPointerException("If the list of defined commands changed, then the added/removed command must be mentioned");
        }
        if (categoryIdChanged && categoryId == null) {
            throw new NullPointerException("If the list of defined categories changed, then the added/removed category must be mentioned");
        }
        this.commandManager = commandManager;
        this.commandId = commandId;
        this.categoryId = categoryId;
        this.parameterTypeId = null;
        int changedValues = 0;
        if (categoryIdChanged && categoryIdAdded) {
            changedValues |= 1;
        }
        if (commandIdChanged && commandIdAdded) {
            changedValues |= 2;
        }
        this.changedValues = changedValues;
    }

    public CommandManagerEvent(CommandManager commandManager, String parameterTypeId, boolean parameterTypeIdAdded, boolean parameterTypeIdChanged) {
        if (commandManager == null) {
            throw new NullPointerException("An event must refer to its command manager");
        }
        if (parameterTypeIdChanged && parameterTypeId == null) {
            throw new NullPointerException("If the list of defined command parameter types changed, then the added/removed parameter type must be mentioned");
        }
        this.commandManager = commandManager;
        this.commandId = null;
        this.categoryId = null;
        this.parameterTypeId = parameterTypeId;
        int changedValues = 0;
        if (parameterTypeIdChanged && parameterTypeIdAdded) {
            changedValues |= 4;
        }
        this.changedValues = changedValues;
    }

    public final String getCategoryId() {
        return this.categoryId;
    }

    public final String getCommandId() {
        return this.commandId;
    }

    public final CommandManager getCommandManager() {
        return this.commandManager;
    }

    public final String getParameterTypeId() {
        return this.parameterTypeId;
    }

    public final boolean isCategoryChanged() {
        return this.categoryId != null;
    }

    public final boolean isCategoryDefined() {
        return (this.changedValues & 1) != 0 && this.categoryId != null;
    }

    public final boolean isCommandChanged() {
        return this.commandId != null;
    }

    public final boolean isCommandDefined() {
        return (this.changedValues & 2) != 0 && this.commandId != null;
    }

    public final boolean isParameterTypeChanged() {
        return this.parameterTypeId != null;
    }

    public final boolean isParameterTypeDefined() {
        return (this.changedValues & 4) != 0 && this.parameterTypeId != null;
    }
}

