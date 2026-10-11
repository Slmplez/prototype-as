/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.services;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.ui.AbstractSourceProvider;
import org.eclipse.ui.internal.ActionSetsEvent;
import org.eclipse.ui.internal.menus.IActionSetsListener;
import org.eclipse.ui.internal.registry.IActionSetDescriptor;
import org.eclipse.ui.internal.util.Util;

public final class ActionSetSourceProvider
extends AbstractSourceProvider
implements IActionSetsListener {
    private static final String[] PROVIDED_SOURCE_NAMES = new String[]{"activeActionSets"};
    private IActionSetDescriptor[] activeActionSets;

    public final void actionSetsChanged(ActionSetsEvent event) {
        Object[] newActionSets = event.getNewActionSets();
        if (!Util.equals(newActionSets, this.activeActionSets)) {
            if (DEBUG) {
                StringBuffer message = new StringBuffer();
                message.append("Action sets changed to [");
                if (newActionSets != null) {
                    int i = 0;
                    while (i < newActionSets.length) {
                        message.append(newActionSets[i].getLabel());
                        if (i < newActionSets.length - 1) {
                            message.append(", ");
                        }
                        ++i;
                    }
                }
                message.append(']');
                this.logDebuggingInfo(message.toString());
            }
            this.activeActionSets = newActionSets;
            this.fireSourceChanged(256, "activeActionSets", this.activeActionSets);
        }
    }

    public final void dispose() {
        this.activeActionSets = null;
    }

    public final Map getCurrentState() {
        HashMap<String, IActionSetDescriptor[]> currentState = new HashMap<String, IActionSetDescriptor[]>();
        currentState.put("activeActionSets", this.activeActionSets);
        return currentState;
    }

    public final String[] getProvidedSourceNames() {
        return PROVIDED_SOURCE_NAMES;
    }
}

