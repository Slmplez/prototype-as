/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.ActionContributionItem
 *  org.eclipse.jface.action.IAction
 */
package org.eclipse.ui.internal.presentations;

import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.IAction;
import org.eclipse.ui.internal.presentations.ISelfUpdatingAction;

public class UpdatingActionContributionItem
extends ActionContributionItem {
    public UpdatingActionContributionItem(ISelfUpdatingAction action) {
        super((IAction)action);
    }

    public boolean isVisible() {
        ISelfUpdatingAction action = (ISelfUpdatingAction)this.getAction();
        return super.isVisible() && action.shouldBeVisible();
    }

    public void update(String propertyName) {
        ISelfUpdatingAction action = (ISelfUpdatingAction)this.getAction();
        action.update();
        super.update(propertyName);
    }

    public boolean isDynamic() {
        return true;
    }
}

