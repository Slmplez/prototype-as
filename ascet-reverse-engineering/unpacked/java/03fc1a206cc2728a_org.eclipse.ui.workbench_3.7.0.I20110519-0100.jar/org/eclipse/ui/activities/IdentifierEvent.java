/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.activities;

import org.eclipse.ui.activities.IIdentifier;

public final class IdentifierEvent {
    private boolean activityIdsChanged;
    private boolean enabledChanged;
    private IIdentifier identifier;

    public IdentifierEvent(IIdentifier identifier, boolean activityIdsChanged, boolean enabledChanged) {
        if (identifier == null) {
            throw new NullPointerException();
        }
        this.identifier = identifier;
        this.activityIdsChanged = activityIdsChanged;
        this.enabledChanged = enabledChanged;
    }

    public IIdentifier getIdentifier() {
        return this.identifier;
    }

    public boolean hasActivityIdsChanged() {
        return this.activityIdsChanged;
    }

    public boolean hasEnabledChanged() {
        return this.enabledChanged;
    }
}

