/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.SubContributionItem
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.SubContributionItem;
import org.eclipse.ui.internal.IActionSetContributionItem;

public class ActionSetContributionItem
extends SubContributionItem
implements IActionSetContributionItem {
    private String actionSetId;

    public ActionSetContributionItem(IContributionItem item, String actionSetId) {
        super(item);
        this.actionSetId = actionSetId;
    }

    public String getActionSetId() {
        return this.actionSetId;
    }

    public void setActionSetId(String newActionSetId) {
        this.actionSetId = newActionSetId;
    }
}

