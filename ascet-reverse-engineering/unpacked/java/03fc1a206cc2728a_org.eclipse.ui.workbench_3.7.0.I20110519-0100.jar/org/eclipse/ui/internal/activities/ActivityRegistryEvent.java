/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.activities;

import org.eclipse.ui.internal.activities.IActivityRegistry;

final class ActivityRegistryEvent {
    private IActivityRegistry activityRegistry;

    ActivityRegistryEvent(IActivityRegistry activityRegistry) {
        if (activityRegistry == null) {
            throw new NullPointerException();
        }
        this.activityRegistry = activityRegistry;
    }

    IActivityRegistry getActivityRegistry() {
        return this.activityRegistry;
    }
}

