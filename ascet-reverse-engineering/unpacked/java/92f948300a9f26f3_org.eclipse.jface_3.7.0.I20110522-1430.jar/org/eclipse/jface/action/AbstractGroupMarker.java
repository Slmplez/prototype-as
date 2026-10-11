/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.action;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.action.ContributionItem;

public abstract class AbstractGroupMarker
extends ContributionItem {
    protected AbstractGroupMarker() {
    }

    protected AbstractGroupMarker(String groupName) {
        super(groupName);
        Assert.isTrue((groupName != null && groupName.length() > 0 ? 1 : 0) != 0);
    }

    public String getGroupName() {
        return this.getId();
    }

    public boolean isGroupMarker() {
        return this.getId() != null;
    }
}

