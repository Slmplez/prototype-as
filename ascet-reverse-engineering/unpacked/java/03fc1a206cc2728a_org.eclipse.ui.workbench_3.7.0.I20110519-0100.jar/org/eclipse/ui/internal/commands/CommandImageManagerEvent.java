/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.commands;

import org.eclipse.ui.internal.commands.CommandImageManager;

public final class CommandImageManagerEvent {
    private final String[] changedCommandIds;
    private final CommandImageManager commandImageManager;
    private final String style;
    private final int type;

    CommandImageManagerEvent(CommandImageManager commandImageManager, String[] changedCommandIds, int type, String style) {
        if (commandImageManager == null) {
            throw new NullPointerException("An event must refer to its manager");
        }
        if (changedCommandIds == null || changedCommandIds.length < 1) {
            throw new IllegalArgumentException("There must be at least one change command identifier");
        }
        this.commandImageManager = commandImageManager;
        this.changedCommandIds = changedCommandIds;
        this.type = type;
        this.style = style;
    }

    public final String[] getChangedCommandIds() {
        String[] copy = new String[this.changedCommandIds.length];
        System.arraycopy(this.changedCommandIds, 0, copy, 0, this.changedCommandIds.length);
        return copy;
    }

    public final CommandImageManager getCommandImageManager() {
        return this.commandImageManager;
    }

    public final boolean isCommandIdChanged(String commandId) {
        int i = 0;
        while (i < this.changedCommandIds.length) {
            if (commandId.equals(this.changedCommandIds[i])) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public final boolean isCommandImageChanged(String commandId) {
        return this.isCommandIdChanged(commandId) && this.type == 0 && this.style == null;
    }

    public final boolean isCommandImageChanged(String commandId, int type) {
        return this.isCommandIdChanged(commandId) && (type == 0 || type == this.type) && this.style == null;
    }

    public final boolean isCommandImageChanged(String commandId, int type, String style) {
        return !(!this.isCommandIdChanged(commandId) || type != 0 && type != this.type || style != null && !style.equals(this.style));
    }

    public final boolean isCommandImageChanged(String commandId, String style) {
        return this.isCommandIdChanged(commandId) && this.type == 0 && (style == null || style.equals(this.style));
    }
}

