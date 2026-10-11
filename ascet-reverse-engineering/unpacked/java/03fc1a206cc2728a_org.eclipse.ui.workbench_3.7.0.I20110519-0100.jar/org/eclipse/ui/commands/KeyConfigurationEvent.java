/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.commands;

import org.eclipse.ui.commands.IKeyConfiguration;

public final class KeyConfigurationEvent {
    private final boolean activeChanged;
    private final boolean definedChanged;
    private final IKeyConfiguration keyConfiguration;
    private final boolean nameChanged;
    private final boolean parentIdChanged;

    public KeyConfigurationEvent(IKeyConfiguration keyConfiguration, boolean activeChanged, boolean definedChanged, boolean nameChanged, boolean parentIdChanged) {
        if (keyConfiguration == null) {
            throw new NullPointerException();
        }
        this.keyConfiguration = keyConfiguration;
        this.activeChanged = activeChanged;
        this.definedChanged = definedChanged;
        this.nameChanged = nameChanged;
        this.parentIdChanged = parentIdChanged;
    }

    public IKeyConfiguration getKeyConfiguration() {
        return this.keyConfiguration;
    }

    public boolean hasActiveChanged() {
        return this.activeChanged;
    }

    public boolean hasDefinedChanged() {
        return this.definedChanged;
    }

    public boolean hasNameChanged() {
        return this.nameChanged;
    }

    public boolean hasParentIdChanged() {
        return this.parentIdChanged;
    }
}

