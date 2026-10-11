/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal;

import org.eclipse.ui.internal.IActionSetContributionItem;
import org.eclipse.ui.internal.PluginAction;
import org.eclipse.ui.internal.PluginActionContributionItem;
import org.eclipse.ui.internal.WWinPluginAction;

public class PluginActionCoolBarContributionItem
extends PluginActionContributionItem
implements IActionSetContributionItem {
    private String actionSetId;

    public PluginActionCoolBarContributionItem(PluginAction action) {
        super(action);
        this.setActionSetId(((WWinPluginAction)action).getActionSetId());
    }

    public String getActionSetId() {
        return this.actionSetId;
    }

    public void setActionSetId(String id) {
        this.actionSetId = id;
    }
}

