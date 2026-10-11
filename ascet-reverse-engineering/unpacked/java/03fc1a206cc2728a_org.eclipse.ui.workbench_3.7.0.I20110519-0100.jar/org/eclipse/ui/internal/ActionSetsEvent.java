/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal;

import org.eclipse.ui.internal.registry.IActionSetDescriptor;

public final class ActionSetsEvent {
    private final IActionSetDescriptor[] newActionSets;

    ActionSetsEvent(IActionSetDescriptor[] newActionSets) {
        this.newActionSets = newActionSets;
    }

    public final IActionSetDescriptor[] getNewActionSets() {
        return this.newActionSets;
    }
}

