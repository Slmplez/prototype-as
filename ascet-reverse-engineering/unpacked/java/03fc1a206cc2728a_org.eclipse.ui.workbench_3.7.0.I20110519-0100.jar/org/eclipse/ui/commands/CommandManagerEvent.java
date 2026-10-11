/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.commands;

import java.util.Set;
import org.eclipse.ui.commands.ICommandManager;
import org.eclipse.ui.internal.util.Util;

public final class CommandManagerEvent {
    private final boolean activeContextIdsChanged;
    private final boolean activeKeyConfigurationIdChanged;
    private final boolean activeLocaleChanged;
    private final boolean activePlatformChanged;
    private final ICommandManager commandManager;
    private final boolean definedCategoryIdsChanged;
    private final boolean definedCommandIdsChanged;
    private final boolean definedKeyConfigurationIdsChanged;
    private final Set previouslyDefinedCategoryIds;
    private final Set previouslyDefinedCommandIds;
    private final Set previouslyDefinedKeyConfigurationIds;
    static /* synthetic */ Class class$0;

    public CommandManagerEvent(ICommandManager commandManager, boolean activeContextIdsChanged, boolean activeKeyConfigurationIdChanged, boolean activeLocaleChanged, boolean activePlatformChanged, boolean definedCategoryIdsChanged, boolean definedCommandIdsChanged, boolean definedKeyConfigurationIdsChanged, Set previouslyDefinedCategoryIds, Set previouslyDefinedCommandIds, Set previouslyDefinedKeyConfigurationIds) {
        if (commandManager == null) {
            throw new NullPointerException();
        }
        if (!definedCategoryIdsChanged && previouslyDefinedCategoryIds != null) {
            throw new IllegalArgumentException();
        }
        if (!definedCommandIdsChanged && previouslyDefinedCommandIds != null) {
            throw new IllegalArgumentException();
        }
        if (!definedKeyConfigurationIdsChanged && previouslyDefinedKeyConfigurationIds != null) {
            throw new IllegalArgumentException();
        }
        if (definedCategoryIdsChanged) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.lang.String");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.previouslyDefinedCategoryIds = Util.safeCopy(previouslyDefinedCategoryIds, (Class)clazz);
        } else {
            this.previouslyDefinedCategoryIds = null;
        }
        if (definedCommandIdsChanged) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.lang.String");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.previouslyDefinedCommandIds = Util.safeCopy(previouslyDefinedCommandIds, (Class)clazz);
        } else {
            this.previouslyDefinedCommandIds = null;
        }
        if (definedKeyConfigurationIdsChanged) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.lang.String");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.previouslyDefinedKeyConfigurationIds = Util.safeCopy(previouslyDefinedKeyConfigurationIds, (Class)clazz);
        } else {
            this.previouslyDefinedKeyConfigurationIds = null;
        }
        this.commandManager = commandManager;
        this.activeContextIdsChanged = activeContextIdsChanged;
        this.activeKeyConfigurationIdChanged = activeKeyConfigurationIdChanged;
        this.activeLocaleChanged = activeLocaleChanged;
        this.activePlatformChanged = activePlatformChanged;
        this.definedCategoryIdsChanged = definedCategoryIdsChanged;
        this.definedCommandIdsChanged = definedCommandIdsChanged;
        this.definedKeyConfigurationIdsChanged = definedKeyConfigurationIdsChanged;
    }

    public ICommandManager getCommandManager() {
        return this.commandManager;
    }

    public Set getPreviouslyDefinedCategoryIds() {
        return this.previouslyDefinedCategoryIds;
    }

    public Set getPreviouslyDefinedCommandIds() {
        return this.previouslyDefinedCommandIds;
    }

    public Set getPreviouslyDefinedKeyConfigurationIds() {
        return this.previouslyDefinedKeyConfigurationIds;
    }

    public boolean hasActiveKeyConfigurationIdChanged() {
        return this.activeKeyConfigurationIdChanged;
    }

    public boolean hasActiveLocaleChanged() {
        return this.activeLocaleChanged;
    }

    public boolean hasActivePlatformChanged() {
        return this.activePlatformChanged;
    }

    public boolean haveActiveContextIdsChanged() {
        return this.activeContextIdsChanged;
    }

    public boolean haveDefinedCategoryIdsChanged() {
        return this.definedCategoryIdsChanged;
    }

    public boolean haveDefinedCommandIdsChanged() {
        return this.definedCommandIdsChanged;
    }

    public boolean haveDefinedKeyConfigurationIdsChanged() {
        return this.definedKeyConfigurationIdsChanged;
    }
}

